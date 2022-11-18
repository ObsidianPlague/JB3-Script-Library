# [wpn.nut](wpn.nut) / [wpn.lua](wpn.lua)
| Function | Signature | Description
| ----------- | ----------- | ----------- | 
| GiveWeapon | <pre><code>void GiveWeapon(*handle* ply, *string* wpn, *bool* stripem = false)</code></pre> | Gives the referenced player a weapon. If `stripem` is true, this will strip the player's current loadout (including armor!) before giving the player the weapon.
| GiveWeaponMultiple | <pre><code>void GiveWeaponMultiple(*handle* ply, *array* wpnarr, *bool* stripem = false)</code></pre> | Similar to `GiveWeapon`, but instead of giving simply one, this gives multiple which are in an array. Useful for batch giving weapons in one go.

## Usage:
This will force everyone to start with exclusively the rocket crowbar on spawn.
```
function OnGameEvent(eventName, eventData)
{
  if (eventName == "player_spawn")
  {
    GiveWeapon(g_Clients.GetPlayerByUserID(eventData.userid), "jb_weapon_rocketcrowbar", true)
  }
}
```
Result: Players will now spawn with the rocket crowbar.
