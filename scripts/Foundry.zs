import mods.artisanworktables.builder.RecipeBuilder;

//Refractory Clay
RecipeBuilder.get("mason")
.setShaped([
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<minecraft:clay_ball>, <contenttweaker:compressed_sand>, <minecraft:clay_ball>], 
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
.addOutput(<foundry:component:1> * 8)
.addTool(<ore:artisansMortar>, 20)
.setMaximumTier(1)
.create();

//Refractory Block
RecipeBuilder.get("mason")
.setShaped([
[<foundry:component:1>, <foundry:component:1>, <foundry:component:1>],
[<foundry:component:1>, null, <foundry:component:1>], 
[<foundry:component:1>, <foundry:component:1>, <foundry:component:1>]])
.addOutput(<foundry:componentblock:1>)
.addTool(<ore:artisansTrowel>, 20)
.setMaximumTier(1)
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
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Refractory Clay [Pieces]
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
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Melting Crucible [Basic]
RecipeBuilder.get("blacksmith")
.setShaped([
[<foundry:component:2>, <foundry:bronzecauldron>, <foundry:component:2>],
[<foundry:component:2>, <foundry:componentblock:3>, <foundry:component:2>], 
[<foundry:component:2>, <factorytech:ingot:6>, <foundry:component:2>]])
.addOutput(<foundry:machine>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Burner Heater
RecipeBuilder.get("blacksmith")
.setShaped([
[null, <factorytech:ingot:6>, null],
[null, <foundry:componentblock:3>, null], 
[null, <minecraft:furnace>, null]])
.addOutput(<foundry:burnerheater>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Mold Crafting Table
RecipeBuilder.get("blacksmith")
.setShaped([
[<foundry:component:2>, <foundry:componentblock:1>, <foundry:component:2>],
[<foundry:component:2>, <minecraft:stone_slab>, <foundry:component:2>], 
[<foundry:component:2>, <minecraft:furnace>, <foundry:component:2>]])
.addOutput(<foundry:moldstation>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Ingot Casting Table
RecipeBuilder.get("blacksmith")
.setShaped([
[<foundry:component:2>, <foundry:mold>, <foundry:component:2>],
[<foundry:component:2>, <foundry:component:2>, <foundry:component:2>], 
[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
.addOutput(<foundry:castingtable>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Plate Casting Table
RecipeBuilder.get("blacksmith")
.setShaped([
[<foundry:component:2>, <foundry:mold:1>, <foundry:component:2>],
[<foundry:component:2>, <foundry:component:2>, <foundry:component:2>], 
[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
.addOutput(<foundry:castingtable:1>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Block Casting Table
RecipeBuilder.get("blacksmith")
.setShaped([
[<foundry:component:2>, <foundry:mold:4>, <foundry:component:2>],
[<foundry:component:2>, <foundry:component:2>, <foundry:component:2>], 
[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]])
.addOutput(<foundry:castingtable:3>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();

//Refractory Spout
RecipeBuilder.get("blacksmith")
.setShaped([
[<factorytech:ingot:6>, <minecraft:lever>, null],
[<foundry:component:2>, <foundry:component:2>, null], 
[<factorytech:ingot:6>, null, null]])
.addOutput(<foundry:refractoryspout>)
.addTool(<ore:artisansHammer>, 20)
.setMaximumTier(1)
.create();