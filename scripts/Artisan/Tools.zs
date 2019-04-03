import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
//Framing Hammer ========================================================

function createFramingHammer(base as IItemStack, output as IItemStack, workplace as string) {
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, base, base],
    [null, <minecraft:stick>, <ore:cordageGeneral>],
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createFramingHammer(<primal:flint_knapp>, <artisanworktables:artisans_framing_hammer_flint>,"basic");
/* QUARTZ   */  createFramingHammer(<primal:quartz_knapp>, <artisanworktables:artisans_framing_hammer_quartz>,"mason");
/* IRON     */  createFramingHammer(<thermalfoundation:material:32>, <artisanworktables:artisans_framing_hammer_iron>,"blacksmith");
/* GOLD     */  createFramingHammer(<thermalfoundation:material:33>, <artisanworktables:artisans_framing_hammer_gold>,"blacksmith");
/* COPPER   */  createFramingHammer(<thermalfoundation:material:320>, <artisanworktables:artisans_framing_hammer_copper>,"blacksmith");
/* TIN      */  createFramingHammer(<thermalfoundation:material:321>, <artisanworktables:artisans_framing_hammer_tin>,"blacksmith");
/* SILVER   */  createFramingHammer(<thermalfoundation:material:322>, <artisanworktables:artisans_framing_hammer_silver>,"blacksmith");
/* LEAD     */  createFramingHammer(<thermalfoundation:material:323>, <artisanworktables:artisans_framing_hammer_lead>,"blacksmith");
/* ALUMINUM */  createFramingHammer(<thermalfoundation:material:324>, <artisanworktables:artisans_framing_hammer_aluminum>,"blacksmith");
/* NICKEL   */  createFramingHammer(<thermalfoundation:material:325>, <artisanworktables:artisans_framing_hammer_nickel>,"blacksmith");

//Cutters ========================================================

function createCutters(base as IItemStack, output as IItemStack, workplace as string) {
    RecipeBuilder.get(workplace)
    .setShaped([
    [base, null, base],
    [null, <ore:cordageGeneral>, null],
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createCutters(<primal:flint_knapp>,<artisanworktables:artisans_cutters_flint>,"basic");
/* QUARTZ   */  createCutters(<primal:quartz_knapp>,<artisanworktables:artisans_cutters_quartz>,"mason");
/* IRON     */  createCutters(<thermalfoundation:material:32>,<artisanworktables:artisans_cutters_iron>,"blacksmith");
/* GOLD     */  createCutters(<thermalfoundation:material:33>,<artisanworktables:artisans_cutters_gold>,"blacksmith");
/* COPPER   */  createCutters(<thermalfoundation:material:320>,<artisanworktables:artisans_cutters_copper>,"blacksmith");
/* TIN      */  createCutters(<thermalfoundation:material:321>,<artisanworktables:artisans_cutters_tin>,"blacksmith");
/* SILVER   */  createCutters(<thermalfoundation:material:322>,<artisanworktables:artisans_cutters_silver>,"blacksmith");
/* LEAD     */  createCutters(<thermalfoundation:material:323>,<artisanworktables:artisans_cutters_lead>,"blacksmith");
/* ALUMINUM */  createCutters(<thermalfoundation:material:324>,<artisanworktables:artisans_cutters_aluminum>,"blacksmith");
/* NICKEL   */  createCutters(<thermalfoundation:material:325>,<artisanworktables:artisans_cutters_nickel>,"blacksmith");


//Handsaw ========================================================

function createHandsaw(base as IItemStack, output as IItemStack, workplace as string) {
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, base, <minecraft:stick>],
    [base, <minecraft:stick>, null],
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}
/* FLINT    */  createHandsaw(<primal:flint_knapp>,<artisanworktables:artisans_handsaw_flint>,"basic");
/* QUARTZ   */  createHandsaw(<primal:quartz_knapp>,<artisanworktables:artisans_handsaw_quartz>,"mason");
/* IRON     */  createHandsaw(<thermalfoundation:material:32>,<artisanworktables:artisans_handsaw_iron>,"blacksmith");
/* GOLD     */  createHandsaw(<thermalfoundation:material:33>,<artisanworktables:artisans_handsaw_gold>,"blacksmith");
/* COPPER   */  createHandsaw(<thermalfoundation:material:320>,<artisanworktables:artisans_handsaw_copper>,"blacksmith");
/* TIN      */  createHandsaw(<thermalfoundation:material:321>,<artisanworktables:artisans_handsaw_tin>,"blacksmith");
/* SILVER   */  createHandsaw(<thermalfoundation:material:322>,<artisanworktables:artisans_handsaw_silver>,"blacksmith");
/* LEAD     */  createHandsaw(<thermalfoundation:material:323>,<artisanworktables:artisans_handsaw_lead>,"blacksmith");
/* ALUMINUM */  createHandsaw(<thermalfoundation:material:324>,<artisanworktables:artisans_handsaw_aluminum>,"blacksmith");
/* NICKEL   */  createHandsaw(<thermalfoundation:material:325>,<artisanworktables:artisans_handsaw_nickel>,"blacksmith");


//Mortar ========================================================

function createMortar(base as IItemStack, output as IItemStack, workplace as string) {
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, null, <minecraft:stick>],
    [base, base, null],
    [null, base, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* QUARTZ   */  createMortar(<primal:quartz_knapp>,<artisanworktables:artisans_mortar_quartz>,"mason");
/* IRON     */  createMortar(<thermalfoundation:material:32>,<artisanworktables:artisans_mortar_iron>,"blacksmith");
/* GOLD     */  createMortar(<thermalfoundation:material:33>,<artisanworktables:artisans_mortar_gold>,"blacksmith");
/* COPPER   */  createMortar(<thermalfoundation:material:320>,<artisanworktables:artisans_mortar_copper>,"blacksmith");
/* TIN      */  createMortar(<thermalfoundation:material:321>,<artisanworktables:artisans_mortar_tin>,"blacksmith");
/* SILVER   */  createMortar(<thermalfoundation:material:322>,<artisanworktables:artisans_mortar_silver>,"blacksmith");
/* LEAD     */  createMortar(<thermalfoundation:material:323>,<artisanworktables:artisans_mortar_lead>,"blacksmith");
/* ALUMINUM */  createMortar(<thermalfoundation:material:324>,<artisanworktables:artisans_mortar_aluminum>,"blacksmith");
/* NICKEL   */  createMortar(<thermalfoundation:material:325>,<artisanworktables:artisans_mortar_nickel>,"blacksmith");

// FLINT
RecipeBuilder.get("basic")
.setShaped([
[null, null, <minecraft:stick>],
[<primal:flint_knapp>, <primal:flint_point>, null],
[null, <primal:flint_knapp>, null]])
.addOutput(<artisanworktables:artisans_mortar_flint>)
.setMaximumTier(1)
.create();



//Razor ========================================================
// FLINT
RecipeBuilder.get("basic")
.setShapeless([<ore:cordageGeneral>,<primal:flint_knapp>,<minecraft:stick>])
.addOutput(<artisanworktables:artisans_razor_flint>)
.setMaximumTier(1)
.create();

// QUARTZ
RecipeBuilder.get("mason")
.setShapeless([<ore:cordageGeneral>, <primal:quartz_knapp>, <minecraft:stick>])
.addOutput(<artisanworktables:artisans_razor_quartz>)
.setMaximumTier(1)
.create();

///Razor Flint [Inventory]
recipes.addShapeless(<artisanworktables:artisans_razor_flint>, [<ore:cordageGeneral>, <primal:flint_knapp>, <minecraft:stick>]);

//Shears ========================================================

function createShears(base as IItemStack, output as IItemStack, workplace as string) {
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, base, null],
    [<minecraft:stick>, <ore:cordageGeneral>, base],
    [null, <minecraft:stick>, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createShears(<primal:flint_knapp>,<artisanworktables:artisans_shears_flint>,"basic");
/* QUARTZ   */  createShears(<primal:quartz_knapp>,<artisanworktables:artisans_shears_quartz>,"mason");
/* IRON     */  createShears(<thermalfoundation:material:32>,<artisanworktables:artisans_shears_iron>,"blacksmith");
/* GOLD     */  createShears(<thermalfoundation:material:33>,<artisanworktables:artisans_shears_gold>,"blacksmith");
/* COPPER   */  createShears(<thermalfoundation:material:320>,<artisanworktables:artisans_shears_copper>,"blacksmith");
/* TIN      */  createShears(<thermalfoundation:material:321>,<artisanworktables:artisans_shears_tin>,"blacksmith");
/* SILVER   */  createShears(<thermalfoundation:material:322>,<artisanworktables:artisans_shears_silver>,"blacksmith");
/* LEAD     */  createShears(<thermalfoundation:material:323>,<artisanworktables:artisans_shears_lead>,"blacksmith");
/* ALUMINUM */  createShears(<thermalfoundation:material:324>,<artisanworktables:artisans_shears_aluminum>,"blacksmith");
/* NICKEL   */  createShears(<thermalfoundation:material:325>,<artisanworktables:artisans_shears_nickel>,"blacksmith");




//Needle ========================================================
//  TODO: Придумать крафт иглы, временный крафт:
// s - нитка (<minecraft:string>,<ore:cordageGeneral>)
// m - материал (тип иглы)
// [s][s][s]
// [s][m][s] = [{Material Needle}]
// [s][s][s]

function createNeedle(base as IItemStack, output as IItemStack, workplace as string) {
    
    RecipeBuilder.get(workplace)
    .setShaped([
    [<minecraft:string>, <minecraft:string>, <minecraft:string>],
    [<minecraft:string>, base,               <minecraft:string>], 
    [<minecraft:string>, <minecraft:string>, <minecraft:string>]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
    RecipeBuilder.get(workplace)
    .setShaped([
    [<ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>],
    [<ore:cordageGeneral>, base                , <ore:cordageGeneral>], 
    [<ore:cordageGeneral>, <ore:cordageGeneral>, <ore:cordageGeneral>]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createNeedle(<primal:flint_knapp>,<artisanworktables:artisans_needle_flint>,"basic");
/* QUARTZ   */  createNeedle(<primal:quartz_knapp>,<artisanworktables:artisans_needle_quartz>,"mason");
/* IRON     */  createNeedle(<thermalfoundation:material:32>,<artisanworktables:artisans_needle_iron>,"blacksmith");
/* GOLD     */  createNeedle(<thermalfoundation:material:33>,<artisanworktables:artisans_needle_gold>,"blacksmith");
/* COPPER   */  createNeedle(<thermalfoundation:material:320>,<artisanworktables:artisans_needle_copper>,"blacksmith");
/* TIN      */  createNeedle(<thermalfoundation:material:321>,<artisanworktables:artisans_needle_tin>,"blacksmith");
/* SILVER   */  createNeedle(<thermalfoundation:material:322>,<artisanworktables:artisans_needle_silver>,"blacksmith");
/* LEAD     */  createNeedle(<thermalfoundation:material:323>,<artisanworktables:artisans_needle_lead>,"blacksmith");
/* ALUMINUM */  createNeedle(<thermalfoundation:material:324>,<artisanworktables:artisans_needle_aluminum>,"blacksmith");
/* NICKEL   */  createNeedle(<thermalfoundation:material:325>,<artisanworktables:artisans_needle_nickel>,"blacksmith");


//Flint Chisel ========================================================


function createChisel(base as IItemStack, output as IItemStack, workplace as string) { 
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, null, base],
    [null, base, null], 
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createChisel(<primal:flint_knapp>,<artisanworktables:artisans_chisel_flint>,"basic");
/* QUARTZ   */  createChisel(<primal:quartz_knapp>,<artisanworktables:artisans_chisel_quartz>,"mason");
/* IRON     */  createChisel(<thermalfoundation:material:32>,<artisanworktables:artisans_chisel_iron>,"blacksmith");
/* GOLD     */  createChisel(<thermalfoundation:material:33>,<artisanworktables:artisans_chisel_gold>,"blacksmith");
/* COPPER   */  createChisel(<thermalfoundation:material:320>,<artisanworktables:artisans_chisel_copper>,"blacksmith");
/* TIN      */  createChisel(<thermalfoundation:material:321>,<artisanworktables:artisans_chisel_tin>,"blacksmith");
/* SILVER   */  createChisel(<thermalfoundation:material:322>,<artisanworktables:artisans_chisel_silver>,"blacksmith");
/* LEAD     */  createChisel(<thermalfoundation:material:323>,<artisanworktables:artisans_chisel_lead>,"blacksmith");
/* ALUMINUM */  createChisel(<thermalfoundation:material:324>,<artisanworktables:artisans_chisel_aluminum>,"blacksmith");
/* NICKEL   */  createChisel(<thermalfoundation:material:325>,<artisanworktables:artisans_chisel_nickel>,"blacksmith");

//Hammer ========================================================

function createHammer(base as IItemStack, output as IItemStack, workplace as string) { 
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, base, <ore:cordageGeneral>],
    [null, <minecraft:stick>, base], 
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createHammer(<primal:flint_knapp>,<artisanworktables:artisans_hammer_flint>,"basic");
/* QUARTZ   */  createHammer(<primal:quartz_knapp>,<artisanworktables:artisans_hammer_quartz>,"mason");
/* IRON     */  createHammer(<thermalfoundation:material:32>,<artisanworktables:artisans_hammer_iron>,"blacksmith");
/* GOLD     */  createHammer(<thermalfoundation:material:33>,<artisanworktables:artisans_hammer_gold>,"blacksmith");
/* COPPER   */  createHammer(<thermalfoundation:material:320>,<artisanworktables:artisans_hammer_copper>,"blacksmith");
/* TIN      */  createHammer(<thermalfoundation:material:321>,<artisanworktables:artisans_hammer_tin>,"blacksmith");
/* SILVER   */  createHammer(<thermalfoundation:material:322>,<artisanworktables:artisans_hammer_silver>,"blacksmith");
/* LEAD     */  createHammer(<thermalfoundation:material:323>,<artisanworktables:artisans_hammer_lead>,"blacksmith");
/* ALUMINUM */  createHammer(<thermalfoundation:material:324>,<artisanworktables:artisans_hammer_aluminum>,"blacksmith");
/* NICKEL   */  createHammer(<thermalfoundation:material:325>,<artisanworktables:artisans_hammer_nickel>,"blacksmith");


//Trowel ========================================================

function createTrowel(base as IItemStack, output as IItemStack, workplace as string) { 
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, base, base],
    [null, <minecraft:stick>, base], 
    [<minecraft:stick>, null, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createTrowel(<primal:flint_knapp>,<artisanworktables:artisans_trowel_flint>,"basic");
/* QUARTZ   */  createTrowel(<primal:quartz_knapp>,<artisanworktables:artisans_trowel_quartz>,"mason");
/* IRON     */  createTrowel(<thermalfoundation:material:32>,<artisanworktables:artisans_trowel_iron>,"blacksmith");
/* GOLD     */  createTrowel(<thermalfoundation:material:33>,<artisanworktables:artisans_trowel_gold>,"blacksmith");
/* COPPER   */  createTrowel(<thermalfoundation:material:320>,<artisanworktables:artisans_trowel_copper>,"blacksmith");
/* TIN      */  createTrowel(<thermalfoundation:material:321>,<artisanworktables:artisans_trowel_tin>,"blacksmith");
/* SILVER   */  createTrowel(<thermalfoundation:material:322>,<artisanworktables:artisans_trowel_silver>,"blacksmith");
/* LEAD     */  createTrowel(<thermalfoundation:material:323>,<artisanworktables:artisans_trowel_lead>,"blacksmith");
/* ALUMINUM */  createTrowel(<thermalfoundation:material:324>,<artisanworktables:artisans_trowel_aluminum>,"blacksmith");
/* NICKEL   */  createTrowel(<thermalfoundation:material:325>,<artisanworktables:artisans_trowel_nickel>,"blacksmith");

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
[<primal:quartz_knapp>, <primal:quartz_knapp>, <primal:quartz_knapp>],
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

function createPunch(base as IItemStack, output as IItemStack, workplace as string) { 
    RecipeBuilder.get(workplace)
    .setShaped([
    [null, null, base],
    [null, <minecraft:stick>, <ore:cordageGeneral>], 
    [base, <ore:cordageGeneral>, null]])
    .addOutput(output)
    .setMaximumTier(1)
    .create();
}

/* FLINT    */  createPunch(<primal:flint_knapp>,<artisanworktables:artisans_punch_flint>,"basic");
/* QUARTZ   */  createPunch(<primal:quartz_knapp>,<artisanworktables:artisans_punch_quartz>,"mason");
/* IRON     */  createPunch(<thermalfoundation:material:32>,<artisanworktables:artisans_punch_iron>,"blacksmith");
/* GOLD     */  createPunch(<thermalfoundation:material:33>,<artisanworktables:artisans_punch_gold>,"blacksmith");
/* COPPER   */  createPunch(<thermalfoundation:material:320>,<artisanworktables:artisans_punch_copper>,"blacksmith");
/* TIN      */  createPunch(<thermalfoundation:material:321>,<artisanworktables:artisans_punch_tin>,"blacksmith");
/* SILVER   */  createPunch(<thermalfoundation:material:322>,<artisanworktables:artisans_punch_silver>,"blacksmith");
/* LEAD     */  createPunch(<thermalfoundation:material:323>,<artisanworktables:artisans_punch_lead>,"blacksmith");
/* ALUMINUM */  createPunch(<thermalfoundation:material:324>,<artisanworktables:artisans_punch_aluminum>,"blacksmith");
/* NICKEL   */  createPunch(<thermalfoundation:material:325>,<artisanworktables:artisans_punch_nickel>,"blacksmith");


//Carver ========================================================
RecipeBuilder.get("basic")
.setShaped([
[null, null, <primal:flint_knapp>],
[<primal:plant_cordage>, <minecraft:stick>, <primal:plant_cordage>], 
[<primal:flint_knapp>, null, null]])
.addOutput(<artisanworktables:artisans_carver_flint>)
.setMaximumTier(1)
.create();