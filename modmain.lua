local Action = GLOBAL.Action
local ActionHandler = GLOBAL.ActionHandler 

local assets = {
	Asset("ATLAS", "images/inventoryimages/mateamargo.xml"),
	Asset("IMAGE", "images/inventoryimages/mateamargo.tex"),
}

PrefabFiles = {
	"cutreeds",
	"mateamargo",
	"log",
}

AddIngredientValues({"mateamargo"}, {mateamargo = 1})
AddIngredientValues({"cutreeds"}, {cutreeds = 1})
AddIngredientValues({"log"}, {log = 1})

--RECETA
local mateamargo =
{
	name = "mate amargo",
	test = function(cooker, names, tags) return tags.cutreeds == 3 and tags.log == 1 and not tags.inedible and not names.twigs end,
	priority = 1,
	weight = 1,
	foodtype = "GENERIC",
	health = TUNING.HEALING_MEDSMALL,
	hunger = TUNING.CALORIES_HUGE / 10,
	perishtime = TUNING.PERISH_FAST,
	sanity = TUNING.SANITY_TINY * 5,
	temperature = TUNING.HOT_FOOD_BONUS_TEMP,
	temperatureduration = TUNING.FOOD_TEMP_AVERAGE,
	cooktime = 0.5,
}

AddCookerRecipe("cookpot", mateamargo)
