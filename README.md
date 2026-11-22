<p align="center">
	<img src="https://raw.githubusercontent.com/NebulousCloud/helix/master/docs/banner.gif" alt="Helix" />
</p>

Helix is a framework for roleplay gamemodes in [Garry's Mod](https://gmod.facepunch.com/), based off of [NutScript 1.1](https://github.com/rebel1324/NutScript). Helix provides a stable, feature-filled, open-source, and DRM-free base so you can focus more on the things you want: making gameplay.

## Recker's Plugins
Within this repository you'll find an assortment of plugins I've decided to publicly release. You may find a list below.

#### 1. Scheduler
Scheduler uses Helix's ix.date library to run scheduled events at specific times. Dates currently not supported.

**Note:** You can use the ``OnScheduleChanged`` hook to run logic _after_ a schedule change is executed.
**Example:**
```Lua
hook.Add( "OnScheduleChanged", "TestHook.OnScheduleChange", function( sName, sTime )
  if sName == "Curfew Procedure" then
    print( "This is a curfew procedure!" )
  end

  if sTime == "0700" then
    print( "It is 7 o'clock." )
  end 
end )
```

#### 2. Preload Utils
A plugin used to pre-cache models from all of the registered factions, classes, and items.
