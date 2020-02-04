import crafttweaker.item.IIngredient;

var stagegardenerItems as IIngredient[] = [


	<minecraft:tallgrass:1>,

	//Artisan
	<artisanworktables:workstation:10>,

	//Primal
	<primal:thatching_wet>

];

for item in stagegardenerItems {
	mods.ItemStages.addItemStage("gardener", item);
}
