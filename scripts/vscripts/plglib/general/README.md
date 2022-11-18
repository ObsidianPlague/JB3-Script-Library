# [returnentities.nut](returnentities.nut) / returnentities.lua
| Function | Signature | Description
| ----------- | ----------- | ----------- | 
| ReturnEntityList | <pre><code>array ReturnEntityList(*string* ent, *bool* IsClass = false, *int* max = 0)</code></pre> | Returns an array of entity handles, `ent` is the entity you want to find. If `IsClass` is true, it will find entities by exact classname instead of targetname. If `max` is set to anything but 0, it will make sure you get an array of that length, in case you don't want more than say, 3 results.

## Usage:
This will return an array of handles for every player.
```
PlyArr <- [];

function OnGameEvent(eventName, eventData)
{
  if (eventName == "round_start")
  {
    PlyArr = ReturnEntityList("player");
    print(PlyArr.len());
  }
}
```
Result: `1` (or more, depending on how many players are on the server)
