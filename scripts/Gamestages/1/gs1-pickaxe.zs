import crafttweaker.item.IIngredient;

var stagetoolsItems as IIngredient[] = [

	<minecraft:stone:*>,
	<minecraft:sandstone:*>,
	<minecraft:mossy_cobblestone>

];

for item in stagetoolsItems {
	mods.ItemStages.addItemStage("pickaxe", item);
}
