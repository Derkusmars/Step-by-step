import mods.artisanworktables.builder.RecipeBuilder;

//Mesh
recipes.remove(<factorytech:machinepart:180>);
recipes.addShapeless(<factorytech:machinepart:180>, [<minecraft:stick>,<minecraft:stick>,<minecraft:stick>,<minecraft:stick>]);

//String Mesh
RecipeBuilder.get("basic")
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
.setMaximumTier(0)
.create();

//Disable Flint From Centrifuge
mods.factorytech.Centrifuge.removeRecipe(<minecraft:flint> *4, <minecraft:iron_nugget> *2, <minecraft:flint> *2, <factorytech:ore_dust:17> *2);

//Disable FT Nuggets From River Grate
mods.factorytech.rivergrate.removeRecipe(<factorytech:ore_dust:15>);
mods.factorytech.rivergrate.removeRecipe(<factorytech:ore_dust:16>);
mods.factorytech.rivergrate.removeRecipe(<factorytech:ore_dust:17>);

//Adding Nuggets To River Grate
mods.factorytech.rivergrate.addRecipe(<primal:nickel_nugget>, 0.2);
mods.factorytech.rivergrate.addRecipe(<minecraft:iron_nugget>, 0.2);
mods.factorytech.rivergrate.addRecipe(<primal:copper_nugget>, 0.2);