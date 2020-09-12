
-- Simply changes the icons. Nothing more, nothing less.
function PLUGIN:GetPlayerIcon(speaker)
  local rankIcons = {
      ["user"] = "icon16/user.png",
      ["supporter"] = "icon16/heart.png",
      ["junioradmin"] = "icon16/star.png",
      ["admin"] = "icon16/shield.png",
      ["superadmin"] = "icon16/shield_add.png",
      ["developer"] = "icon16/cog.png",
      ["communitymanager"] = "icon16/lightning.png",
      ["founder"] = "icon16/key.png"
  }

  if (rankIcons[serverguard.player:GetRank(speaker)]) then
    return rankIcons[serverguard.player:GetRank(speaker)]
  end
end