import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	<minecraft:stone_slab:*>,

	//Artisan
	<artisanworktables:workstation:2>
];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("mason", item);
}
