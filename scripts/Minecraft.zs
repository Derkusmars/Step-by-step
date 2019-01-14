import mods.artisanworktables.builder.RecipeBuilder;

#Chest [Minecraft]
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<ore:plankWood>, null, <ore:plankWood>],
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.addOutput(<minecraft:chest>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

#Flint Shears
recipes.remove(<primal:flint_shears>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_point>, null],
[<primal:flint_point>, <ore:cordageGeneral>, null], 
[null, null, null]])
.addOutput(<primal:flint_shears>)
.create();

#Bed
recipes.remove(<minecraft:bed:*>);
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet>, <minecraft:carpet>, <minecraft:carpet>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:1>, <minecraft:carpet:1>, <minecraft:carpet:1>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:1>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:2>, <minecraft:carpet:2>, <minecraft:carpet:2>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:2>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:3>, <minecraft:carpet:3>, <minecraft:carpet:3>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:3>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:4>, <minecraft:carpet:4>, <minecraft:carpet:4>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:4>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:5>, <minecraft:carpet:5>, <minecraft:carpet:5>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:5>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:6>, <minecraft:carpet:6>, <minecraft:carpet:6>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:6>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:7>, <minecraft:carpet:7>, <minecraft:carpet:7>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:7>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:8>, <minecraft:carpet:8>, <minecraft:carpet:8>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:8>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:9>, <minecraft:carpet:9>, <minecraft:carpet:9>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:9>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:10>, <minecraft:carpet:10>, <minecraft:carpet:10>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:10>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:11>, <minecraft:carpet:11>, <minecraft:carpet:11>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:11>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:12>, <minecraft:carpet:12>, <minecraft:carpet:12>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:12>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:13>, <minecraft:carpet:13>, <minecraft:carpet:13>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:13>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:14>, <minecraft:carpet:14>, <minecraft:carpet:14>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:14>)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:carpet:15>, <minecraft:carpet:15>, <minecraft:carpet:15>],
[<primal:thatch>, <primal:thatch>, <primal:thatch>], 
[<primal:logs_stripped:*>, <ore:slatWood>, <primal:logs_stripped:*>]])
.addTool(<ore:artisansHandsaw>, 50)
.addOutput(<minecraft:bed:15>)
.create();

#Carpet
recipes.remove(<minecraft:carpet:*>);
RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool>])
.addOutput(<minecraft:carpet>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:1>])
.addOutput(<minecraft:carpet:1>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:2>])
.addOutput(<minecraft:carpet:2>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:3>])
.addOutput(<minecraft:carpet:3>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:4>])
.addOutput(<minecraft:carpet:4>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:5>])
.addOutput(<minecraft:carpet:5>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:6>])
.addOutput(<minecraft:carpet:6>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:7>])
.addOutput(<minecraft:carpet:7>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:8>])
.addOutput(<minecraft:carpet:8>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:9>])
.addOutput(<minecraft:carpet:9>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:10>])
.addOutput(<minecraft:carpet:10>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:11>])
.addOutput(<minecraft:carpet:11>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:12>])
.addOutput(<minecraft:carpet:12>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:13>])
.addOutput(<minecraft:carpet:13>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:14>])
.addOutput(<minecraft:carpet:14>)
.addTool(<ore:artisansRazor>, 10)
.create();

RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:15>])
.addOutput(<minecraft:carpet:15>)
.addTool(<ore:artisansRazor>, 10)
.create();

#Torch
RecipeBuilder.get("basic")
.setShaped([
[null, <ore:coal>, null],
[null, <ore:cordageGeneral>, null], 
[null, <minecraft:stick>, null]])
.addOutput(<minecraft:torch> * 4)
.create();

RecipeBuilder.get("basic")
.setShaped([
[null, <primal:charcoal_fair>, null],
[null, <ore:cordagePlant>, null], 
[null, <minecraft:stick>, null]])
.addOutput(<minecraft:torch> * 4)
.create();

RecipeBuilder.get("basic")
.setShaped([
[null, <primal:charcoal_good>, null],
[null, <ore:cordagePlant>, null], 
[null, <minecraft:stick>, null]])
.addOutput(<minecraft:torch> * 4)
.create();

RecipeBuilder.get("basic")
.setShaped([
[null, <primal:charcoal_high>, null],
[null, <ore:cordagePlant>, null], 
[null, <minecraft:stick>, null]])
.addOutput(<minecraft:torch> * 4)
.create();

#Stone Slab
RecipeBuilder.get("basic")
.setShapeless([<minecraft:stone>])
.addOutput(<minecraft:stone_slab>)
.addTool(<ore:artisansHandsaw>, 10)
.create();
