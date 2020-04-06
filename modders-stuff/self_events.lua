return {
    -- Called after the player was recreated.
    -- # This event serves to make compatibility between mods
    -- # which recreate a character/player/player inventory
    -- # because characters changes without any events
	--    Contains:
	--       player_index :: uint
	on_player_recreated = script.generate_event_name()
}

-- EXAMPLE of on_player_recreated into your mod with https://mods.factorio.com/mod/event-listener
--[[
local on_player_recreated_ID

local function recreate_player(event)
    if on_player_recreated_ID == nil then return end
    local player = game.players[event.player_index]
	if not (player and player.valid) then return end

    player.selected.destroy()
    player.create_character()
    game.raise_event(on_player_recreated_ID, {player_index = event.player_index})
end

local function handle_event_on_player_recreated()
    local interface_name = "modders-stuff"
    local remote_interface = remote.interfaces[interface_name]

    if remote_interface then
        on_player_recreated_ID = remote.call(interface_name, "get_event_name", "on_player_recreated")
        if script.get_event_handler(on_player_recreated_ID) == nil then
            module.events[on_player_recreated_ID] = function() end
        end
    end
end

module.events.on_configuration_changed = handle_event_on_player_recreated
module.events.on_load = handle_event_on_player_recreated
module.events.on_init = handle_event_on_player_recreated
]]
