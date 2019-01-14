import mods.artisanworktables.builder.RecipeBuilder;

#Mesh
recipes.remove(<factorytech:machinepart:180>);
recipes.addShapeless(<factorytech:machinepart:180>, [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]);

#River Grade
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:plankWood>, null, <ore:plankWood>],
[<ore:plankWood>, <factorytech:machinepart:180>, <ore:plankWood>], 
[<ore:slabWood>, <ore:slabWood>, <ore:slabWood>]])
.addOutput(<factorytech:sluice>)
.addTool(<ore:artisansFramingHammer>, 50)
.create();