lachy = {}

lachy.Cooldown = 3600               -- Time in SECONDS (3600 seconds = 1 hour)
lachy.Items = {                     -- Add as many as you like :)
 -- { 'item', count },
    { 'weapon_pistol', 1 },
    { 'money', 5000 },
}


Notify = function(source, text)
 -- Your custom notification system
    lib.notify(source, {
        title = 'Kit System',
        description = text,
        duration = 8000,
        type = 'inform'
    })
end