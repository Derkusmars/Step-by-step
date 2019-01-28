import mods.artisanworktables.builder.RecipeBuilder;

//Unfired Porcelain [Bonemeal]
RecipeBuilder.get("potter")
.setShapeless([<minecraft:clay_ball>,<minecraft:dye:15>])
.addOutput(<ceramics:unfired_clay:4>)
.create();

//Unfired Porcelain [Quartz]
RecipeBuilder.get("potter")
.setShapeless([<minecraft:clay_ball>,<minecraft:clay_ball>,<minecraft:quartz>])
.addOutput(<ceramics:unfired_clay:4> *2)
.create();

//Porcelain Bricks Slab
RecipeBuilder.get("carpenter")
.setShapeless([<ceramics:clay_hard>])
.addOutput(<ceramics:clay_slab>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Porcelain Bricks
RecipeBuilder.get("potter")
.setShaped([
[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>], 
[<ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]])
.addOutput(<ceramics:clay_hard>)
.addTool(<ore:artisansTrowel>, 10)
.create();

//Porcelain Brick in Sariras
mods.primal.Smelter.addRecipe(
"hardened_clay",
6,
[<ceramics:unfired_clay:4>],
[<ceramics:unfired_clay:5>]
);