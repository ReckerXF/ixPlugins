function PLUGIN:PlayerGiveSWEP(client, weapon, info)
    return CAMI.PlayerHasAccess(client, "Helix - Spawn SWEPs", nil)
end

function PLUGIN:PlayerSpawnSWEP(client, weapon, info)
	return CAMI.PlayerHasAccess(client, "Helix - Spawn SWEPs", nil)
end

function PLUGIN:PlayerSpawnSENT(client, class)
    return CAMI.PlayerHasAccess(client, "Helix - Spawn SENTs", nil)
end