local mod = {}

mod.self_events = require("modders-stuff/self_events")

mod.add_remote_interface = function()
	remote.remove_interface('modders-stuff')
	remote.add_interface('modders-stuff',
	{
		get_event_name = function(name)
			return mod.self_events[name]
		end
	})
end

return mod
