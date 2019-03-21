import crafttweaker.item.IIngredient;

var stage = stages.basetools;

var stagebasetools as IIngredient[] = [


	<minecraft:log:*>,
	<minecraft:log2:*>,

	//Silentgear
	<silentgear:netherwood_log>,

	//integrateddynamics
	<integrateddynamics:menril_log>,
	<integrateddynamics:menril_log_filled>,
	
	
	//Terraqueous
	<terraqueous:trunk2:*>,
	<terraqueous:trunk1:*>,
	
	//Pams
	<harvestcraft:pampaperbark>,
	<harvestcraft:pammaple>,
	<harvestcraft:pamcinnamon>,
	
	//Primal
	<primal:plant_cordage>,
	<primal:flint_hatchet>,
	<primal:flint_workblade>,
	<primal:logs_stripped:*>,
	<primal:corypha_stalk>,
	<primal:bark_oak>,
	<primal:bark_jungle>,
	<primal:bark_ironwood>,
	<primal:bark_spruce>,
	<primal:bark_acacia>,
	<primal:bark_yew>,
	<primal:bark_bigoak>,
	<primal:bark_birch>,
	<primal:bark_corypha>,

	//Factory tech
	<factorytech:machinepart:180>,

	//Artisan
	<artisanworktables:workstation:5>

];

for item in stagebasetools {
	mods.ItemStages.addItemStage(stage, item);
}
