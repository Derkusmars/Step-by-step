import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagemortarItems as IIngredient[] = [

	<minecraft:dye:*>,

	//Prinal
	<primal:nether_fiber_pulp>,
	<primal:plant_fiber_pulp>,
	<primal:tannin_ground>,
	<primal:tannin_ground>,

	//Contenttweaker
	<contenttweaker:compressed_fert_dirt>,
	<contenttweaker:fertilized_dirt>,

	//Botania
	<botania:dye:*>,																															//Dye powder
	<botania:petal:*>,																														//Petal
	<botania:petalblock:*>

	//GT
	<gregtech:meta_item_2:*>,

	//Quark
	<quark:root_dye:*>,

	Terraqueous
	<terraqueous:item_main:*>																										//Petal block
];

for item in stagemortarItems {
	mods.ItemStages.addItemStage("mortar", item);
}
