import mods.artisanworktables.builder.RecipeBuilder;

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
