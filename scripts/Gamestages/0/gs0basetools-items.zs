import crafttweaker.item.IIngredient;

var stage = stages.basetools;

var stagebasetoolsItems as IIngredient[] = [

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

for item in stagebasetoolsItems {
	mods.ItemStages.addItemStage(stage, item);
}
