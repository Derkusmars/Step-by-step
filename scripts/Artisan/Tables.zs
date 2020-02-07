import mods.artisanworktables.builder.RecipeBuilder;

/* Misc - all table

https://artisan-worktables.readthedocs.io/en/latest/

  basic
  blacksmith
  carpenter
  chef
  chemist
  designer
  engineer
  farmer
  jeweler
  mage
  mason
  potter
  scribe
  tailor
  tanner
  toolbox
*/



//Basic workbench
recipes.remove(<artisanworktables:workstation:5>);
recipes.addShapeless(<artisanworktables:workstation:5>, [<primal:flint_knapp>,<factorytech:machinepart:180>,<ore:logStripped>,<minecraft:stick>]);

//Carpenters workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:logStripped>, <ore:logSplit>],
[<ore:logStripped>, <ore:logWood>, <ore:logStripped>],
[<ore:logSplit>, <ore:logStripped>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:1>)
.setMaximumTier(1)
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Mason's Workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <minecraft:brick_block>, <ore:logSplit>],
[<minecraft:brick_block>, <minecraft:stone_slab>, <minecraft:brick_block>],
[<ore:logSplit>, <minecraft:brick_block>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:2>)
.setMaximumTier(1)
.create();

//Tailor's Workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:wool>, <ore:logSplit>],
[<ore:wool>, <ore:logWood>, <ore:wool>],
[<ore:logSplit>, <ore:wool>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation>)
.setMaximumTier(1)
.create();

//Toolbox
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:slabWood>, <minecraft:trapdoor>, <ore:slabWood>],
[<ore:plankWood>, <minecraft:chest>, <ore:plankWood>],
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.addOutput(<artisanworktables:toolbox>)
.addTool(<ore:artisansHandsaw>, 50)
.setMaximumTier(1)
.create();

//Tanner's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>],
[<ore:plankWood>, <ore:pelt>, <ore:plankWood>],
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:13>)
.setMaximumTier(1)
.create();

//Potter's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <minecraft:stone_slab>, <ore:logSplit>],
[<minecraft:stone_slab>, <minecraft:hardened_clay>, <minecraft:stone_slab>],
[<ore:logSplit>, <minecraft:stone_slab>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:14>)
.setMaximumTier(1)
.create();

//Designer's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>],
[<ore:plankWood>, <artisanworktables:design_pattern>, <ore:plankWood>],
[<ore:logSplit>, <ore:plankWood>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:12>)
.setMaximumTier(1)
.create();

//Design Pattern
RecipeBuilder.get("basic")
.setShapeless([<minecraft:paper>,<ore:gemLapis>])
.addOutput(<artisanworktables:design_pattern>)
.setMaximumTier(1)
.create();

//Blacksmith's Workbench
RecipeBuilder.get("mason")
.setShaped([
[<ore:logSplit>, <factorytech:ingot:5>, <ore:logSplit>],
[<factorytech:ingot:5>, <factorytech:metal:4>, <factorytech:ingot:5>],
[<ore:logSplit>, <factorytech:ingot:5>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:3>)
.setMaximumTier(1)
.create();

//Farmer's Workbench
RecipeBuilder.get("basic")
.setShaped([
[<ore:logSplit>, <minecraft:tallgrass:1>, <ore:logSplit>],
[<minecraft:tallgrass:1>, <contenttweaker:compressed_fert_dirt>, <minecraft:tallgrass:1>],
[<ore:logSplit>, <minecraft:tallgrass:1>, <ore:logSplit>]])
.addOutput(<artisanworktables:workstation:10>)
.setMaximumTier(1)
.create();
