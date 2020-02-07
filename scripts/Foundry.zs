import mods.artisanworktables.builder.RecipeBuilder;
import mods.foundry.AlloyFurnace;

// https://ftb.gamepedia.com/Using_MineTweaker_and_Foundry

//==Alloy furnace
//addRecipe(IItemStack output, IIngredient input_a, IIngredient input_b)
//removeRecipe(IItemStack input_a, IItemStack input_b)
AlloyFurnace.removeRecipe(<thermalfoundation:material:64> * 3, <thermalfoundation:material:65>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:128> * 3, <thermalfoundation:material:129>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:128> * 3, <thermalfoundation:material:65>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:64> * 3, <thermalfoundation:material:129>);

AlloyFurnace.removeRecipe(<minecraft:iron_ingot> * 2, <thermalfoundation:material:133>);
AlloyFurnace.removeRecipe(<thermalfoundation:material> * 2, <thermalfoundation:material:69>);
AlloyFurnace.removeRecipe(<minecraft:iron_ingot> * 2, <thermalfoundation:material:69>);
AlloyFurnace.removeRecipe(<thermalfoundation:material> * 2, <thermalfoundation:material:133>);

AlloyFurnace.removeRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:130>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:1>, <thermalfoundation:material:66>);
AlloyFurnace.removeRecipe(<minecraft:gold_ingot>, <thermalfoundation:material:66>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:1>, <thermalfoundation:material:130>);

AlloyFurnace.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:133>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:69>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:64>, <thermalfoundation:material:69>);
AlloyFurnace.removeRecipe(<thermalfoundation:material:128>, <thermalfoundation:material:133>);

// Alloy furnace
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<foundry:component:2>, <ore:craftingFurnace>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>]])
  .addOutput(<foundry:alloyfurnace>)
  .setMirrored()
  .addTool(<ore:artisansTSquare>, 50)
  .addTool(<ore:artisansTrowel>, 50)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Refractory tank
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <ore:plateCopper>, <foundry:component:2>],
    [<foundry:refractoryglass>, null, <foundry:refractoryglass>],
    [<foundry:component:2>, <ore:plateCopper>, <foundry:component:2>]])
  .addOutput(<foundry:refractorytank>)
  .setMirrored()
  .addTool(<ore:artisansFile>, 20)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Refractory fluid container
RecipeBuilder.get("basic")
  .setShaped([
    [null, <ore:plateTin>, null],
    [<foundry:component:2>, <foundry:refractoryglass>, <foundry:component:2>],
    [null, <ore:plateTin>, null]])
  .addOutput(<foundry:fluidcontainer>)
  .setMirrored()
  .addTool(<ore:Razor>, 10)
//  .addRequirement(GameStages.anyOf([]))
.create();

//Refractory Clay
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <contenttweaker:compressed_sand>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addOutput(<foundry:component:1> * 8)
  .setMirrored()
  .addTool(<ore:artisansMortar>, 20)
  .create();

//Refractory Block
RecipeBuilder.get("mason")
  .setShaped([
    [<foundry:component:1>, <foundry:component:1>, <foundry:component:1>],
    [<foundry:component:1>, null, <foundry:component:1>],
    [<foundry:component:1>, <foundry:component:1>, <foundry:component:1>]])
  .addOutput(<foundry:componentblock:1>)
  .setMirrored()
  .addTool(<ore:artisansTrowel>, 20)
  .create();

//Renaming "Bronze Cauldron" to "Copper Cauldron"
<foundry:bronzecauldron>.displayName = "Copper Cauldron";
//Copper Cauldron
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<factorytech:ingot:6>, null, <factorytech:ingot:6>],
    [<factorytech:ingot:6>, null, <factorytech:ingot:6>],
    [<factorytech:ingot:6>, <factorytech:ingot:6>, <factorytech:ingot:6>]])
  .addOutput(<foundry:bronzecauldron>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Refractory Clay [Pieces]                                                      это что такое?
RecipeBuilder.get("mason")
.setShapeless([<foundry:component:16>, <foundry:component:16>, <foundry:component:16>, <foundry:component:16>])
.addOutput(<foundry:component:1>)
.setMaximumTier(1)
.create();

//Refractory Casing
  RecipeBuilder.get("blacksmith")
  .setShaped([
    [<factorytech:ingot:6>, <foundry:component:2>, <factorytech:ingot:6>],
    [<foundry:component:2>, null, <foundry:component:2>],
    [<factorytech:ingot:6>, <foundry:component:2>, <factorytech:ingot:6>]])
  .addOutput(<foundry:componentblock:3>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Melting Crucible [Basic]
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:bronzecauldron>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:componentblock:3>, <foundry:component:2>],
    [<foundry:component:2>, <factorytech:ingot:6>, <foundry:component:2>]])
  .addOutput(<foundry:machine>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Burner Heater
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<factorytech:ingot:6>],
    [<foundry:componentblock:3>],
    [<minecraft:furnace>]])
  .addOutput(<foundry:burnerheater>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Mold Crafting Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:componentblock:1>, <foundry:component:2>],
    [<foundry:component:2>, <minecraft:stone_slab>, <foundry:component:2>],
    [<foundry:component:2>, <minecraft:furnace>, <foundry:component:2>]])
  .addOutput(<foundry:moldstation>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Ingot Casting Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:mold>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
  .addOutput(<foundry:castingtable>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Plate Casting Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:mold:1>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
  .addOutput(<foundry:castingtable:1>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Block Casting Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:mold:4>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
  .addOutput(<foundry:castingtable:3>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Rod Casting Table
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<foundry:component:2>, <foundry:mold:3>, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
  .addOutput(<foundry:castingtable:2>)
  .setMirrored()
  .addTool(<ore:artisansHammer>, 20)
  .create();

//Refractory Spout
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<factorytech:ingot:6>, <minecraft:lever>, null],
    [<foundry:component:2>, <foundry:component:2>, null],
    [<factorytech:ingot:6>, null, null]])
  .setMirrored()
  .addOutput(<foundry:refractoryspout>)
  .addTool(<ore:artisansHammer>, 20)
  .create();

/*
<foundry:revolver>.withTag({Slot_0: {Empty: 1 as byte},
  Slot_1: {Empty: 1 as byte}, Slot_2: {Empty: 1 as byte},
  Slot_3: {Empty: 1 as byte}, position: 0, Slot_4: {Empty: 1 as byte},
  Slot_5: {Empty: 1 as byte}, Slot_6: {Empty: 1 as byte}, Slot_7: {Empty: 1 as byte}})
<foundry:component:3>
<foundry:component:4>
<foundry:component:5>
<foundry:shotgun>.withTag({Slot_0: {Empty: 1 as byte},
  Slot_1: {Empty: 1 as byte}, Slot_2: {Empty: 1 as byte},
  Slot_3: {Empty: 1 as byte}, Slot_4: {Empty: 1 as byte}})
  <foundry:component:12>
<foundry:component:13>


*/
