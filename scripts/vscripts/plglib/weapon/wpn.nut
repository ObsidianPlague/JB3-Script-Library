function GiveWeaponMultiple(ply, wpnarr, stripem = false)
{
	local flag = 5;
	if (stripem == true)
	{
		flag = flag - 2;
	}
	local base = {spawnflags = flag};
	foreach (i, v in wpnarr)
	{
		local sing = 1;
		base[v] = sing
	}
	local giver = Entities.Create("game_player_equip", base);
	giver.ValidateScriptScope();
	EntFireByHandle(giver, "Use", "", -1.0, ply, null);
	EntFireByHandle(giver, "Kill", "", 0.0, null, null);
}

function GiveWeapon(ply, wpn, stripem = false)
{
	local flag = 5;
	if (stripem == true)
	{
		flag = flag-2;
	}
	local giver = Entities.Create("game_player_equip", {spawnflags = flag, wpn = 1});
	giver.ValidateScriptScope();
	EntFireByHandle(giver, "Use", "", -1.0, ply, null);
	EntFireByHandle(giver, "Kill", "", 0.0, null, null);
}

function OnGameEvent(eName, eData)
{
	if (eName == "player_spawn")
	{
		GiveWeapon(g_Clients.GetPlayerByUserID(eData.userid), "jb_weapon_fists", true);
	}
}