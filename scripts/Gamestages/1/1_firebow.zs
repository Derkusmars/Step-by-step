import crafttweaker.item.IIngredient;

var stagelightItems as IIngredient[] = [

	<ore:torch>,
	<minecraft:coal:1>,

	//Primal
	<primal:charcoal_stack:*>,
	<primal:charcoal_fair>,
	<primal:charcoal_good>,
	<primal:charcoal_high>,
	<primal:charcoal_mote>,

	//Chisel
	<chisel:block_charcoal:*>,

	//Terraqueous
	<terraqueous:item_main:206>,

	//ThermalFoundation
	<thermalfoundation:storage_resource>
];

for item in stagelightItems {
	mods.ItemStages.addItemStage("light", item);
}
