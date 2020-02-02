import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagebaseItems as IIngredient[] = [

	<minecraft:dirt:*>,
	<minecraft:gravel>,
	<minecraft:red_flower:*>,
	<minecraft:double_plant:*>,
	<minecraft:stick>,
	<minecraft:potato>,
	<minecraft:carrot>,
	<minecraft:wheat>,
	<minecraft:sand:*>,
	<minecraft:hay_block>,
	<minecraft:red_mushroom>,
	<minecraft:brown_mushroom>,
	<minecraft:pumpkin>,
	<minecraft:lit_pumpkin>,
	<minecraft:waterlily>,
	<minecraft:yellow_flower>,
	<minecraft:reeds>,
	<minecraft:apple>,
	<minecraft:cactus>,

	//Primal
	<primal:plant_fiber>,
	<primal:flint_knapp>,
	<primal:rush_stems>,
	<primal:rush_seeds>,
	<primal:salt_dust_netjry>,
	<primal:corn_cob>,
	<primal:corn_stalk_wet>

];

for item in stagebaseItems {
	mods.ItemStages.addItemStage(stage, item);
}
