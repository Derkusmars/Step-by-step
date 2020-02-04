import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	<minecraft:brick_block>,
	<minecraft:brick>,

	//Artisan
	<artisanworktables:workstation:14>,

	//Primal
	<primal:bucket_clay_soft>,
	<primal:bucket_clay>,
	<primal:bucket_cinis_soft>,
	<primal:bucket_cinis>,
	<primal:bucket_terra_soft>,
	<primal:bucket_terra>

];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("potter", item);
}
