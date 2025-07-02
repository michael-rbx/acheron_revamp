--[[
             _                          
            | |                         
   __ _  ___| |__   ___ _ __ ___  _ __  
  / _` |/ __| '_ \ / _ \ '__/ _ \| '_ \ 
 | (_| | (__| | | |  __/ | | (_) | | | |
  \__,_|\___|_| |_|\___|_|  \___/|_| |_|
                                        
]]

local modules = {
    [4124008017] = "https://raw.githubusercontent.com/michael-rbx/acheron_revamp/refs/heads/main/scripts/bridge%20duels.lua",
}

local module = modules[game.GameId]
if not module then
    print("unsupported game")
    return
end

loadstring(game:HttpGet(module))()
queue_on_teleport(game:HttpGet(module))
getgenv().script_key = script_key or "none"
