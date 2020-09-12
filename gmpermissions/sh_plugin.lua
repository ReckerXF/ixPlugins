PLUGIN.name = "GM Permissions"
PLUGIN.author = "Blizzard"
PLUGIN.description = "Adds CAMI permissions for SWEP/SENT spawning."

CAMI.RegisterPrivilege({
	Name = "Helix - Spawn SWEPs",
	MinAccess = "superadmin"
})

CAMI.RegisterPrivilege({
	Name = "Helix - Spawn SENTs",
	MinAccess = "superadmin"
})

ix.util.Include("sv_hooks.lua")
