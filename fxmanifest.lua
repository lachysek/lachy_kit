fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'lachysek'
description '/kit command'


server_scripts {
    'server.lua',
    '@mysql-async/lib/MySQL.lua',
}

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua',
}