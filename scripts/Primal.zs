import mods.artisanworktables.builder.RecipeBuilder;

#Sariras Brick
mods.primal.Smelter.addRecipe(
"brick",
6,
[<minecraft:clay_ball>],
[<minecraft:brick>]
);

#Remove Brick From Hibachi
mods.primal.Hibachi.removeRecipe("primal:vanilla_brick");

#Remove Sticks from Caldron
mods.primal.Cauldron.removeRecipe("primal:stick_from_corypha");
mods.primal.Cauldron.removeRecipe("primal:stick_from_lacquer");

#Flint Workblade
recipes.remove(<primal:flint_workblade>);
recipes.addShapeless(<primal:flint_workblade>, [<primal:flint_knapp>,<ore:cordagePlant>,<primal:flint_knapp>,<minecraft:stick>]);

#Wood Pin
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stick>])
.addOutput(<primal:wood_pin>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

#Drying Rack
recipes.remove(<primal:drying_rack:*>);
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_oak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_spruce>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:1>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_birch>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:2>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_jungle>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:3>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_acacia>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:4>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_bigoak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:5>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

#Flint Pickaxe
recipes.remove(<primal:flint_pickaxe>);
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordagePlant>, <primal:flint_knapp>],
[<primal:flint_knapp>, <minecraft:stick>, <primal:flint_knapp>],
[null, <minecraft:stick>, null]])
.addOutput(<primal:flint_pickaxe>)
.create();

#Flint Shovel
recipes.remove(<primal:flint_shovel>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <ore:cordagePlant>, <primal:flint_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<primal:flint_shovel>)
.create();

#Plant Fiber Pulp
recipes.remove(<primal:plant_fiber_pulp>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, null],
[null, <primal:plant_tinder>, null],
[null, <ore:artisansMortar>, null]])
.addOutput(<primal:plant_fiber_pulp>)
.create();

#Scribe's Worktable
recipes.remove(<artisanworktables:worktable:8>);
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>],
[<primal:plant_papyrus>, <ore:logWood>, <primal:plant_papyrus>],
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:8>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

#Farmer's Worktable
recipes.remove(<artisanworktables:worktable:10>);
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>],
[<minecraft:tallgrass:1>, <minecraft:dirt>, <minecraft:tallgrass:1>],
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:10>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

#Farmer's Worktable
recipes.remove(<primal:thatching_wet>);
RecipeBuilder.get("farmer")
.setShaped([
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>]])
.addOutput(<primal:thatching_wet> * 4)
.addTool(<ore:artisansCutters>, 25)
.create();

#Adobe Brick Mix
RecipeBuilder.get("farmer")
.setShapeless([<primal:mud_clump>,<primal:thatching_dry>])
.addOutput(<primal:adobe_clump>)
.create();

#Brick Mold [Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped>])
.addOutput(<primal:brick_mold>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:1>])
.addOutput(<primal:brick_mold:1>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:2>])
.addOutput(<primal:brick_mold:2>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:3>])
.addOutput(<primal:brick_mold:3>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:4>])
.addOutput(<primal:brick_mold:4>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Dark Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:5>])
.addOutput(<primal:brick_mold:5>)
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Crude Flint Blade
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_point>, <primal:flint_knapp>],
[<primal:flint_point>, <primal:flint_knapp>, null],
[<minecraft:stick>, <ore:cordageGeneral>, null]])
.addOutput(<primal:sword_crude_flint>)
.create();

#Brick Mold [Acacia]
RecipeBuilder.get("basic")
.setShapeless([<primal:plant_fiber>,<primal:plant_fiber>,<primal:plant_fiber>])
.addOutput(<primal:plant_cordage>)
.addTool(<ore:artisansHandsaw>, 25)
.create();