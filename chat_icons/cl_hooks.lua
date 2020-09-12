
-- Simply changes the icons. Nothing more, nothing less.
function PLUGIN:GetPlayerIcon(speaker)
  local rankIcons = {
      ["user"] = "icon16/user.png",
      ["admin"] = "icon16/shield.png",
      ["superadmin"] = "icon16/shield_add.png"
  }

  if (rankIcons[serverguard.player:GetRank(speaker)]) then
    return rankIcons[serverguard.player:GetRank(speaker)]
  end
end
