#priority 4000

import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagebaseItems as IIngredient[] = [
	
	<botania:tinypotato>

];

for item in stagebaseItems {
	mods.ItemStages.addItemStage(stage, item);
}
