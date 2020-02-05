import mods.artisanworktables.builder.RecipeBuilder;


mods.factorytech.Grindstone.removeRecipe(<factorytech:machinepart:30>);
mods.factorytech.Grindstone.addRecipe(<factorytech:machinepart:30>, <factorytech:bricks>, true);

// Iron shaft
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plateIron>, null],
    [null, <ore:plateIron>, null],
    [null, <ore:plateIron>, null]])
  .addOutput(<factorytech:machinepart:51> * 4)
  .addTool(<ore:artisansFile>, 25)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Basic motor
RecipeBuilder.get("engineer")
  .setShaped([
    [<factorytech:machinepart:51>, <factorytech:machinepart:51>, <factorytech:machinepart:51>],
    [<ore:plateIron>, <ore:string>, <ore:plateIron>],
    [<ore:plateIron>, <ore:gemLapis>, <ore:plateIron>]])
  .setFluid(<liquid:redstone> * 100)
  .addOutput(<factorytech:intermediate:4>)
  .addTool(<ore:artisansCutters>, 25)
  .addTool(<ore:artisansDriver>, 25)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Grindstone
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:stone_slab>, <factorytech:machinepart:51>, <minecraft:stone_slab>],
    [<ore:plankWood>, <ore:materialStoneTool>, <ore:plankWood>],
    [<factorytech:intermediate:4>, <factorytech:machinepart:51>, <factorytech:intermediate:4>]])
  .setFluid(<liquid:iron> * 288)
  .addOutput(<factorytech:grindstone>)
  .addTool(<ore:artisansFile>, 50)
  .addTool(<ore:artisansDriver>, 25)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Metal cutting machine
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, <factorytech:machinepart:51>, <ore:plateIron>],
    [<ore:plateNickel>, <factorytech:intermediate:4>, <ore:plateNickel>],
    [<ore:materialStoneTool>, <factorytech:machinepart:51>,  <ore:materialStoneTool>]])
  .setFluid(<liquid:iron> * 288)
  .addOutput(<factorytech:metalcutter>)
  .addTool(<ore:artisansFile>, 25)
  .addTool(<ore:artisansDriver>, 50)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Advanced motor
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:nuggetNickel>, null],
    [<ore:nuggetIron>, <gregtech:meta_item_2:32011>, <ore:nuggetIron>],
    [<ore:nuggetIron>, <factorytech:machinepart:21>,  <ore:nuggetIron>]])
  .setFluid(<liquid:redstone> * 100)
  .addOutput(<factorytech:machinepart:60>)
  .addTool(<ore:artisansSolderer>, 15)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Sand brick
RecipeBuilder.get("potter")
  .setShaped([
    [null, <ore:ingotBrick>, null],
    [<ore:ingotBrick>, <ore:sand>, <ore:ingotBrick>],
    [null, <ore:ingotBrick>, null]])
  .addOutput(<factorytech:bricks>)
  .addTool(<ore:artisansCarver>, 15)
  .addTool(<ore:artisansHammer>, 15)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Sand brick
RecipeBuilder.get("potter")
  .setShaped([
    [null, <ore:ingotBrick>, null],
    [<ore:ingotBrick>, <ore:sand>, <ore:ingotBrick>],
    [null, <ore:ingotBrick>, null]])
  .addOutput(<factorytech:bricks>)
  .addTool(<ore:artisansCarver>, 15)
  .addTool(<ore:artisansHammer>, 15)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Stone gear
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:cobblestone>, null],
    [<ore:cobblestone>, <factorytech:bricks>, <ore:cobblestone>],
    [null, <ore:cobblestone>, null]])
  .addOutput(<factorytech:machinepart:10>)
  .addTool(<ore:artisansCutters>, 25)
  .addTool(<ore:artisansCarver>, 15)
//  .addRequirement(GameStages.anyOf([]))
.create();










//Mesh
recipes.remove(<factorytech:machinepart:180>);
recipes.addShapeless(<factorytech:machinepart:180>, [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]);

//String Mesh
RecipeBuilder.get("tailor")
.setShaped([
[<minecraft:string>, <minecraft:string>, <minecraft:string>],
[<minecraft:string>, <minecraft:string>, <minecraft:string>],
[<minecraft:string>, <minecraft:string>, <minecraft:string>]])
.addOutput(<contenttweaker:string_mesh>)
.addTool(<ore:artisansNeedle>, 25)
.create();

//River Grade
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:plankWood>, null, <ore:plankWood>],
[<ore:plankWood>, <contenttweaker:string_mesh>, <ore:plankWood>],
[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]])
.addOutput(<factorytech:sluice>)
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Wooden Mesh
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stick>,<minecraft:stick>,<minecraft:stick>,<minecraft:stick>])
.addOutput(<factorytech:machinepart:180>)
.setMaximumTier(1)
.create();

//Disable Flint From Centrifuge
mods.factorytech.Centrifuge.removeRecipe(<minecraft:flint> *4, <minecraft:iron_nugget> *2, <minecraft:flint> *2, <factorytech:ore_dust:17> *2);

//Adding Items To River Grate
mods.factorytech.rivergrate.addRecipe(<primal:flint_knapp>, 0.015);
mods.factorytech.rivergrate.addRecipe(<primal:nickel_nugget>, 0.001);
mods.factorytech.rivergrate.addRecipe(<minecraft:iron_nugget>, 0.001);
mods.factorytech.rivergrate.addRecipe(<primal:copper_nugget>, 0.001);
mods.factorytech.rivergrate.addRecipe(<contenttweaker:nugget_tin_river>, 0.001);
mods.factorytech.rivergrate.addRecipe(<contenttweaker:nugget_gold_river>, 0.001);
mods.factorytech.rivergrate.addRecipe(<contenttweaker:nugget_lead_river>, 0.001);
mods.factorytech.rivergrate.addRecipe(<contenttweaker:nugget_silver_river>, 0.001);
mods.factorytech.rivergrate.addRecipe(<contenttweaker:nugget_aluminum_river>, 0.001);
mods.factorytech.rivergrate.addRecipe(<primal:quartz_knapp>, 0.001);

//Renaming "Sheet Metal Siding" to "Sheet Metal Block"
<factorytech:metal:4>.displayName = "Sheet Metal Block";

//Sheet Metal Block
RecipeBuilder.get("mason")
.setShaped([
[null, <minecraft:iron_bars>, null],
[<minecraft:iron_bars>, <minecraft:iron_ingot>, <minecraft:iron_bars>],
[null, <minecraft:iron_bars>, null]])
.addOutput(<factorytech:metal:4>)
.addTool(<artisanworktables:artisans_hammer_flint>, 20)
.setMaximumTier(1)
.create();
