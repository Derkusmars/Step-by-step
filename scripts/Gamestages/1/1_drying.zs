import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	//Artisan
	<artisanworktables:workstation:8>,

	<primal:thatching_dry>,
	<primal:nether_papyrus>,
	<primal:plant_papyrus>

];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("drying", item);
}
