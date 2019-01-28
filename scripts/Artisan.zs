import mods.artisanworktables.builder.RecipeBuilder;

//Basic workbench
recipes.remove(<artisanworktables:worktable:5>);
recipes.addShapeless(<artisanworktables:worktable:5>, [<primal:flint_knapp>,<factorytech:machinepart:180>,<primal:logs_stripped:*>,<minecraft:stick>]);

//Flint Framing Hammer
recipes.remove(<ore:artisansFramingHammer>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <ore:stickWood>, <ore:cordageGeneral>],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_flint>)
.setMaximumTier(0)
.create();

//Carpenters workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <primal:logs_stripped:*>, <ore:logSplit>],
[<primal:logs_stripped:*>, <ore:logWood>, <primal:logs_stripped:*>],
[<ore:logSplit>, <primal:logs_stripped:*>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable:1>)
.setMaximumTier(0)
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Flint Cutters
recipes.remove(<ore:artisansCutters>);
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, null, <primal:flint_knapp>],
[null, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_flint>)
.setMaximumTier(0)
.create();

//Flint Handsaw
recipes.remove(<ore:artisansHandsaw>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <ore:stickWood>],
[<primal:flint_knapp>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_flint>)
.setMaximumTier(0)
.create();

//Flint Mortar [Artisan]
recipes.remove(<ore:artisansMortar>);
RecipeBuilder.get("basic")
.setShaped([
[null, null, <minecraft:stick>],
[<primal:flint_point>, <primal:flint_point>, null],
[null, <primal:flint_point>, null]])
.addOutput(<artisanworktables:artisans_mortar_flint>)
.setMaximumTier(0)
.create();

//Tailor's Workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <minecraft:brick_block>, <ore:logSplit>],
[<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>], 
[<ore:logSplit>, <minecraft:brick_block>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable:2>)
.setMaximumTier(0)
.create();

//Mason's Workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:blockWoolWhite>, <ore:logSplit>],
[<minecraft:wool:*>, <ore:logWood>, <ore:blockWoolWhite>], 
[<ore:logSplit>, <minecraft:wool:*>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable>)
.setMaximumTier(0)
.create();

//Flint Razor
recipes.remove(<ore:artisansRazor>);
RecipeBuilder.get("basic")
.setShapeless([<ore:cordageGeneral>,<primal:flint_knapp>,<minecraft:stick>])
.addOutput(<artisanworktables:artisans_razor_flint>)
.setMaximumTier(0)
.create();

//Flint Shears
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, null],
[<ore:stickWood>, <minecraft:string>, <primal:flint_knapp>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_flint>)
.setMaximumTier(0)
.create();

//Flint Needle
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[null, <primal:flint_knapp>, <minecraft:string>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_flint>)
.setMaximumTier(0)
.create();

//Flint Chisel
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[null, <primal:flint_knapp>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_flint>)
.setMaximumTier(0)
.create();

//Flint Hammer
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <minecraft:string>],
[null, <minecraft:stick>, <primal:flint_knapp>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_flint>)
.setMaximumTier(0)
.create();

//Toolbox
RecipeBuilder.get("basic")
.setShaped([
[<architecturecraft:shape>, <minecraft:trapdoor>, <architecturecraft:shape>],
[<ore:plankWood>, <minecraft:chest>, <ore:plankWood>], 
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.addOutput(<artisanworktables:toolbox>)
.addTool(<ore:artisansHandsaw>, 50)
.setMaximumTier(0)
.create();

//Flint Trowel
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <minecraft:stick>, <primal:flint_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_flint>)
.setMaximumTier(0)
.create();

//Tanner's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>],
[<ore:plankWood>, <ore:pelt>, <ore:plankWood>], 
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable:13>)
.setMaximumTier(0)
.create();

//Dark Oak Frame [ArchitectureCraft]
RecipeBuilder.get("carpenter")
.setShapeless([<ore:slatWood>])
.addOutput(<architecturecraft:shape>.withTag({Shape: 30, BaseName: "minecraft:planks", BaseData: 5}))
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Flint Beaker
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <primal:flint_knapp>, <primal:flint_knapp>],
[<minecraft:glass_pane>, null, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]])
.addOutput(<artisanworktables:artisans_beaker_flint>)
.setMaximumTier(0)
.create();

//Potter's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <minecraft:stone_slab>, <ore:logSplit>],
[<minecraft:stone_slab>, <minecraft:hardened_clay>, <minecraft:stone_slab>], 
[<ore:logSplit>, <minecraft:stone_slab>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable:14>)
.setMaximumTier(0)
.create();

//Designer's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>],
[<ore:plankWood>, <artisanworktables:design_pattern>, <ore:plankWood>], 
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>]])
.addOutput(<artisanworktables:worktable:12>)
.setMaximumTier(0)
.create();

//Design Pattern
RecipeBuilder.get("basic")
.setShapeless([<minecraft:paper>,<ore:gemLapis>])
.addOutput(<artisanworktables:design_pattern>)
.setMaximumTier(0)
.create();
