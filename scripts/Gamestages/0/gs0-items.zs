import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagebaseItems as IIngredient[] = [
	<minecraft:dirt:*>,
	<minecraft:gravel>,
	<primal:plant_fiber>,
	<primal:plant_twine>,
];

for item in stagebaseItems {
	mods.ItemStages.addItemStage(stage, item);
}
