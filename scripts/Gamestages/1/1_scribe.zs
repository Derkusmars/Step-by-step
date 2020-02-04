import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	//Artisan
	<artisanworktables:workstation:8>
];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("scribe", item);
}
