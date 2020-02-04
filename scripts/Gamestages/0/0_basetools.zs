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
	<primal:logs_split_oak>,
	<primal:logs_split_spruce>,
	<primal:logs_split_birch>,
	<primal:logs_split_jungle>,
	<primal:logs_split_acacia>,
	<primal:logs_split_bigoak>,
	<primal:logs_split_ironwood>,
	<primal:logs_split_yew>,
	<primal:plant_tinder>,
	<primal:nether_tinder>,
	<primal:logs_stacked:*>,
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
	<primal:fire_bow>,
	<primal:flint_shovel>,
	<primal:flint_pickaxe>,
	<primal:flint_hoe>,
	<primal:flint_axe>,
	<primal:flint_shears>,
	<primal:sword_crude_flint>,
	<primal:flint_point>,

	//Factory tech
	<factorytech:machinepart:180>,

	//Artisan
	<artisanworktables:workstation:5>,
	<artisanworktables:artisans_cutters_flint>,
	<artisanworktables:artisans_hammer_flint>,
	<artisanworktables:artisans_framing_hammer_flint>,
	<artisanworktables:artisans_handsaw_flint>,
	<artisanworktables:artisans_chisel_flint>,
	<artisanworktables:artisans_mortar_flint>,
	<artisanworktables:artisans_trowel_flint>,
	<artisanworktables:artisans_razor_flint>

];

for item in stagebasetools {
	mods.ItemStages.addItemStage(stage, item);
}
