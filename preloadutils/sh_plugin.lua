local PLUGIN = PLUGIN

-- Default plugin info
PLUGIN.name = "Preload Utilities"
PLUGIN.author = "Recker"
PLUGIN.description = "Adds various functions to run when the server starts such as model pre-caching."

-- Include Files
ix.util.Include( "sh_hooks.lua" )

-- Global Plugin Vars
PLUGIN.PrecacheModels = {}
PLUGIN.PrecachedCount = 0

-- Conduct model-getting when all plugins have finished initialization.
function PLUGIN:InitializedPlugins()
	local tClasses = ix.class.list
	local tFactions = ix.faction.indices
	local tItems = ix.item.list

	for iIndex, tClass in ipairs( tClasses ) do
		if not tClass.models then continue end

		if istable( tClass.models ) then
			for _, sModel in ipairs( tClass.models ) do
				table.insert( PLUGIN.PrecacheModels, sModel )
			end
		else
			table.insert( PLUGIN.PrecacheModels, tClass.models )
		end
	end

	for iIndex = 1, #tFactions do
		local tFaction = ix.faction.indices[ iIndex ]
		if not tFaction.models then continue end

		if istable( tFaction.models ) then
			for _, sModel in ipairs( tFaction.models ) do
				table.insert( PLUGIN.PrecacheModels, sModel )
			end
		else
			table.insert( PLUGIN.PrecacheModels, tFaction.models )
		end
	end

	for iIndex, tItem in ipairs( tItems ) do
		if not tItem.model then continue end
		table.insert( PLUGIN.PrecacheModels, tItem.model )
	end

	PLUGIN:PreCacheModels()
end