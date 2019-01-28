import mods.artisanworktables.builder.RecipeBuilder;

//Brick in Sariras
mods.primal.Smelter.addRecipe(
"brick",
6,
[<minecraft:clay_ball>],
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
recipes.remove(<primal:flint_workblade>);
recipes.addShapeless(<primal:flint_workblade>, [<primal:flint_knapp>,<ore:cordagePlant>,<primal:flint_knapp>,<minecraft:stick>]);

//Wood Pin
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stick>])
.addOutput(<primal:wood_pin> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Drying Rack [Oak]
recipes.remove(<primal:drying_rack:*>);
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_oak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack>.withTag({type: "oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();
 
//Drying Rack [Spruce] 
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_spruce>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:1>.withTag({type: "spruce"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Drying Rack [Birch]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_birch>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:2>.withTag({type: "birch"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Drying Rack [Jungle]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_jungle>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:3>.withTag({type: "jungle"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Drying Rack [Acacia]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_acacia>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:4>.withTag({type: "acacia"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Drying Rack [Dark Oak]
RecipeBuilder.get("carpenter")
.setShaped([
[<minecraft:stick>, <primal:slat_bigoak>, <minecraft:stick>],
[<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<primal:drying_rack:5>.withTag({type: "dark_oak"}))
.addTool(<ore:artisansFramingHammer>, 50)
.create();

//Flint Pickaxe [Primal]
recipes.remove(<primal:flint_pickaxe>);
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordagePlant>, <primal:flint_knapp>],
[<primal:flint_knapp>, <minecraft:stick>, <primal:flint_knapp>],
[null, <minecraft:stick>, null]])
.addOutput(<primal:flint_pickaxe>)
.create();

//Flint Shovel
recipes.remove(<primal:flint_shovel>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <ore:cordagePlant>, <primal:flint_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<primal:flint_shovel>)
.create();

//Plant Fiber Pulp
recipes.remove(<primal:plant_fiber_pulp>);
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, null],
[null, <primal:plant_tinder>, null],
[null, null, null]])
.addTool(<ore:artisansMortar>, 25)
.addOutput(<primal:plant_fiber_pulp>)
.create();

//Scribe's Worktable
recipes.remove(<artisanworktables:worktable:8>);
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>],
[<primal:plant_papyrus>, <ore:logWood>, <primal:plant_papyrus>],
[<minecraft:stick>, <primal:plant_papyrus>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:8>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

//Farmer's Worktable
recipes.remove(<artisanworktables:worktable:10>);
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>],
[<minecraft:tallgrass:1>, <minecraft:dirt>, <minecraft:tallgrass:1>],
[<minecraft:stick>, <minecraft:tallgrass:1>, <minecraft:stick>]])
.addOutput(<artisanworktables:worktable:10>)
.addTool(<ore:artisansFramingHammer>, 75)
.create();

//Farmer's Worktable
recipes.remove(<primal:thatching_wet>);
RecipeBuilder.get("farmer")
.setShaped([
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>],
[<minecraft:tallgrass:1>, <minecraft:tallgrass:1>, <minecraft:tallgrass:1>]])
.addOutput(<primal:thatching_wet> * 4)
.addTool(<ore:artisansCutters>, 25)
.create();

//Adobe Brick Mix
RecipeBuilder.get("farmer")
.setShapeless([<primal:mud_clump>,<primal:thatching_dry>])
.addOutput(<primal:adobe_clump>)
.create();

//Brick Mold [Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped>])
.addOutput(<primal:brick_mold>.withTag({type: "oak"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Brick Mold [Spruce]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:1>])
.addOutput(<primal:brick_mold>.withTag({type: "spruce"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Brick Mold [Birch]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:2>])
.addOutput(<primal:brick_mold>.withTag({type: "birch"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Brick Mold [Jungle]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:3>])
.addOutput(<primal:brick_mold>.withTag({type: "jungle"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Brick Mold [Acacia]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:4>])
.addOutput(<primal:brick_mold>.withTag({type: "acacia"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Brick Mold [Dark Oak]
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs_stripped:5>])
.addOutput(<primal:brick_mold>.withTag({type: "dark_oak"}))
.setMaximumTier(0)
.addTool(<ore:artisansHandsaw>, 25)
.create();

//Crude Flint Blade
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_point>, <primal:flint_knapp>],
[<primal:flint_point>, <primal:flint_knapp>, null],
[<minecraft:stick>, <ore:cordageGeneral>, null]])
.addOutput(<primal:sword_crude_flint>)
.create();

//Twine
RecipeBuilder.get("basic")
.setShapeless([<primal:plant_fiber>,<primal:plant_fiber>,<primal:plant_fiber>])
.addOutput(<primal:plant_cordage>)
.create();

//Abode Sariras
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>],
[<primal:adobe_brick_dry>, <primal:adobe_clump>, <primal:adobe_brick_dry>], 
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>]])
.addOutput(<primal:smelter:3>.withTag({type: "adobe"}))
.create();

//Abode Sariras Lid
RecipeBuilder.get("basic")
.setShaped([
[<primal:adobe_clump>, <primal:adobe_brick_dry>, <primal:adobe_clump>],
[<primal:adobe_brick_dry>, <primal:adobe_brick_dry>, <primal:adobe_brick_dry>], 
[null, null, null]])
.addOutput(<primal:smelter_lid_adobe>)
.create();

//Log Stack [Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>],
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>], 
[<primal:logs_split_oak>, <primal:logs_split_oak>, <primal:logs_split_oak>]])
.addOutput(<primal:logs_stacked>)
.create();

//Log Stack [Spruce]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>],
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>], 
[<primal:logs_split_spruce>, <primal:logs_split_spruce>, <primal:logs_split_spruce>]])
.addOutput(<primal:logs_stacked:1>)
.create();

//Log Stack [Birch]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>],
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>], 
[<primal:logs_split_birch>, <primal:logs_split_birch>, <primal:logs_split_birch>]])
.addOutput(<primal:logs_stacked:2>)
.create();

//Log Stack [Jungle]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>],
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>], 
[<primal:logs_split_jungle>, <primal:logs_split_jungle>, <primal:logs_split_jungle>]])
.addOutput(<primal:logs_stacked:3>)
.create();

//Log Stack [Acacia]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>],
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>], 
[<primal:logs_split_acacia>, <primal:logs_split_acacia>, <primal:logs_split_acacia>]])
.addOutput(<primal:logs_stacked:4>)
.create();

//Log Stack [Dark Oak]
RecipeBuilder.get("basic")
.setShaped([
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>],
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>], 
[<primal:logs_split_bigoak>, <primal:logs_split_bigoak>, <primal:logs_split_bigoak>]])
.addOutput(<primal:logs_stacked:5>)
.create();

//Flint Hoe
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, null], 
[null, null, null]])
.addOutput(<primal:flint_hoe>)
.create();

//Thatch
RecipeBuilder.get("farmer")
.setShaped([
[<primal:thatching_dry>, <primal:thatching_dry>, <primal:thatching_dry>],
[<primal:thatching_dry>, <ore:fiberPlant>, <primal:thatching_dry>], 
[<primal:thatching_dry>, <primal:thatching_dry>, <primal:thatching_dry>]])
.addOutput(<primal:thatch>)
.addTool(<ore:artisansHandsaw>, 10)
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
.create();

//Stone in Sariras
mods.primal.Smelter.removeRecipe("stone");
mods.primal.Smelter.addRecipe(
"Cob_to_Stone",
2,
[<minecraft:cobblestone>],
[<minecraft:stone>]
);

//Fire Bow
RecipeBuilder.get("basic")
.setShaped([
[null, <minecraft:stick>, null],
[<minecraft:stick>, <primal:plant_cordage>, null], 
[null, null, null]])
.addOutput(<primal:fire_bow>)
.create();

//Stone Gallagher
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:cobblestone:*>, <ore:cordagePlant>, <minecraft:cobblestone:*>],
[<minecraft:cobblestone:*>, <minecraft:stick>, <minecraft:cobblestone:*>], 
[null, <minecraft:stick>, null]])
.addOutput(<primal:stone_gallagher>)
.create();

//Iron Gallagher
RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:iron_ingot>, <ore:cordagePlant>, <minecraft:iron_ingot>],
[<minecraft:iron_ingot>, <minecraft:stick>, <minecraft:iron_ingot>], 
[null, <minecraft:stick>, null]])
.addOutput(<primal:iron_gallagher>)
.create();

//Thin Slab [Oak]
recipes.remove(<primal:thin_slab_oak>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab>])
.addOutput(<primal:thin_slab_oak> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Thin Slab [Spruce]
recipes.remove(<primal:thin_slab_spruce>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:1>])
.addOutput(<primal:thin_slab_spruce> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Thin Slab [Birch]
recipes.remove(<primal:thin_slab_birch>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:2>])
.addOutput(<primal:thin_slab_birch> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Thin Slab [Jungle]
recipes.remove(<primal:thin_slab_jungle>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:3>])
.addOutput(<primal:thin_slab_jungle> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Thin Slab [Acacia]
recipes.remove(<primal:thin_slab_acacia>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:4>])
.addOutput(<primal:thin_slab_acacia> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Thin Slab [Big Oak]
recipes.remove(<primal:thin_slab_bigoak>);
RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:wooden_slab:5>])
.addOutput(<primal:thin_slab_bigoak> * 2)
.setMaximumTier(2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Oak]
recipes.remove(<primal:slat_oak>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_oak>])
.addOutput(<primal:slat_oak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Spruce]
recipes.remove(<primal:slat_spruce>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_spruce>])
.addOutput(<primal:slat_spruce> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Jungle]
recipes.remove(<primal:slat_jungle>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_jungle>])
.addOutput(<primal:slat_jungle> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Dark Oak]
recipes.remove(<primal:slat_bigoak>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_bigoak>])
.addOutput(<primal:slat_bigoak> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Acacia]
recipes.remove(<primal:slat_acacia>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_acacia>])
.addOutput(<primal:slat_acacia> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Slat [Birch]
recipes.remove(<primal:slat_birch>);
RecipeBuilder.get("carpenter")
.setShapeless([<primal:thin_slab_birch>])
.addOutput(<primal:slat_birch> * 2)
.addTool(<ore:artisansFramingHammer>, 10)
.create();

//Stone Basin
RecipeBuilder.get("basic")
.setShaped([
[null, null, null],
[<minecraft:stone:*>, null, <minecraft:stone:*>], 
[null, <minecraft:stone:*>, null]])
.addOutput(<primal:stone_basin>)
.setMaximumTier(0)
.create();

//Resin
RecipeBuilder.get("farmer")
.setShaped([
[null, <ore:rock>, null],
[null, <ore:barkWood>, null], 
[null, <primal:stone_basin>, null]])
.addOutput(<primal:tannin_ground>)
.setMaximumTier(0)
.create();

//Clay Bucket in Sariras
mods.primal.Smelter.addRecipe(
"clay_bucket",
6,
[<primal:bucket_clay_soft>],
[<primal:bucket_clay>]
);

//Terra Bucket in Sariras
mods.primal.Smelter.addRecipe(
"terra_bucket",
6,
[<primal:bucket_terra_soft>],
[<primal:bucket_terra>]
);

//Cinis Bucket in Sariras
mods.primal.Smelter.addRecipe(
"cinis_bucket",
6,
[<primal:bucket_cinis_soft>],
[<primal:bucket_cinis>]
);

//Disable Flint Flaking
mods.primal.Flake.removeRecipe("flint");

//Disable Terracotta from Drying
mods.primal.DryingRack.removeRecipe("primal:block_clay");

//Terracotta Bucket in Sariras
mods.primal.Smelter.addRecipe(
"clay_to_ter",
6,
[<minecraft:clay>],
[<minecraft:hardened_clay>]
);

//Yew Log to Planks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs:1>])
.addOutput(<primal:planks:1> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Yew Planks to Sticks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:planks:1>])
.addOutput(<primal:yew_stick> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Ironwood Log to Planks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:logs>])
.addOutput(<primal:planks> * 4)
.setMaximumTier(2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Ironwood Planks to Sticks
RecipeBuilder.get("carpenter")
.setShapeless([<primal:planks>])
.addOutput(<primal:ironwood_stick> * 2)
.addTool(<ore:artisansHandsaw>, 10)
.create();

//Yew Bow
RecipeBuilder.get("carpenter")
.setShaped([
[null, <primal:yew_stick>, <primal:silk_cordage>],
[<primal:yew_stick>, null, <primal:silk_cordage>], 
[null, <primal:yew_stick>, <primal:silk_cordage>]])
.addOutput(<primal:yew_bow>)
.addTool(<ore:artisansRazor>, 50)
.create();

//Ironwood Bow
RecipeBuilder.get("carpenter")
.setShaped([
[null, <primal:ironwood_stick>, <primal:silk_cordage>],
[<primal:ironwood_stick>, null, <primal:silk_cordage>], 
[null, <primal:ironwood_stick>, <primal:silk_cordage>]])
.addOutput(<primal:ironwood_bow>)
.addTool(<ore:artisansRazor>, 50)
.create();

var removeRecipes as string[] = [
	"primal:obsidian_shard",
	"primal:charcoal_stripped",
	"primal:netherrack_to_brick",
	"primal:ore_sand_zinc",
	"primal:wolf_ash",
	"primal:ore_good_iron",
	"primal:bog_iron_sand_good",
	"primal:plate_lead",
	"primal:plate_gold",
	"primal:sand",
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
	"primal:plate_vanadium",
	"primal:satetsu_high_glass",
	"primal:dust_brass",
	"primal:nether_growth",
	"primal:bucket_to_ingot",
	"primal:plate_nickel",
	"primal:ore_sand_gold",
	"primal:ore_good_tin",
	"primal:plate_brass",
	"primal:dust_tin",
	"primal:door_to_ingot",
	"primal:plate_tamahagane",
	"primal:charcoal_log",
	"primal:ore_sand_copper",
	"primal:soul_glass_conversion",
	"primal:pure_carbon",
	"primal:bog_iron_sand_high",
	"primal:ore_fair_tin",
	"primal:plate_iron",
	"primal:plate_steel",
	"primal:soul_sand",
	"primal:dust_copper",
	"primal:ore_fair_nickel",
	"primal:soul_residue",
	"primal:bog_iron_lime_good",
	"primal:dust_silver",
	"primal:dust_bronze",
	"primal:ore_sand_nickel",
	"primal:alloy_bronze",
	"primal:plate_platinum",
	"primal:ore_good_zinc",
	"primal:ore_good_nickel",
	"primal:netherstone_to_brick",
	"primal:obsidian_plate",
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
	"primal:ore_fair_gold",
	"primal:satetsu_poor_glass",
	"primal:plate_zinc",
	"primal:yew_ash",
	"primal:dust_zinc",
	"primal:fermented_jungle",
	"primal:soul_glass_to_glass",
	"primal:plate_silver",
	"primal:zinc_lime_good",
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
	"primal:satetsu_pure_glass",
	"primal:iron",
	"primal:zinc_lime_high",
	"primal:stone",
	"primal:bone_ash",
	"primal:plate_aluminum",
	"primal:bog_iron_sand_fair",
	"primal:plate_copper",
	"primal:hardened_clay"
];

for recipeRegex in removeRecipes {
	mods.primal.Smelter.removeRecipe(recipeRegex);
}
	
//Glass in Sariras
mods.primal.Smelter.addRecipe(
"sand_to_glass",
6,
[<minecraft:sand>],
[<minecraft:glass>]
);	