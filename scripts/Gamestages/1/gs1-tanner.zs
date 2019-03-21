import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [
	

	<minecraft:leather>,

	//primal
	<primal:pelt_animal>,
	<primal:pelt_animal_large>,
	<primal:pelt_bear_black>,
	<primal:pelt_bear_brown>,
	<primal:pelt_bear_polar>,
	<primal:pelt_deer>,
	<primal:pelt_cow>,
	<primal:pelt_dog>,
	<primal:pelt_pig>,
	<primal:pelt_mooshroom>,
	<primal:pelt_sheep>,
	<primal:pelt_ovis>,
	<primal:pelt_horse>,
	<primal:pelt_donkey>,
	<primal:pelt_mule>,
	<primal:pelt_llama>,
	<primal:pelt_wolf>,
	<primal:leather_strip>,
	<primal:leather_cordage>,

	//Artisan
	<artisanworktables:workstation:13>
];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("tanner", item);
}
