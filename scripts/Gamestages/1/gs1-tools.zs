import crafttweaker.item.IIngredient;

var stagetoolsItems as IIngredient[] = [
	
	<minecraft:stone:*>,
	<minecraft:sandstone:*>,
	<minecraft:mossy_cobblestone>,

	//Primal
	<primal:fire_bow>,
	<primal:flint_shovel>,
	<primal:flint_pickaxe>,
	<primal:flint_hoe>,
	<primal:flint_axe>,
	<primal:flint_shears>,
	<primal:sword_crude_flint>,
	<primal:flint_point>,

	//Artisan
	<artisanworktables:artisans_cutters_flint>,
	<artisanworktables:artisans_hammer_flint>,
	<artisanworktables:artisans_framing_hammer_flint>,
	<artisanworktables:artisans_handsaw_flint>,
	<artisanworktables:artisans_chisel_flint>,
	<artisanworktables:artisans_mortar_flint>,
	<artisanworktables:artisans_trowel_flint>,
	<artisanworktables:artisans_razor_flint>
];

for item in stagetoolsItems {
	mods.ItemStages.addItemStage("tools", item);
}
