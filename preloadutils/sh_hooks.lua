local PLUGIN = PLUGIN

local colPlugin = Color( 0, 163, 204)

function PLUGIN:PreCacheModels()
	for _, xValue in ipairs( self.PrecacheModels ) do
		util.PrecacheModel( xValue )
		self.PrecachedCount = self.PrecachedCount + 1
	end

	MsgC( colPlugin, "[Preload Utils] " .. self.PrecachedCount .. " models pre-cached!" )
end
