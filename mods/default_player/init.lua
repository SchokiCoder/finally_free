if core.settings:get("default_player_speed") == false then
	return
end

local default_player_speed = tonumber(core.settings:get("default_player_speed")) or 1.333

core.register_on_joinplayer(function(player)
	playerphysics.add_physics_factor(
		player,
		"speed",
		"default_player_speed",
		default_player_speed)
	end)
