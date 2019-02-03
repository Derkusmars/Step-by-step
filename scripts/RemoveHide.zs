import crafttweaker.item.IItemStack;

//Remove all Recipes in Furnace
furnace.removeAll();

//Primal
var removeItems as IItemStack[] = [
<primal:thatching_wet>,
<primal:thin_slab_oak>,
<primal:thin_slab_spruce>,
<primal:thin_slab_birch>,
<primal:thin_slab_jungle>,
<primal:thin_slab_acacia>,
<primal:thin_slab_bigoak>,
<primal:slat_oak>,
<primal:slat_spruce>,
<primal:slat_jungle>,
<primal:slat_bigoak>,
<primal:slat_acacia>,
<primal:slat_birch>,
<primal:flint_workblade>,
<primal:drying_rack:*>,
<primal:flint_pickaxe>,
<primal:flint_shovel>,
<primal:plant_fiber_pulp>,
<primal:logs_stripped:*>,
<primal:adobe_brick_dry>,
<primal:logs_stacked:*>,
<primal:smelter_lid_adobe>,
<primal:smelter:*>,
<primal:sword_crude_flint>,
<primal:wood_pin>,
<primal:thatch>,
<primal:bucket_clay_soft>,
<primal:bucket_terra_soft>,
<primal:bucket_cinis_soft>,
<primal:wood_pin>,
<primal:wood_pin>,
<primal:stone_gallagher>,
<primal:iron_gallagher>,
<primal:fire_bow>,
<primal:stone_gallagher>,
<primal:iron_gallagher>,
<primal:stone_basin>,
<primal:tannin_ground>,
<primal:nickel_ingot>,
<primal:ironwood_bow>,
<primal:yew_bow>,
<primal:ironwood_stick>,
<primal:planks>,
<primal:yew_stick>,
<primal:planks:1>,
<primal:flint_shears>,
<primal:adobe_clump>,
<primal:flint_knapp>,
<primal:iron_strand>,
<primal:slat_iron>,
<primal:hibachi:3>,
<primal:adobe_brick>,

//Remove [Botania]
<botania:pool>,
<botania:pool:2>,
<botania:pool:3>,
<botania:altar:1>,
<botania:altar:2>,
<botania:altar:3>,
<botania:altar:4>,
<botania:altar:5>,
<botania:altar:6>,
<botania:altar:7>,
<botania:altar:8>,
<botania:autocraftinghalo>,
<botania:craftinghalo>,
<botania:altar>,
<botania:livingrock0slab>,
<botanicadds:mana_tesseract>,

//Remove [Minecraft]
<minecraft:stick>,
<minecraft:torch>,
<minecraft:stone_slab>,
<minecraft:chest>,
<minecraft:dye:15>,
<minecraft:brick>,
<minecraft:stonebrick>,
<minecraft:paper>,
<minecraft:brick_block>,
<minecraft:glass_pane>,
<minecraft:string>,
<minecraft:iron_ingot>,
<minecraft:leather>,
<minecraft:bow>,
<minecraft:lead>,
<minecraft:furnace>,
<minecraft:carpet:*>,
<minecraft:bed:*>,
<minecraft:sandstone>,
<minecraft:sand>,
<minecraft:iron_nugget>,
<minecraft:iron_bars>,
<minecraft:bucket>,
<minecraft:gold_ingot>,
<minecraft:ladder>,
<minecraft:bowl>,
<minecraft:dark_oak_door>,
<minecraft:acacia_door>,
<minecraft:jungle_door>,
<minecraft:birch_door>,
<minecraft:spruce_door>,
<minecraft:wooden_door>,
<minecraft:spruce_fence>,
<minecraft:fence>,
<minecraft:trapdoor>,
<minecraft:iron_trapdoor>,
<minecraft:iron_door>,
<minecraft:acacia_fence_gate>,
<minecraft:dark_oak_fence_gate>,
<minecraft:jungle_fence_gate>,
<minecraft:birch_fence_gate>,
<minecraft:spruce_fence_gate>,
<minecraft:fence_gate>,
<minecraft:acacia_fence>,
<minecraft:dark_oak_fence>,
<minecraft:jungle_fence>,
<minecraft:birch_fence>,
<minecraft:dark_oak_stairs>,
<minecraft:acacia_stairs>,
<minecraft:spruce_stairs>,
<minecraft:stone_brick_stairs>,
<minecraft:red_sandstone_stairs>,
<minecraft:jungle_stairs>,
<minecraft:birch_stairs>,
<minecraft:brick_stairs>,
<minecraft:sandstone_stairs>,
<minecraft:oak_stairs>,
<minecraft:stone_stairs>,

//Remove [Thermal Foundation]
<thermalfoundation:material:32>,
<thermalfoundation:material:24>,
<thermalfoundation:material:33>,
<thermalfoundation:material:320>,
<thermalfoundation:material:321>,
<thermalfoundation:material:322>,
<thermalfoundation:material:323>,
<thermalfoundation:material:324>,
<thermalfoundation:material:325>,
<thermalfoundation:material:326>,
<thermalfoundation:material:327>,

//Remove [Storage Drawers]
<storagedrawers:basicdrawers>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:1>.withTag({material: "oak"}),
<storagedrawers:basicdrawers:2>.withTag({material: "oak"}),
<storagedrawers:basicdrawers>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:1>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers:2>.withTag({material: "spruce"}),
<storagedrawers:basicdrawers>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:1>.withTag({material: "birch"}),
<storagedrawers:basicdrawers:2>.withTag({material: "birch"}),
<storagedrawers:basicdrawers>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:1>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers:2>.withTag({material: "jungle"}),
<storagedrawers:basicdrawers>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:1>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers:2>.withTag({material: "acacia"}),
<storagedrawers:basicdrawers>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:1>.withTag({material: "dark_oak"}),
<storagedrawers:basicdrawers:2>.withTag({material: "dark_oak"}),

//Remove [Mix]
<factorytech:sluice>,
<factorytech:metal:4>,
<fp:itemerze:2>,
<factorytech:ingot:5>,
<factorytech:ingot:6>,
<factorytech:ingot:7>,
<foundry:component:1>,
<foundry:componentblock:1>,
<foundry:componentblock:3>,
<foundry:bronzecauldron>,
<foundry:machine>,
<foundry:burnerheater>,
<foundry:moldstation>,
<foundry:castingtable>,
<foundry:castingtable:1>,
<foundry:castingtable:3>,
<foundry:refractoryspout>,
<factorytech:ore_dust:15>,
<factorytech:ore_dust:16>,
<factorytech:ore_dust:17>,
<chisel:chisel_iron>,
<malisisdoors:big_door_dark_oak_3x3>,
<malisisdoors:big_door_acacia_3x3>,
<malisisdoors:big_door_jungle_3x3>,
<malisisdoors:big_door_birch_3x3>,
<malisisdoors:big_door_spruce_3x3>,
<malisisdoors:big_door_oak_3x3>
];

for item in removeItems {
	recipes.remove(item);
}

//Remove And Hide
mods.jei.JEI.removeAndHide(<minecraft:crafting_table>);
mods.jei.JEI.removeAndHide(<primal:worktable_shelf:*>);
mods.jei.JEI.removeAndHide(<primal:worktable_slab:*>);
mods.jei.JEI.removeAndHide(<botania:opencrate:*>);
mods.jei.JEI.removeAndHide(<factorytech:autocrafter>);
mods.jei.JEI.removeAndHide(<primal:flint_saw>);
mods.jei.JEI.removeAndHide(<minecraft:flint>);
mods.jei.JEI.removeAndHide(<fp:recycler:2>);
mods.jei.JEI.removeAndHide(<primal:smelter>.withTag({type: "mud"}));
mods.jei.JEI.removeAndHide(<primal:smelter:1>.withTag({type: "terra"}));
mods.jei.JEI.removeAndHide(<primal:smelter:2>.withTag({type: "cinis"}));
mods.jei.JEI.removeAndHide(<primal:hibachi>.withTag({type: "mud"}));
mods.jei.JEI.removeAndHide(<primal:hibachi:1>.withTag({type: "terra"}));
mods.jei.JEI.removeAndHide(<primal:hibachi:2>.withTag({type: "cinis"}));
mods.jei.JEI.removeAndHide(<primal:tatami_bed:*>);
mods.jei.JEI.removeAndHide(<primal:smelter_lid_mud>);
mods.jei.JEI.removeAndHide(<primal:smelter_lid_terra>);
mods.jei.JEI.removeAndHide(<primal:smelter_lid_cinis>);
mods.jei.JEI.removeAndHide(<primal:torch_wood>);
mods.jei.JEI.removeAndHide(<primal:torch_nether>);
mods.jei.JEI.removeAndHide(<primal:torch_nether_lit>);
mods.jei.JEI.removeAndHide(<primal:nether_gallagher>);
mods.jei.JEI.removeAndHide(<primal:quartz_gallagher>);
mods.jei.JEI.removeAndHide(<primal:corypha_bow>);
mods.jei.JEI.removeAndHide(<artisanworktables:worktable:*>);
mods.jei.JEI.removeAndHide(<theoneprobe:probe>);
mods.jei.JEI.removeAndHide(<theoneprobe:creativeprobe>);
mods.jei.JEI.removeAndHide(<theoneprobe:probenote>);
mods.jei.JEI.removeAndHide(<theoneprobe:diamond_helmet_probe>.withTag({theoneprobe:1}));
mods.jei.JEI.removeAndHide(<theoneprobe:gold_helmet_probe>.withTag({theoneprobe:1}));
mods.jei.JEI.removeAndHide(<theoneprobe:iron_helmet_probe>.withTag({theoneprobe:1}));
mods.jei.JEI.removeAndHide(<theoneprobe:probe_goggles>);
mods.jei.JEI.removeAndHide(<primitivemobs:cooked_dodo>);
mods.jei.JEI.removeAndHide(<primitivemobs:dodo>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_burner_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_hammer_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_knife_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_handsaw_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_framing_hammer_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_framing_hammer_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_framing_hammer_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutting_board_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutting_board_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutting_board_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_mortar_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_mortar_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_mortar_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_gemcutter_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_sifter_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_sifter_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_sifter_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_needle_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_needle_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_needle_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pliers_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_pan_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_cutters_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_punch_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_punch_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_punch_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_driver_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_driver_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_driver_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_razor_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_razor_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_razor_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_athame_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_athame_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_athame_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_grimoire_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_grimoire_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_grimoire_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_chisel_bone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_lens_wood>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_lens_stone>);
mods.jei.JEI.removeAndHide(<artisanworktables:artisans_lens_bone>);

//OreDict
recipes.remove(<ore:artisansShears>);
recipes.remove(<ore:artisansNeedle>);
recipes.remove(<ore:artisansChisel>);
recipes.remove(<ore:artisansHammer>);
recipes.remove(<ore:artisansTrowel>);
recipes.remove(<ore:artisansBeaker>);
recipes.remove(<ore:artisansSifter>);
recipes.remove(<ore:artisansFramingHammer>);
recipes.remove(<ore:artisansCutters>);
recipes.remove(<ore:artisansMortar>);
recipes.remove(<ore:artisansPunch>);
recipes.remove(<ore:artisansRazor>);
recipes.remove(<ore:artisansHandsaw>);
recipes.remove(<ore:fiberCineris>);
recipes.remove(<ore:fiberPlant>);
recipes.remove(<ore:brickmold>);
recipes.remove(<ore:plankWood>);
recipes.remove(<ore:slabWood>);
recipes.remove(<ore:rock>);
recipes.remove(<ore:petal_block>);
recipes.remove(<ore:dye>);
