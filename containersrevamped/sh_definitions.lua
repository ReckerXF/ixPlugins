--[[
	ix.container.Register(model, {
		name = "Crate",
		description = "A simple wooden create.",
		width = 4,
		height = 4,
		locksound = "",
		opensound = ""
	})
]]--

ix.container.Register("models/props_junk/wood_crate001a.mdl", {
	name = "Crate",
	description = "A simple wooden crate.",
	width = 4,
	height = 4,
})

ix.container.Register("models/props_c17/lockers001a.mdl", {
	name = "Locker",
	description = "A white locker.",
	width = 3,
	height = 5,
})

ix.container.Register("models/props_wasteland/controlroom_storagecloset001a.mdl", {
	name = "Metal Cabinet",
	description = "A green metal cabinet.",
	width = 4,
	height = 5,
})

ix.container.Register("models/props_wasteland/controlroom_storagecloset001b.mdl", {
	name = "Metal Cabinet",
	description = "A green metal cabinet.",
	width = 4,
	height = 5,
})

ix.container.Register("models/props_wasteland/controlroom_filecabinet001a.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_wasteland/controlroom_filecabinet002a.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 3,
	height = 6,
})

ix.container.Register("models/props_lab/filecabinet02.mdl", {
	name = "File Cabinet",
	description = "A metal filing cabinet.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_c17/furniturefridge001a.mdl", {
	name = "Refrigerator",
	description = "A metal box for keeping food in.",
	width = 3,
	height = 4,
})

ix.container.Register("models/props_wasteland/kitchen_fridge001a.mdl", {
	name = "Large Refrigerator",
	description = "A large metal box for storing even more food in.",
	width = 5,
	height = 6,
})

ix.container.Register("models/props_junk/trashbin01a.mdl", {
	name = "Trash Bin",
	description = "What do you expect to find in here?",
	width = 2,
	height = 2,
})

ix.container.Register("models/props_junk/trashdumpster01a.mdl", {
	name = "Dumpster",
	description = "A dumpster meant to stow away trash. It emanates an unpleasant smell.",
	width = 6,
	height = 3
})

ix.container.Register("models/items/ammocrate_smg1.mdl", {
	name = "Ammo Crate",
	description = "A heavy crate that stores ammo.",
	width = 5,
	height = 3,
	OnOpen = function(entity, activator)
		local closeSeq = entity:LookupSequence("Close")
		entity:ResetSequence(closeSeq)

		timer.Simple(2, function()
			if (entity and IsValid(entity)) then
				local openSeq = entity:LookupSequence("Open")
				entity:ResetSequence(openSeq)
			end
		end)
	end
})

ix.container.Register("models/props_forest/footlocker01_closed.mdl", {
	name = "Footlocker",
	description = "A small chest to store belongings in.",
	width = 5,
	height = 3
})

ix.container.Register("models/Items/item_item_crate.mdl", {
	name = "Item Crate",
	description = "A crate to store some belongings in.",
	width = 5,
	height = 3
})

ix.container.Register("models/props_c17/cashregister01a.mdl", {
	name = "Cash Register",
	description = "A register with some buttons and a drawer.",
	width = 2,
	height = 1
})

---Added---

ix.container.Register("models/props_c17/FurnitureDrawer001a.mdl", {
	name = "Drawer",
	description = "A large cabinet type container that can fit several items in it.",
	width = 4,
	height = 4
})

ix.container.Register("models/props_c17/FurnitureDrawer002a.mdl", {
	name = "Small Drawer",
	description = "A small cabinet type container that can hold only a couple of items.",
	width = 2,
	height = 1
})

ix.container.Register("models/props_c17/FurnitureDrawer003a.mdl", {
	name = "Slim Drawer",
	description = "A slim cabinet type container that can hold a few items.",
	width = 1,
	height = 5
})

ix.container.Register("models/props_c17/FurnitureDresser001a.mdl", {
	name = "Large Dresser",
	description = "A large dresser that can hold a good amount of items for storage.",
	width = 5,
	height = 5
})

ix.container.Register("models/props_c17/furnitureStove001a.mdl", {
	name = "Stove",
	description = "A stove with a few compartments to store a few items.",
	width = 3,
	height = 1
})

ix.container.Register("models/props_c17/FurnitureWashingmachine001a.mdl", {
	name = "Washing Machine",
	description = "A washing machine that can store clothes or other various items.",
	width = 2,
	height = 2
})

ix.container.Register("models/props_interiors/Furniture_Desk01a.mdl", {
	name = "Medium Desk",
	description = "A dark brown desk, able to hold a few items in the drawers.",
	width = 2,
	height = 2
})

ix.container.Register("models/props_junk/wood_crate002a.mdl", {
	name = "Large Crate",
	description = "A large wooden crate.",
	width = 6,
	height = 6
})
