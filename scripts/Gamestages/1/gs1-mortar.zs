import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagemortarItems as IIngredient[] = [
	
	<primal:nether_tinder>,
	<primal:plant_tinder>,
	<minecraft:dye:15>,
	<primal:nether_fiber_pulp>,
	<primal:plant_fiber_pulp>,
	<primal:tannin_ground>,
	<primal:tannin_ground>,

	//Artisan
	<artisanworktables:artisans_trowel_flint>,
	
	//Contenttweaker
	<contenttweaker:compressed_fert_dirt>,
	<contenttweaker:fertilized_dirt>
];

for item in stagemortarItems {
	mods.ItemStages.addItemStage("mortar", item);
}
