RegisterCommand("kit", function(source)
    local playerId = tonumber(source)
    local license
    for k, v in ipairs(GetPlayerIdentifiers(source)) do
        if string.match(v, "license:") then
            license = v
            break
        end
    end

    MySQL.Async.fetchScalar("SELECT last_kit_time FROM kit WHERE license = @license", {["@license"] = license}, function(lastKitTime)
        if not lastKitTime or (os.time() - lastKitTime) >= lachy.Cooldown then
            for _, item in ipairs(lachy.Items) do
                exports.ox_inventory:AddItem(playerId, item[1], item[2])
                Notify(playerId, 'You received **' .. item[1] .. ' (' .. item[2] .. 'x)** from the kit!')
                MySQL.Async.execute("REPLACE INTO kit (license, last_kit_time) VALUES (@license, @currentTime)", {["@license"] = license, ["@currentTime"] = os.time()})
            end
        else
            local remainingTime = lachy.Cooldown - (os.time() - lastKitTime)
            local minutes = math.floor(remainingTime / 60)
            local seconds = remainingTime % 60

            Notify(playerId, 'You must wait **' .. minutes .. ' minutes and ' .. seconds .. ' seconds** before using the kit again.')
        end
    end)
end)
