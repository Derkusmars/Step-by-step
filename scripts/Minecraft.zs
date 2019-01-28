import mods.artisanworktables.builder.RecipeBuilder;

//Chest
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<ore:plankWood>, <primal:flint_knapp>, <ore:plankWood>],
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.addOutput(<minecraft:chest>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Flint Shears
recipes.remove(<primal:flint_shears>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_point>, null],
[<primal:flint_point>, <ore:cordageGeneral>, null], 
[null, null, null]])
.addOutput(<primal:flint_shears>)
.create();

//Bed
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

//Carpet
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

//Torch
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
.addOutput(<minecraft:torch> * 5)
.create();

RecipeBuilder.get("basic")
.setShaped([
[null, <primal:charcoal_high>, null],
[null, <ore:cordagePlant>, null], 
[null, <minecraft:stick>, null]])
.addOutput(<minecraft:torch> * 6)
.create();

//Stone Slab
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stone>])
.addOutput(<minecraft:stone_slab>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Bonemeal
RecipeBuilder.get("farmer")
.setShapeless([<minecraft:bone>])
.addOutput(<minecraft:dye:15> *3)
.addTool(<ore:artisansMortar>, 10)
.create();

recipes.addShapeless(<minecraft:dye:15> * 3, [<ore:artisansMortar>.transformDamage(10), <minecraft:bone>]);

//Lead
RecipeBuilder.get("tailor")
.setShaped([
[<primal:leather_strip>, <primal:leather_strip>, null],
[<primal:leather_strip>, <primal:tannin_ground>, null], 
[null, null, <primal:leather_strip>]])
.addOutput(<minecraft:lead>)
.create();

//Log to Planks
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log>])
.addOutput(<minecraft:planks> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log:1>])
.addOutput(<minecraft:planks:1> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log:2>])
.addOutput(<minecraft:planks:2> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log:3>])
.addOutput(<minecraft:planks:3> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log2>])
.addOutput(<minecraft:planks:4> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:log2:1>])
.addOutput(<minecraft:planks:5> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Planks to Slabs
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks>])
.addOutput(<minecraft:wooden_slab> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks:1>])
.addOutput(<minecraft:wooden_slab:1> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks:2>])
.addOutput(<minecraft:wooden_slab:2> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks:3>])
.addOutput(<minecraft:wooden_slab:3> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks:4>])
.addOutput(<minecraft:wooden_slab:4> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:planks:5>])
.addOutput(<minecraft:wooden_slab:5> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Sticks [Minecraft]
RecipeBuilder.get("carpenter")
.setShapeless([<ore:plankWood>])
.addOutput(<minecraft:stick> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//String
RecipeBuilder.get("tailor")
.setShapeless([<minecraft:wool:*>])
.addOutput(<minecraft:string> * 3)
.addTool(<ore:artisansShears>, 10)
.create();

//Glass Pane
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:glass>])
.addOutput(<minecraft:glass_pane> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Paper
RecipeBuilder.get("farmer")
.setShaped([
[null, null, null],
[<minecraft:reeds>, <minecraft:reeds>, <minecraft:reeds>], 
[null, null, null]])
.addOutput(<minecraft:paper> * 2)
.addTool(<ore:artisansCutters>, 10)
.create();

//Stonebrick
RecipeBuilder.get("designer")
.setShapeless([<minecraft:stone>])
.addOutput(<minecraft:stonebrick>)
.setMaximumTier(2)
.addTool(<ore:artisansChisel>, 10)
.create();

//Bricks
RecipeBuilder.get("potter")
.setShaped([
[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>],
[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>], 
[<minecraft:brick>, <minecraft:brick>, <minecraft:brick>]])
.addOutput(<minecraft:brick_block>)
.addTool(<ore:artisansTrowel>, 10)
.create();

//String
RecipeBuilder.get("tailor")
.setShaped([
[<harvestcraft:cottonitem>, <harvestcraft:cottonitem>, <harvestcraft:cottonitem>],
[<harvestcraft:cottonitem>, <harvestcraft:cottonitem>, <harvestcraft:cottonitem>], 
[<harvestcraft:cottonitem>, <harvestcraft:cottonitem>, <harvestcraft:cottonitem>]])
.addOutput(<minecraft:string> * 2)
.addTool(<ore:artisansRazor>, 10)
.create();

//Leather
RecipeBuilder.get("tailor")
.setShaped([
[<terraqueous:item_main:100>, <terraqueous:item_main:100>, <terraqueous:item_main:100>],
[<terraqueous:item_main:100>, <terraqueous:item_main:100>, <terraqueous:item_main:100>], 
[<terraqueous:item_main:100>, <terraqueous:item_main:100>, <terraqueous:item_main:100>]])
.addOutput(<minecraft:leather>)
.addTool(<ore:artisansNeedle>, 10)
.create();

//Bow
RecipeBuilder.get("carpenter")
.setShaped([
[null, <minecraft:stick>, <primal:silk_cordage>],
[<minecraft:stick>, null, <primal:silk_cordage>], 
[null, <minecraft:stick>, <primal:silk_cordage>]])
.addOutput(<minecraft:bow>)
.addTool(<ore:artisansRazor>, 50)
.create();