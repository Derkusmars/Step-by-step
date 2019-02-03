import mods.artisanworktables.builder.RecipeBuilder;

//Brick in Sariras
mods.primal.Smelter.addRecipe(
"brick",
6,
[<minecraft:clay_ball>, <primal:charcoal_mote>],
[<minecraft:brick>]
);

//Remove Brick From Hibachi
mods.primal.Hibachi.removeRecipe("primal:vanilla_brick");

//Remove Terracotta From Hibachi
mods.primal.Hibachi.removeRecipe("primal:vanilla_clay_block");

//Remove Sticks from Caldron
mods.primal.Cauldron.removeRecipe("primal:stick_from_corypha");
mods.primal.Cauldron.removeRecipe("primal:stick_from_lacquer");

//Flint Workblade
recipes.addShapeless(<primal:flint_workblade>, [<primal:flint_knapp>,<ore:cordagePlant>,<primal:flint_knapp>,<minecraft:stick>]);

//Wood Pin
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stick>])
.addOutput(<primal:wood_pin> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Drying Rack [Oak]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_oak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack>.withTag({type: "oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();
 
//Drying Rack [Spruce] 
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_spruce>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:1>.withTag({type: "spruce"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();

//Drying Rack [Birch]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_birch>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:2>.withTag({type: "birch"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();

//Drying Rack [Jungle]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_jungle>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:3>.withTag({type: "jungle"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();

//Drying Rack [Acacia]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_acacia>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:4>.withTag({type: "acacia"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();

//Drying Rack [Dark Oak]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_bigoak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:5>.withTag({type: "dark_oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.setMaximumTier(1)
.create();

//Flint Pickaxe [Primal]
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordagePlant>, <primal:flint_knapp>],
[<primal:flint_knapp>, <minecraft:stick>, <primal:flint_knapp>],
[null, <minecraft:stick>, null]])
.addOutput(<primal:flint_pickaxe>)
.setMaximumTier(1)
.create();

//Flint Shovel
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <ore:cordagePlant>, <primal:flint_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<primal:flint_shovel>)
.setMaximumTier(1)
.create();

//Plant Fiber Pulp
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, null],
[null, <primal:plant_tinder>, null],
[null, null, null]])
.addTool(<ore:artisansMortar>, 25)
.addOutput(<primal:plant_fiber_pulp>)
.setMaximumTier(1)
.create();

///Plant Fiber Pulp [Inventory]
recipes.addShapeless(<primal:plant_fiber_pulp>, [<ore:artisansMortar>.transformDamage(25), <primal:flint_knapp>,
<primal:plant_tinder>]);

//Scribe's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>],
[<primal:plant_papyrus>, <ore:logWood>, <primal:plant_papyrus>],
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:8>)
.addTool(<ore:artisansFramingHammer>, 75)
.setMaximumTier(1)
.create();

//Farmer's Worktable
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>],
[<minecraft:tallgrass:1>, <minecraft:dirt>, <minecraft:tallgrass:1>],
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:10>)
.addTool(<ore:artisansFramingHammer>, 75)
.setMaximumTier(1)
.create();

//Farmer's Worktable
RecipeBuilder.get("farmer")
.setShaped([
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>]])
.addOutput(<primal:thatching_wet> * 4)
.addTool(<ore:artisansCutters>, 25)
.setMaximumTier(1)
.create();

//Adobe Brick Mix
RecipeBuilder.get("farmer")
.setShapeless([<primal:mud_clump>,<primal:thatching_dry>])
.addOutput(<primal:adobe_clump>)
.addTool(<ore:artisansMortar>, 20)
.setMaximumTier(1)
.create();

recipes.addShapeless(<primal:adobe_clump>, [<primal:mud_clump>, <primal:thatching_dry>, <ore:artisansMortar>.transformDamage(20)]);

//Brick Mold [Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped>])
.addOutput(<primal:brick_mold>.withTag({type: "oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Brick Mold [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:1>])
.addOutput(<primal:brick_mold>.withTag({type: "spruce"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Brick Mold [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:2>])
.addOutput(<primal:brick_mold>.withTag({type: "birch"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Brick Mold [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:3>])
.addOutput(<primal:brick_mold>.withTag({type: "jungle"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Brick Mold [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:4>])
.addOutput(<primal:brick_mold>.withTag({type: "acacia"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Brick Mold [Dark Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:5>])
.addOutput(<primal:brick_mold>.withTag({type: "dark_oak"}))
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();

//Crude Flint Blade
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_point>, <primal:flint_knapp>],
[<primal:flint_point>, <primal:flint_knapp>, null],
[<minecraft:stick>, <ore:cordageGeneral>, null]])
.addOutput(<primal:sword_crude_flint>)
.setMaximumTier(1)
.create();

//Twine
RecipeBuilder.get("basic")
.setShapeless([<primal:plant_fiber>,<primal:plant_fiber>,<primal:plant_fiber>])
.addOutput(<primal:plant_cordage>)
.setMaximumTier(1)
.create();

//Abode Sariras
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>],
[<primal:adobe_brick_dry>, <primal:adobe_clump>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>]])
.addOutput(<primal:smelter:3>.withTag({type: "adobe"}))
.setMaximumTier(1)
.create();

//Abode Sariras Lid
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_clump>, <primal:adobe_brick_dry>, <primal:adobe_clump>],
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>], 
[null, null, null]])
.addOutput(<primal:smelter_lid_adobe>)
.setMaximumTier(1)
.create();

//Log Stack [Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>],
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>], 
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>]])
.addOutput(<primal:logs_stacked>)
.setMaximumTier(1)
.create();

//Log Stack [Spruce]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>],
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>], 
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>]])
.addOutput(<primal:logs_stacked:1>)
.setMaximumTier(1)
.create();

//Log Stack [Birch]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>],
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>], 
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>]])
.addOutput(<primal:logs_stacked:2>)
.setMaximumTier(1)
.create();

//Log Stack [Jungle]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>],
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>], 
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>]])
.addOutput(<primal:logs_stacked:3>)
.setMaximumTier(1)
.create();

//Log Stack [Acacia]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>],
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>], 
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>]])
.addOutput(<primal:logs_stacked:4>)
.setMaximumTier(1)
.create();

//Log Stack [Dark Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>],
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>], 
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>]])
.addOutput(<primal:logs_stacked:5>)
.setMaximumTier(1)
.create();

//Flint Hoe
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, null], 
[null, null, null]])
.addOutput(<primal:flint_hoe>)
.setMaximumTier(1)
.create();

//Thatch
RecipeBuilder.get("farmer")
.setShaped([
[<primal:thatching_dry>, <primal:thatching_dry>, <primal:thatching_dry>],
[<primal:thatching_dry>, <ore:fiberPlant>, <primal:thatching_dry>], 
[<primal:thatching_dry>, <primal:thatching_dry>, <primal:thatching_dry>]])
.addOutput(<primal:thatch>)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Clay Bucket
mods.primal.Hibachi.removeRecipe("primal:bucket_clay");
mods.primal.DryingRack.removeRecipe("primal:bucket_clay");
RecipeBuilder.get("potter")
.setShaped([
[null, null, null],
[<minecraft:clay_ball>, null, <minecraft:clay_ball>], 
[null, <minecraft:clay_ball>, null]])
.addOutput(<primal:bucket_clay_soft>)
.addTool(<ore:artisansTrowel>, 25)
.setMaximumTier(1)
.create();

//Terra Bucket
mods.primal.Hibachi.removeRecipe("primal:bucket_terra");
mods.primal.DryingRack.removeRecipe("primal:bucket_terra");
RecipeBuilder.get("potter")
.setShaped([
[null, null, null],
[<primal:terra_clump>, null, <primal:terra_clump>], 
[null, <primal:terra_clump>, null]])
.addOutput(<primal:bucket_terra_soft>)
.addTool(<ore:artisansTrowel>, 25)
.setMaximumTier(1)
.create();

//Cinic Bucket
mods.primal.Hibachi.removeRecipe("primal:bucket_cinis");
mods.primal.DryingRack.removeRecipe("primal:bucket_cinis");
RecipeBuilder.get("potter")
.setShaped([
[null, null, null],
[<primal:cinis_clump>, null, <primal:cinis_clump>], 
[null, <primal:cinis_clump>, null]])
.addOutput(<primal:bucket_cinis_soft>)
.addTool(<ore:artisansTrowel>, 25)
.setMaximumTier(1)
.create();

//Stone in Sariras
mods.primal.Smelter.removeRecipe("stone");
mods.primal.Smelter.addRecipe(
"Cob_to_Stone",
2,
[<minecraft:cobblestone>, <primal:charcoal_mote>],
[<minecraft:stone>]
);

//Fire Bow
RecipeBuilder.get("basic")
.setShaped([
[null, <minecraft:stick>, null],
[<minecraft:stick>, <primal:plant_cordage>, null], 
[null, null, null]])
.addOutput(<primal:fire_bow>)
.setMaximumTier(1)
.create();

//Fire Bow [Inventory Crafting]
recipes.addShapeless(<primal:fire_bow>, [<minecraft:stick>, <minecraft:stick>, <primal:plant_cordage>,]);

//Stone Gallagher
RecipeBuilder.get("basic")
.setShaped([
[<contenttweaker:compressed_cob>, <ore:cordagePlant>, <contenttweaker:compressed_cob>],
[<contenttweaker:compressed_cob>, <minecraft:stick>, <contenttweaker:compressed_cob>], 
[null, <minecraft:stick>, null]])
.addOutput(<primal:stone_gallagher>)
.setMaximumTier(1)
.create();

//Iron Gallagher
RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:32>, <ore:cordagePlant>, <thermalfoundation:material:32>],
[<thermalfoundation:material:32>, <minecraft:stick>, <thermalfoundation:material:32>], 
[null, <minecraft:stick>, null]])
.addOutput(<primal:iron_gallagher>)
.setMaximumTier(1)
.create();

//Thin Slab [Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab>])
.addOutput(<primal:thin_slab_oak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Thin Slab [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:1>])
.addOutput(<primal:thin_slab_spruce> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Thin Slab [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:2>])
.addOutput(<primal:thin_slab_birch> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Thin Slab [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:3>])
.addOutput(<primal:thin_slab_jungle> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Thin Slab [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:4>])
.addOutput(<primal:thin_slab_acacia> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Thin Slab [Big Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:5>])
.addOutput(<primal:thin_slab_bigoak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_oak>])
.addOutput(<primal:slat_oak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_spruce>])
.addOutput(<primal:slat_spruce> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_jungle>])
.addOutput(<primal:slat_jungle> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Dark Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_bigoak>])
.addOutput(<primal:slat_bigoak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_acacia>])
.addOutput(<primal:slat_acacia> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Slat [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_birch>])
.addOutput(<primal:slat_birch> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.setMaximumTier(1)
.create();

//Stone Basin
RecipeBuilder.get("basic")
.setShaped([
[null, null, null],
[<minecraft:stone:*>, null, <minecraft:stone:*>], 
[null, <minecraft:stone:*>, null]])
.addOutput(<primal:stone_basin>)
.setMaximumTier(1)
.create();

//Resin [Left]
RecipeBuilder.get("farmer")
.setShaped([
[<ore:rock>, null, null],
[<ore:barkWood>, null, null], 
[<primal:stone_basin>.reuse(), null, null]])
.addOutput(<primal:tannin_ground>)
.setMaximumTier(1)
.create();

//Resin [Center]
RecipeBuilder.get("farmer")
.setShaped([
[null, <ore:rock>, null],
[null, <ore:barkWood>, null], 
[null, <primal:stone_basin>.reuse(), null]])
.addOutput(<primal:tannin_ground>)
.setMaximumTier(1)
.create();

//Resin [Right]
RecipeBuilder.get("farmer")
.setShaped([
[null, null, <ore:rock>],
[null, null, <ore:barkWood>], 
[null, null, <primal:stone_basin>.reuse()]])
.addOutput(<primal:tannin_ground>)
.setMaximumTier(1)
.create();

//Clay Bucket in Sariras
mods.primal.Smelter.addRecipe(
"clay_bucket",
6,
[<primal:bucket_clay_soft>, <ore:charcoal>],
[<primal:bucket_clay>]
);

//Terra Bucket in Sariras
mods.primal.Smelter.addRecipe(
"terra_bucket",
6,
[<primal:bucket_terra_soft>, <ore:charcoal>],
[<primal:bucket_terra>]
);

//Cinis Bucket in Sariras
mods.primal.Smelter.addRecipe(
"cinis_bucket",
6,
[<primal:bucket_cinis_soft>, <ore:charcoal>],
[<primal:bucket_cinis>]
);

//Disable Flint Flaking
mods.primal.Flake.removeRecipe("flint");

//Disable Terracotta from Drying
mods.primal.DryingRack.removeRecipe("primal:block_clay");

//Terracotta in Sariras
mods.primal.Smelter.addRecipe(
"clay_to_ter",
6,
[<minecraft:clay>, <ore:charcoal>],
[<minecraft:hardened_clay>]
);

//Yew Log to Planks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs:1>])
.addOutput(<primal:planks:1> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Yew Planks to Sticks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:planks:1>])
.addOutput(<primal:yew_stick> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Ironwood Log to Planks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs>])
.addOutput(<primal:planks> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Ironwood Planks to Sticks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:planks>])
.addOutput(<primal:ironwood_stick> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

//Yew Bow
RecipeBuilder.get("carpenter")
.setShaped([
[null, <primal:yew_stick>, <primal:silk_cordage>],
[<primal:yew_stick>, null, <primal:silk_cordage>], 
[null, <primal:yew_stick>, <primal:silk_cordage>]])
.addOutput(<primal:yew_bow>)
.addTool(<ore:artisansRazor>, 50)
.setMaximumTier(1)
.create();

//Ironwood Bow
RecipeBuilder.get("carpenter")
.setShaped([
[null, <primal:ironwood_stick>, <primal:silk_cordage>],
[<primal:ironwood_stick>, null, <primal:silk_cordage>], 
[null, <primal:ironwood_stick>, <primal:silk_cordage>]])
.addOutput(<primal:ironwood_bow>)
.addTool(<ore:artisansRazor>, 50)
.setMaximumTier(1)
.create();

//Remove all Sariras recipes
var removeRecipes as string[] = [
	"primal:obsidian_shard",
	"primal:ore_sand_aluminum",
	"primal:charcoal_stripped",
	"primal:netherrack_to_brick",
	"primal:ore_sand_zinc",
	"primal:wolf_ash",
	"primal:dust_constantan",
	"primal:ore_good_iron",
	"primal:alloy_constantan",
	"primal:bog_iron_sand_good",
	"primal:plate_lead",
	"primal:plate_gold",
	"primal:sand",
	"primal:ore_good_silver",
	"primal:ore_fair_iron",
	"primal:dust_platinum",
	"primal:diamond_plate",
	"primal:plate_wootz",
	"primal:dust_lead",
	"primal:bog_iron_lime_fair",
	"primal:dust_gold",
	"primal:ore_fair_copper",
	"primal:satetsu_fair_glass",
	"primal:ore_good_copper",
	"primal:obsidian_glass",
	"primal:dust_nickel",
	"primal:ore_sand_platinum",
	"primal:ore_sand_silver",
	"primal:plate_vanadium",
	"primal:satetsu_high_glass",
	"primal:dust_brass",
	"primal:nether_growth",
	"primal:bucket_to_ingot",
	"primal:ore_sand_lead",
	"primal:plate_nickel",
	"primal:ore_sand_gold",
	"primal:ore_good_tin",
	"primal:plate_brass",
	"primal:alloy_electrum",
	"primal:dust_tin",
	"primal:door_to_ingot",
	"primal:plate_tamahagane",
	"primal:charcoal_log",
	"primal:ore_good_aluminum",
	"primal:ore_sand_copper",
	"primal:soul_glass_conversion",
	"primal:pure_carbon",
	"primal:bog_iron_sand_high",
	"primal:ore_fair_aluminum",
	"primal:ore_fair_tin",
	"primal:plate_iron",
	"primal:plate_steel",
	"primal:soul_sand",
	"primal:dust_copper",
	"primal:ore_fair_nickel",
	"primal:soul_residue",
	"primal:bog_iron_lime_good",
	"primal:dust_silver",
	"primal:dust_steel",
	"primal:dust_bronze",
	"primal:ore_sand_nickel",
	"primal:alloy_bronze",
	"primal:plate_platinum",
	"primal:ore_good_zinc",
	"primal:ore_good_nickel",
	"primal:obsidian_plate",
	"primal:plate_electrum",
	"primal:dust_electrum",
	"primal:dust_iron",
	"primal:plate_tin",
	"primal:ore_sand_tin",
	"primal:satetsu_good_glass",
	"primal:eggs",
	"primal:ironwood_ash",
	"primal:bog_iron_lime_high",
	"primal:obsidian_glass_smooth",
	"primal:ore_fair_zinc",
	"primal:sinuous_spores",
	"primal:vitrified_quartz",
	"primal:ore_fair_silver",
	"primal:plate_constantan",
	"primal:ore_fair_gold",
	"primal:satetsu_poor_glass",
	"primal:ore_good_platinum",
	"primal:plate_zinc",
	"primal:yew_ash",
	"primal:dust_zinc",
	"primal:ore_fair_lead",
	"primal:fermented_jungle",
	"primal:soul_glass_to_glass",
	"primal:plate_silver",
	"primal:zinc_lime_good",
	"primal:ore_good_lead",
	"primal:alloy_brass",
	"primal:alloy_shibuichi",
	"primal:ore_good_gold",
	"primal:ore_sand_iron",
	"primal:plate_shibuichi",
	"primal:skull",
	"primal:diamond_from_plate",
	"primal:bark",
	"primal:dust_aluminum",
	"primal:magnetite_ore",
	"primal:plate_bronze",
	"primal:plate_adamant",
	"primal:ore_fair_platinum",
	"primal:satetsu_pure_glass",
	"primal:iron",
	"primal:zinc_lime_high",
	"primal:stone",
	"primal:bone_ash",
	"primal:plate_aluminum",
	"primal:bog_iron_sand_fair",
	"netherstone_to_brick",
	"primal:plate_copper"
];

for recipeRegex in removeRecipes {
	mods.primal.Smelter.removeRecipe(recipeRegex);
}
	
//Glass in Sariras
mods.primal.Smelter.addRecipe(
"sand_to_glass",
6,
[<minecraft:sand>, <primal:charcoal_mote>],
[<minecraft:glass>]
);		

//Disable all useless Gallagher Recipes
var removeGalRecipes as string[] = [
	"primal:pumpkin_pieces_south",
	"primal:quartz_slab",
	"primal:ancient_ice",
	"primal:pumpkin_lit_pieces_south",
	"primal:quartz_block",
	"primal:stonebrick_cracked",
	"primal:magma",
	"primal:obsidian"
];

for recipeRegex in removeGalRecipes {
	mods.primal.Gallagher.removeRecipe(recipeRegex);
}

//Dust from Ore
mods.primal.Gallagher.addRecipe(
    "copper_dust", 
    <thermalfoundation:ore>, 
    null, 
    <thermalfoundation:material:64>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "tin_dust", 
    <thermalfoundation:ore:1>, 
    null, 
    <thermalfoundation:material:65>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "silver_dust", 
    <thermalfoundation:ore:2>, 
    null, 
    <thermalfoundation:material:66>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "lead_dust", 
    <thermalfoundation:ore:3>, 
    null, 
    <thermalfoundation:material:67>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "aluminum_dust", 
    <thermalfoundation:ore:4>, 
    null, 
    <thermalfoundation:material:68>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "nickel_dust", 
    <thermalfoundation:ore:5>, 
    null, 
    <thermalfoundation:material:69>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "iron_dust", 
    <minecraft:iron_ore>, 
    null, 
    <thermalfoundation:material>, 
    [1],
    null
);	

mods.primal.Gallagher.addRecipe(
    "gold_dust", 
    <minecraft:gold_ore>, 
    null, 
    <thermalfoundation:material:1>, 
    [1],
    null
);	

//Flaked Quartz
RecipeBuilder.get("farmer")
.setShapeless([<minecraft:sand>])
.addOutput(<primal:quartz_knapp>, 50)
.addOutput(<terraqueous:item_main:214>, 50)
.addTool(<ore:artisansSifter>, 25)
.setMaximumTier(1)
.create();

//Flaked Flint
RecipeBuilder.get("farmer")
.setShapeless([<minecraft:gravel>])
.addOutput(<primal:flint_knapp>, 75)
.addOutput(<terraqueous:item_main:215>, 25)
.addTool(<ore:artisansSifter>, 25)
.setMaximumTier(1)
.create();

//Iron River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"idust",
6,
[<thermalfoundation:material>, <thermalfoundation:material>, <ore:charcoal>],
[<factorytech:ingot:5>]
);

//Gold River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"gdust",
6,
[<thermalfoundation:material:1>, <thermalfoundation:material:1>, <ore:charcoal>],
[<contenttweaker:river_gold>]
);

//Copper River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"cdust",
6,
[<thermalfoundation:material:64>, <thermalfoundation:material:64>, <ore:charcoal>],
[<factorytech:ingot:6>]
);

//Tin River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"tdust",
6,
[<thermalfoundation:material:65>, <thermalfoundation:material:65>, <ore:charcoal>],
[<contenttweaker:river_tin>]
);

//Silver River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"sdust",
6,
[<thermalfoundation:material:66>, <thermalfoundation:material:66>, <ore:charcoal>],
[<contenttweaker:river_silver>]
);

//Lead River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"ldust",
6,
[<thermalfoundation:material:67>, <thermalfoundation:material:67>, <ore:charcoal>],
[<contenttweaker:river_lead>]
);

//Aluminum River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"adust",
6,
[<thermalfoundation:material:68>, <thermalfoundation:material:68>, <ore:charcoal>],
[<contenttweaker:river_aluminum>]
);

//Nickel River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"ndust",
6,
[<thermalfoundation:material:69>, <thermalfoundation:material:69>, <ore:charcoal>],
[<factorytech:ingot:7>]
);

//Aluminum River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"anugget",
6,
[<contenttweaker:nugget_aluminum_river> * 9, <ore:charcoal>],
[<contenttweaker:river_aluminum>]
);

//Tin River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"tnugget",
6,
[<contenttweaker:nugget_tin_river> * 9, <ore:charcoal>],
[<contenttweaker:river_tin>]
);

//Silver River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"snugget",
6,
[<contenttweaker:nugget_silver_river> * 9, <ore:charcoal>],
[<contenttweaker:river_silver>]
);

//Lead River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"lnugget",
6,
[<contenttweaker:nugget_lead_river> * 9, <ore:charcoal>],
[<contenttweaker:river_lead>]
);

//Iron River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"inugget",
6,
[<factorytech:ore_dust:15> * 9, <ore:charcoal>],
[<factorytech:ingot:5>]
);

//Gold River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"gnugget",
6,
[<contenttweaker:nugget_gold_river> * 9, <ore:charcoal>],
[<contenttweaker:river_gold>]
);

//Copper River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"cnugget",
6,
[<factorytech:ore_dust:16> * 9, <ore:charcoal>],
[<factorytech:ingot:6>]
);

//Nickel River Ingot in Sariras
mods.primal.Smelter.addRecipe(
"nnugget",
6,
[<factorytech:ore_dust:17> * 9, <ore:charcoal>],
[<factorytech:ingot:7>]
);

//Iron Strand
RecipeBuilder.get("mason")
.setShapeless([<minecraft:iron_nugget>])
.addOutput(<primal:iron_strand>)
.addTool(<artisanworktables:artisans_pliers_quartz>, 20)
.setMaximumTier(1)
.create();

//Leather Strip
RecipeBuilder.get("tailor")
.setShapeless([<ore:leather>])
.addOutput(<primal:leather_strip>)
.addTool(<ore:toolWorkBlade>, 20)
.setMaximumTier(1)
.create();

//Leather Cordage
RecipeBuilder.get("tailor")
.setShapeless([<primal:leather_strip>,<primal:leather_strip>,<primal:leather_strip>])
.addOutput(<primal:leather_cordage>)
.setMaximumTier(1)
.create();

//Iron Slats
RecipeBuilder.get("mason")
.setShapeless([<minecraft:iron_bars>])
.addOutput(<primal:slat_iron>)
.addTool(<artisanworktables:artisans_hammer_quartz>, 20)
.setMaximumTier(1)
.create();

//Adobe Brick
RecipeBuilder.get("mason")
.setShaped([
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>],
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>]])
.addOutput(<primal:adobe_brick>)
.addTool(<ore:artisansTrowel>, 10)
.setMaximumTier(1)
.create();

//Remove all Sariras recipes
var removeHibRecipes as string[] = [
"primal:adobe_brick",
"primal:mud_brick",
"primal:bucket_cinis",
"primal:cookingforblockheads_book_vanilla",
"primal:vanilla_clay_block",
"primal:foundry_inferno_clay",
"primal:vanilla_brick",
"primal:terra_brick",
"primal:cookingforblockheads_book_recipe",
"primal:bucket_terra",
"primal:cinis_brick",
"primal:bucket_clay",
"primal:vanilla_chorus_fruit"
];

for recipeRegex in removeHibRecipes {
	mods.primal.Hibachi.removeRecipe(recipeRegex);
}