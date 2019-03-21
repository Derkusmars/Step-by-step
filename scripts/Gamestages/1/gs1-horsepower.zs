import crafttweaker.item.IIngredient;

var stagehorseItems as IIngredient[] = [
	
	//HorsePower
	<horsepower:chopping_block:*>,
	<horsepower:chopper:*>,
	<horsepower:press>,

	//Animania
	<animania:item_cart>,
	<animania:riding_crop>
];

for item in stagehorseItems {
	mods.ItemStages.addItemStage("horsepower", item);
}
