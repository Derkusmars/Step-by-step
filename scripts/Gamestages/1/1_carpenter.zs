import crafttweaker.item.IIngredient;

var stagecarpenterItems as IIngredient[] = [


	//Artisan
	<artisanworktables:workstation:1>,

	//Primal
	<primal:planks:*>,
	<primal:wood_pin>,
	<primal:slat_oak>,
	<primal:slat_spruce>,
	<primal:slat_birch>,
	<primal:slat_jungle>,
	<primal:slat_acacia>,
	<primal:slat_bigoak>,
	<primal:slat_ironwood>,
	<primal:slat_yew>,
	<primal:slat_corypha>,
	<primal:slat_lacquer>,
	<primal:slat_iron>,
	<primal:drying_rack:*>,

	//Minecraft
	<minecraft:planks:*>,
	<minecraft:trapdoor>,
	<minecraft:chest>,
	<minecraft:wooden_door>,
	<minecraft:spruce_door>,
	<minecraft:birch_door>,
	<minecraft:jungle_door>,
	<minecraft:acacia_door>,
	<minecraft:dark_oak_door>,

	//Chisel
	<chisel:planks-birch:*>,
	<chisel:planks-dark-oak:*>,
	<chisel:planks-jungle:*>,
	<chisel:planks-oak:*>,
	<chisel:planks-spruce:*>,

	//Integrateddynamics
	<integrateddynamics:menril_planks>,

	//Naturalpledge
	<naturalpledge:alt_planks:*>,
	<naturalpledge:aurora_planks>,
	<naturalpledge:calico_planks>,
	<naturalpledge:circuit_planks>,
	<naturalpledge:iris_planks:*>,
	<naturalpledge:rainbow_planks>,
	<naturalpledge:seal_planks>,
	<naturalpledge:thunder_planks>,

	//Silentgear
	<silentgear:netherwood_planks>,

	//horsepower
	<horsepower:chopping_block:*>,

	//terraqueous
	<terraqueous:planks:*>,

	//Malisisdoors
	<malisisdoors:trapdoor_acacia>,
	<malisisdoors:trapdoor_birch>,
	<malisisdoors:trapdoor_dark_oak>,
	<malisisdoors:trapdoor_jungle>,
	<malisisdoors:trapdoor_spruce>,

	//Drawers
	<storagedrawers:basicdrawers:*>,
	<storagedrawers:trim:*>,
	<storagedrawers:framingtable>,
	<storagedrawers:customdrawers:*>,

	//Factory tech
	<factorytech:sluice>

];

for item in stagecarpenterItems {
	mods.ItemStages.addItemStage("carpenter", item);
}
