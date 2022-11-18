function GiveWeaponMultiple(ply, wpnarr, stripem)
	stripem = stripem or false
	local flag = 5
	if stripem == true then
		flag = flag - 2
	end
	local base = {}
	base.spawnflags = flag
	for k, v in pairs(wpnarr) do
		local sing = 1
		base[v] = sing
	end
	local giver = Entities:Create("game_player_equip", base)
	giver:ValidateScriptScope()
	EntFireByHandle(giver, "Use", "", -1.0, ply, nil);
	EntFireByHandle(giver, "Kill", "", 0.0, null, nil);
end

function GiveWeapon(ply, wpn, stripem)
	stripem = stripem or false
	local flag = 5
	if stripem == true then
		flag = flag-2
	end
	local arr = {}
	arr.spawnflags = flag
	arr[wpn] = 1
	local giver = Entities:Create("game_player_equip", arr)
	giver:ValidateScriptScope()
	EntFireByHandle(giver, "Use", "", -1.0, ply, nil)
	EntFireByHandle(giver, "Kill", "", 0.0, nil, nil)
end