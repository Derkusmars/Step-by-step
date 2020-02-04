import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	<minecraft:glass>,
	<minecraft:stained_glass:*>

];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("glass", item);
}
