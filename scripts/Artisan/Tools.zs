import mods.artisanworktables.builder.RecipeBuilder;

//Framing Hammer ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <ore:stickWood>, <ore:cordageGeneral>],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, <primal:quartz_knapp>, <primal:quartz_knapp>],
[null, <ore:stickWood>, <ore:cordageGeneral>],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:33>, <thermalfoundation:material:33>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:322>, <thermalfoundation:material:322>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:323>, <thermalfoundation:material:323>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:325>, <thermalfoundation:material:325>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_framing_hammer_nickel>)
.setMaximumTier(1)
.create();

//Cutters ========================================================
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, null, <primal:flint_knapp>],
[null, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[<primal:quartz_knapp>, null, <primal:quartz_knapp>],
[null, <ore:cordageGeneral>, null],
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:32>, null, <thermalfoundation:material:32>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:33>, null, <thermalfoundation:material:33>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:320>, null, <thermalfoundation:material:320>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:321>, null, <thermalfoundation:material:321>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:322>, null, <thermalfoundation:material:322>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:323>, null, <thermalfoundation:material:323>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:324>, null, <thermalfoundation:material:324>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<thermalfoundation:material:325>, null, <thermalfoundation:material:325>],
[null, <ore:cordageGeneral>, null], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_cutters_nickel>)
.setMaximumTier(1)
.create();

//Handsaw ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <ore:stickWood>],
[<primal:flint_knapp>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, <primal:quartz_knapp>, <ore:stickWood>],
[<primal:quartz_knapp>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:32>, <ore:stickWood>],
[<thermalfoundation:material:32>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:33>, <ore:stickWood>],
[<thermalfoundation:material:33>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:320>, <ore:stickWood>],
[<thermalfoundation:material:320>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:321>, <ore:stickWood>],
[<thermalfoundation:material:321>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:322>, <ore:stickWood>],
[<thermalfoundation:material:322>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:323>, <ore:stickWood>],
[<thermalfoundation:material:323>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:324>, <ore:stickWood>],
[<thermalfoundation:material:324>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:325>, <ore:stickWood>],
[<thermalfoundation:material:325>, <ore:stickWood>, null],
[<ore:stickWood>, null, null]])
.addOutput(<artisanworktables:artisans_handsaw_nickel>)
.setMaximumTier(1)
.create();

//Mortar ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <minecraft:stick>],
[<primal:flint_knapp>, <primal:flint_knapp>, null],
[null, <primal:flint_knapp>, null]])
.addOutput(<artisanworktables:artisans_mortar_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, null, <minecraft:stick>],
[<primal:quartz_knapp>, <primal:quartz_knapp>, null],
[null, <primal:quartz_knapp>, null]])
.addOutput(<artisanworktables:artisans_mortar_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:32>, <thermalfoundation:material:32>, null],
[null, <thermalfoundation:material:32>, null]])
.addOutput(<artisanworktables:artisans_mortar_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:33>, <thermalfoundation:material:33>, null],
[null, <thermalfoundation:material:33>, null]])
.addOutput(<artisanworktables:artisans_mortar_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:320>, <thermalfoundation:material:320>, null],
[null, <thermalfoundation:material:320>, null]])
.addOutput(<artisanworktables:artisans_mortar_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:321>, <thermalfoundation:material:321>, null],
[null, <thermalfoundation:material:321>, null]])
.addOutput(<artisanworktables:artisans_mortar_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:322>, <thermalfoundation:material:322>, null],
[null, <thermalfoundation:material:322>, null]])
.addOutput(<artisanworktables:artisans_mortar_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:323>, <thermalfoundation:material:323>, null],
[null, <thermalfoundation:material:323>, null]])
.addOutput(<artisanworktables:artisans_mortar_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:324>, <thermalfoundation:material:324>, null],
[null, <thermalfoundation:material:324>, null]])
.addOutput(<artisanworktables:artisans_mortar_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <minecraft:stick>],
[<thermalfoundation:material:325>, <thermalfoundation:material:325>, null],
[null, <thermalfoundation:material:325>, null]])
.addOutput(<artisanworktables:artisans_mortar_nickel>)
.setMaximumTier(1)
.create();

//Razor ========================================================
RecipeBuilder.get("basic")
.setShapeless([<ore:cordageGeneral>,<primal:flint_knapp>,<minecraft:stick>])
.addOutput(<artisanworktables:artisans_razor_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShapeless([<ore:cordageGeneral>, <primal:quartz_knapp>, <minecraft:stick>])
.addOutput(<artisanworktables:artisans_razor_quartz>)
.setMaximumTier(1)
.create();

///Razor Flint [Inventory]
recipes.addShapeless(<artisanworktables:artisans_razor_flint>, [<ore:cordageGeneral>, <primal:flint_knapp>, <minecraft:stick>]);

//Shears ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <primal:flint_knapp>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, <primal:quartz_knapp>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <primal:quartz_knapp>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:32>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:32>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:33>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:33>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:320>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:320>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:321>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:321>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:322>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:322>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:323>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:323>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:324>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:324>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:325>, null],
[<ore:stickWood>, <ore:cordageGeneral>, <thermalfoundation:material:325>], 
[null, <ore:stickWood>, null]])
.addOutput(<artisanworktables:artisans_shears_nickel>)
.setMaximumTier(1)
.create();

//Needle ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[null, <primal:flint_knapp>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, null, <primal:quartz_knapp>],
[null, <primal:quartz_knapp>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:32>],
[null, <thermalfoundation:material:32>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:33>],
[null, <thermalfoundation:material:33>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:320>],
[null, <thermalfoundation:material:320>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:321>],
[null, <thermalfoundation:material:321>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:322>],
[null, <thermalfoundation:material:322>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:323>],
[null, <thermalfoundation:material:323>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:324>],
[null, <thermalfoundation:material:324>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:325>],
[null, <thermalfoundation:material:325>, <ore:cordageGeneral>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_needle_nickel>)
.setMaximumTier(1)
.create();

//Flint Chisel ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[null, <primal:flint_knapp>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, null, <primal:quartz_knapp>],
[null, <primal:quartz_knapp>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:32>],
[null, <thermalfoundation:material:32>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:33>],
[null, <thermalfoundation:material:33>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:320>],
[null, <thermalfoundation:material:320>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:321>],
[null, <thermalfoundation:material:321>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:322>],
[null, <thermalfoundation:material:322>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:323>],
[null, <thermalfoundation:material:323>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:324>],
[null, <thermalfoundation:material:324>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:325>],
[null, <thermalfoundation:material:325>, null], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_chisel_nickel>)
.setMaximumTier(1)
.create();

//Hammer ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <primal:flint_knapp>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, <primal:quartz_knapp>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <primal:quartz_knapp>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <minecraft:iron_ingot>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <minecraft:iron_ingot>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:33>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:33>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:320>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:320>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:321>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:321>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:322>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:322>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:323>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:323>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:324>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:324>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:325>, <ore:cordageGeneral>],
[null, <minecraft:stick>, <thermalfoundation:material:325>], 
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_hammer_nickel>)
.setMaximumTier(1)
.create();

//Trowel ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, <primal:flint_knapp>, <primal:flint_knapp>],
[null, <minecraft:stick>, <primal:flint_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, <primal:quartz_knapp>, <primal:quartz_knapp>],
[null, <minecraft:stick>, <primal:quartz_knapp>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:32>, <thermalfoundation:material:32>],
[null, <minecraft:stick>, <thermalfoundation:material:32>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:33>, <thermalfoundation:material:33>],
[null, <minecraft:stick>, <thermalfoundation:material:33>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:320>, <thermalfoundation:material:320>],
[null, <minecraft:stick>, <thermalfoundation:material:320>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:321>, <thermalfoundation:material:321>],
[null, <minecraft:stick>, <thermalfoundation:material:321>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:322>, <thermalfoundation:material:322>],
[null, <minecraft:stick>, <thermalfoundation:material:322>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:323>, <thermalfoundation:material:323>],
[null, <minecraft:stick>, <thermalfoundation:material:323>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:324>, <thermalfoundation:material:324>],
[null, <minecraft:stick>, <thermalfoundation:material:324>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, <thermalfoundation:material:325>, <thermalfoundation:material:325>],
[null, <minecraft:stick>, <thermalfoundation:material:325>],
[<minecraft:stick>, null, null]])
.addOutput(<artisanworktables:artisans_trowel_nickel>)
.setMaximumTier(1)
.create();

//Beaker ========================================================
RecipeBuilder.get("basic")
.setShaped([
[<primal:flint_knapp>, <primal:flint_knapp>, <primal:flint_knapp>],
[<minecraft:glass_pane>, null, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]])
.addOutput(<artisanworktables:artisans_beaker_flint>)
.setMaximumTier(1)
.create();
 
 RecipeBuilder.get("mason")
.setShaped([
[< primal:quartz_knapp>, < primal:quartz_knapp>, < primal:quartz_knapp>],
[<minecraft:glass_pane>, null, <minecraft:glass_pane>], 
[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>]])
.addOutput(<artisanworktables:artisans_beaker_quartz>)
.setMaximumTier(1)
.create();

//Sifter ========================================================
RecipeBuilder.get("basic")
.setShaped([
[<minecraft:stick>, <primal:flint_knapp>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <primal:flint_knapp>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[<minecraft:stick>, < primal:quartz_knapp>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <primal:quartz_knapp>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:32>, <minecraft:stick>],
[<minecraft:stick>, <primal:iron_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:32>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:33>, <minecraft:stick>],
[<minecraft:stick>, <primal:iron_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:33>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:320>, <minecraft:stick>],
[<minecraft:stick>, <primal:iron_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:320>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:321>, <minecraft:stick>],
[<minecraft:stick>, <primal:iron_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:321>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:322>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:322>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:323>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:323>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:324>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:324>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[<minecraft:stick>, <thermalfoundation:material:325>, <minecraft:stick>],
[<minecraft:stick>, <contenttweaker:string_mesh>, <minecraft:stick>], 
[<minecraft:stick>, <thermalfoundation:material:325>, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_sifter_nickel>)
.setMaximumTier(1)
.create();


//Pliers ========================================================
RecipeBuilder.get("mason")
.setShaped([
[<primal:quartz_knapp>, null, <primal:quartz_knapp>],
[<minecraft:stick>, <ore:cordageGeneral>, <minecraft:stick>], 
[<minecraft:stick>, null, <minecraft:stick>]])
.addOutput(<artisanworktables:artisans_pliers_quartz>)
.setMaximumTier(1)
.create();

//Punch ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<primal:flint_knapp>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_flint>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("mason")
.setShaped([
[null, null, <primal:quartz_knapp>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<primal:quartz_knapp>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_quartz>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:32>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:32>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_iron>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:33>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:33>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_gold>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:320>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:320>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_copper>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:321>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:321>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_tin>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:322>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:322>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_silver>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:323>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:323>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_lead>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:324>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:324>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_aluminum>)
.setMaximumTier(1)
.create();

RecipeBuilder.get("blacksmith")
.setShaped([
[null, null, <thermalfoundation:material:325>],
[null, <minecraft:stick>, <ore:cordageGeneral>], 
[<thermalfoundation:material:325>, <ore:cordageGeneral>, null]])
.addOutput(<artisanworktables:artisans_punch_nickel>)
.setMaximumTier(1)
.create();

//Carver ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[<primal:plant_cordage>, <minecraft:stick>, <primal:plant_cordage>], 
[<primal:flint_knapp>, null, null]])
.addOutput(<artisanworktables:artisans_carver_flint>)
.setMaximumTier(1)
.create();