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
.addOutput(<primal:wood_pin> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

#Drying Rack [Oak]
recipes.remove(<primal:drying_rack:*>);
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_oak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack>.withTag({type: "oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();
 
#Drying Rack [Spruce] 
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_spruce>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:1>.withTag({type: "spruce"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

#Drying Rack [Birch]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_birch>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:2>.withTag({type: "birch"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

#Drying Rack [Jungle]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_jungle>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:3>.withTag({type: "jungle"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

#Drying Rack [Acacia]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_acacia>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:4>.withTag({type: "acacia"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

#Drying Rack [Dark Oak]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_bigoak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:5>.withTag({type: "dark_oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

#Flint Pickaxe [Primal]
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
[null, null, null]])
.addTool(<ore:artisansMortar>, 25)
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
.addOutput(<primal:brick_mold>.withTag({type: "oak"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:1>])
.addOutput(<primal:brick_mold>.withTag({type: "spruce"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:2>])
.addOutput(<primal:brick_mold>.withTag({type: "birch"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:3>])
.addOutput(<primal:brick_mold>.withTag({type: "jungle"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:4>])
.addOutput(<primal:brick_mold>.withTag({type: "acacia"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

#Brick Mold [Dark Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:5>])
.addOutput(<primal:brick_mold>.withTag({type: "dark_oak"}))
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

#Twine
RecipeBuilder.get("basic")
.setShapeless([<primal:plant_fiber>,<primal:plant_fiber>,<primal:plant_fiber>])
.addOutput(<primal:plant_cordage>)
.create();

#Abode Sariras
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>],
[<primal:adobe_brick_dry>, <primal:adobe_clump>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>]])
.addOutput(<primal:smelter:3>)
.create();

#Abode Sariras Lid
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_clump>, <primal:adobe_brick_dry>, <primal:adobe_clump>],
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>], 
[null, null, null]])
.addOutput(<primal:smelter_lid_adobe>)
.create();

#Log Stack [Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>],
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>], 
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>]])
.addOutput(<primal:logs_stacked>)
.create();

#Log Stack [Spruce]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>],
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>], 
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>]])
.addOutput(<primal:logs_stacked:1>)
.create();

#Log Stack [Birch]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>],
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>], 
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>]])
.addOutput(<primal:logs_stacked:2>)
.create();

#Log Stack [Jungle]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>],
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>], 
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>]])
.addOutput(<primal:logs_stacked:3>)
.create();

#Log Stack [Acacia]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>],
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>], 
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>]])
.addOutput(<primal:logs_stacked:4>)
.create();

#Log Stack [Dark Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>],
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>], 
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>]])
.addOutput(<primal:logs_stacked:5>)
.create();

#Flint Hoe
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, null], 
[null, null, null]])
.addOutput(<primal:flint_hoe>)
.create();