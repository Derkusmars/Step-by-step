#priority 4000

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
	<primal:corn_stalk_wet>,

	//Terraqueous
	<terraqueous:flowers_single:*>,
	<terraqueous:multifood:*>,

	//Botania
	<botania:flower:*>,

	//Silent gears
	<silentgear:flower>,

	//Pam's Harvest
	<harvestcraft:barleyitem>,
	<harvestcraft:lettuceitem>,
	<harvestcraft:cottonitem>,
	<harvestcraft:artichokeitem>,
	<harvestcraft:chilipepperitem>,
	<harvestcraft:cornitem>,
	<harvestcraft:parsnipitem>,
	<harvestcraft:peanutitem>,
	<harvestcraft:strawberryitem>,
	<harvestcraft:wintersquashitem>,
	<harvestcraft:cucumberitem>,
	<harvestcraft:onionitem>,
	<harvestcraft:bellpepperitem>,
	<harvestcraft:blackberryitem>,
	<harvestcraft:tomatoitem>,
	<harvestcraft:beanitem>,
	<harvestcraft:radishitem>,
	<harvestcraft:rhubarbitem>,
	<harvestcraft:tealeafitem>,
	<harvestcraft:sweetpotatoitem>,
	<harvestcraft:turnipitem>,
	<harvestcraft:garlicitem>,
	<harvestcraft:leekitem>

];

for item in stagebaseItems {
	mods.ItemStages.addItemStage(stage, item);
}
