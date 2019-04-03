#priority 10

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;

import mods.artisanworktables.builder.RecipeBuilder;

import mods.foundry.Casting;

import mods.botania.ManaInfusion;

import mods.ItemStages.addItemStage;

import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.recipe.RecipeMap;


// Removing ====================================================================
val craftingToDisable = [
  <naturalpledge:prism_rod>            #Rod of the prismatic lake
] as IItemStack[];
scripts.globalfunctions.disableCraftings(craftingToDisable);

    #Lust
mods.botania.RuneAltar.addRecipe(<botania:rune:9>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:2>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Gluttony
mods.botania.RuneAltar.addRecipe(<botania:rune:10>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:12>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Greed
mods.botania.RuneAltar.addRecipe(<botania:rune:11>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:6>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Sloth
mods.botania.RuneAltar.addRecipe(<botania:rune:12>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:7>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Wrath
mods.botania.RuneAltar.addRecipe(<botania:rune:13>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:8>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Envy
mods.botania.RuneAltar.addRecipe(<botania:rune:14>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:15>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Pride
mods.botania.RuneAltar.addRecipe(<botania:rune:15>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:9>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
  <harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);

// Rod's =======================================================================
  #Rod of the prismatic lake                                                    //goto naturalpledge
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:irisDyeRainbow>, <roots:petal_dust>.withTag({spell: "spell_white_tulip"})],
    [<ore:dreamwoodTwig>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:irisDyeRainbow>],
    [<ore:blockGlowstone>, <ore:dreamwoodTwig>, null]])
  .addOutput(<naturalpledge:prism_rod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

//Armor
    #ManasteelSet
var ManasteelSet as IItemStack[] = [
  <botania:manasteelhelm>,
  <botania:manasteelchest>,
  <botania:manasteellegs>,
  <botania:manasteelboots>
];
for i in ManasteelSet {
  recipes.remove(i);
}

    #ElementiumSet
var ElementiumSet as IItemStack[] = [
  <botania:elementiumhelm>,
  <botania:elementiumchest>,
  <botania:elementiumlegs>,
  <botania:elementiumboots>
];
for i in ElementiumSet {
  recipes.remove(i);
}

    #TerrasteelSet
var TerrasteelSet as IItemStack[] = [
  <botania:terrasteelhelm>,
  <botania:terrasteelchest>,
  <botania:terrasteellegs>,
  <botania:terrasteelboots>
];
for i in TerrasteelSet {
  recipes.remove(i);
}

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <botania:elementiumhelm>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotTerrasteel>, <ore:runeManaB>, <roots:petal_dust>.withTag({spell: "spell_poppy"}), <ore:runeLustB>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>]])
  .setSecondaryIngredients([<foundry:mold:12>])
  .setConsumeSecondaryIngredients(false)
  .addOutput(<contenttweaker:blankterrasteelhelmet>)
  .addTool(<ore:artisansSpanner>, 250)
  .addTool(<ore:artisansHammer>, 500)
  .setMinimumTier(2)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:runeGluttonyB>, <botania:elementiumchest>, <ore:runeGreedB>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotThundersteel>, <roots:petal_dust>.withTag({spell: "spell_rose"}), <ore:ingotThundersteel>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>]])
  .setSecondaryIngredients([<foundry:mold:13>])
  .setConsumeSecondaryIngredients(false)
  .addOutput(<contenttweaker:blankterrasteelchestplate>)
  .addTool(<ore:artisansSpanner>, 250)
  .addTool(<ore:artisansHammer>, 500)
  .setMinimumTier(2)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwoodTwig>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:livingwoodTwig>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <botania:elementiumlegs>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <roots:petal_dust>.withTag({spell: "spell_red_tulip"}), <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:runeSlothB>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:runeWrathB>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>]])
  .setSecondaryIngredients([<foundry:mold:14>])
  .setConsumeSecondaryIngredients(false)
  .addOutput(<contenttweaker:blankterrasteelleggings>)
  .addTool(<ore:artisansSpanner>, 250)
  .addTool(<ore:artisansHammer>, 500)
  .setMinimumTier(2)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwoodTwig>, <ore:ingotThundersteel>, <roots:petal_dust>.withTag({spell: "spell_blue_orchid"}), <ore:ingotThundersteel>, <ore:livingwoodTwig>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <ore:runeEnvyB>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotThundersteel>, <ore:ingotTerrasteel>, <botania:elementiumboots>, <ore:ingotTerrasteel>, <ore:ingotThundersteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:runePrideB>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>]])
  .setSecondaryIngredients([<foundry:mold:15>])
  .setConsumeSecondaryIngredients(false)
  .addOutput(<contenttweaker:blankterrasteelboots>)
  .addTool(<ore:artisansSpanner>, 250)
  .addTool(<ore:artisansHammer>, 500)
  .setMinimumTier(2)
  .create();

Casting.addRecipe(<botania:terrasteelhelm>  , <liquid:liquidterrasteel> * 720  , <foundry:mold:12>, <contenttweaker:blankterrasteelhelmet>     , 500);
Casting.addRecipe(<botania:terrasteelchest> , <liquid:liquidterrasteel> * 1152 , <foundry:mold:13>, <contenttweaker:blankterrasteelchestplate> , 800);
Casting.addRecipe(<botania:terrasteellegs>  , <liquid:liquidterrasteel> * 1008 , <foundry:mold:14>, <contenttweaker:blankterrasteelleggings>   , 700);
Casting.addRecipe(<botania:terrasteelboots> , <liquid:liquidterrasteel> * 576  , <foundry:mold:15>, <contenttweaker:blankterrasteelboots>      , 400);


//Slabs
var CraftSlabs as IItemStack[IItemStack] = {
//  <botania:livingwood0slab>        : <botania:livingwood>,
  <botania:livingrock0slab>        : <botania:livingrock>,
//  <botania:livingwood1slab>        : <botania:livingwood:1>,
  <botania:livingrock1slab>        : <botania:livingrock:1>,
  <botania:dreamwood0slab>         : <botania:dreamwood>,
  <botania:dreamwood1slab>         : <botania:dreamwood:1>,
  <botania:pavement0slab>          : <botania:pavement>,
  <botania:pavement1slab>          : <botania:pavement:1>,
  <botania:pavement2slab>          : <botania:pavement:2>,
  <botania:pavement3slab>          : <botania:pavement:3>,
  <botania:pavement4slab>          : <botania:pavement:4>,
  <botania:pavement5slab>          : <botania:pavement:5>,
  <botania:shimmerrock0slab>       : <botania:shimmerrock>,
  <botania:shimmerwoodplanks0slab> : <botania:shimmerwoodplanks>
};

for slab, block in CraftSlabs {
    recipes.remove(slab);
  RecipeBuilder.get("mason")
    .setShapeless([block])
    .addOutput(slab*2)
    .addTool(<ore:artisansHandsaw>, 10)
    .create();
}
//Stairs
    #Stone Stairs
var StoneStairs as IItemStack[IItemStack] = {
  <botania:pavement0stairs>        : <botania:pavement>,
  <botania:pavement1stairs>        : <botania:pavement:1>,
  <botania:pavement2stairs>        : <botania:pavement:2>,
  <botania:pavement3stairs>        : <botania:pavement:3>,
  <botania:pavement4stairs>        : <botania:pavement:4>,
  <botania:pavement5stairs>        : <botania:pavement:5>,
  <botania:shimmerrock0stairs>     : <botania:shimmerrock>
 };

for stairs, block in StoneStairs {
    recipes.remove(stairs);
  RecipeBuilder.get("mason")
    .setShaped([
      [block, null, null],
      [block, block, null],
      [block, block, block]])
    .addOutput(stairs*4)
    .addTool(<ore:artisansFramingHammer>, 10)
    .create();
}

// Mana powder
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:rootsbark>, 500);



// Dreamwood twig
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:dreamwood>],
    [<ore:dreamwood>]])
  .addOutput(<botania:manaresource:13>)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();





//Disable Flint [ExtraBotany]
mods.extrabotany.Pedestal.remove(<minecraft:flint>, <minecraft:gravel>);

//Funciotn move globalfunctions
function makeSlabToBlockGroover(output as IItemStack, slab as IIngredient){
  RecipeBuilder.get("mason")
    .setShaped([
      [slab],
      [slab]])
    .addOutput(output)
    .addTool(<ore:artisansGroover>, 5)
    .create();
}
function makeBlocksTo2BlockChisel(output as IItemStack, block as IIngredient){
  RecipeBuilder.get("mason")
    .setShaped([
      [block],
      [block]])
    .addOutput(output * 2)
    .addTool(<ore:artisansChisel>, 10)
    .create();
}
function make4BlocksTo4BlockChisel(output as IItemStack, block as IIngredient){
  RecipeBuilder.get("mason")
    .setShaped([
      [block, block],
      [block, block]])
    .addOutput(output * 4)
    .addTool(<ore:artisansChisel>, 20)
    .create();
}
function makeBlockToSlabHandsaw(output as IItemStack, block as IIngredient){
  RecipeBuilder.get("mason")
    .setShapeless([block])
    .addOutput(output * 2)
    .addTool(<ore:artisansHandsaw>, 10)
    .create();
}
function makeStairsFramingHammer(output as IItemStack, block as IIngredient){
  RecipeBuilder.get("mason")
    .setShaped([
      [block, null, null],
      [block, block, null],
      [block, block, block]])
    .addOutput(output * 4)
    .addTool(<ore:artisansFramingHammer>, 20)
    .create();
}
function makeWallsCarver(output as IItemStack, block as IIngredient){
  RecipeBuilder.get("mason")
    .setShaped([
      [block, block, block],
      [block, block, block]])
    .addOutput(output * 6)
    .addTool(<ore:artisansCarver>, 30)
    .create();
}
var quartzIngredient as IIngredient[][] = [
  [<botania:quartztypedark>,     <botania:quartztypedark:1>,      <botania:quartztypedark:2>,     <botania:quartzslabdarkhalf>,     <botania:quartzstairsdark>],
  [<botania:quartztypemana>,     <botania:quartztypemana:1>,      <botania:quartztypemana:2>,     <botania:quartzslabmanahalf>,     <botania:quartzstairsmana>],
  [<botania:quartztypeblaze>,    <botania:quartztypeblaze:1>,     <botania:quartztypeblaze:2>,    <botania:quartzslabblazehalf>,    <botania:quartzstairsblaze>],
  [<botania:quartztypelavender>, <botania:quartztypelavender:1>,  <botania:quartztypelavender:2>, <botania:quartzslablavenderhalf>, <botania:quartzstairslavender>],
  [<botania:quartztypered>,	     <botania:quartztypered:1>,       <botania:quartztypered:2>,	    <botania:quartzslabredhalf>,      <botania:quartzstairsred>],
  [<botania:quartztypeelf>,      <botania:quartztypeelf:1>,       <botania:quartztypeelf:2>,      <botania:quartzslabelfhalf>,      <botania:quartzstairself>],
  [<botania:quartztypesunny>,    <botania:quartztypesunny:1>,     <botania:quartztypesunny:2>,    <botania:quartzslabsunnyhalf>,    <botania:quartzstairssunny>]
];

for i in quartzIngredient {
  makeSlabToBlockGroover    (i[1].items[0], i[3]);
  makeBlocksTo2BlockChisel  (i[2].items[0], i[0]);
  makeBlockToSlabHandsaw    (i[3].items[0], i[0]);
  makeStairsFramingHammer   (i[4].items[0], i[0]);
}

var metamorphicIngredient as IIngredient[][] = [
  #Forest
  [<botania:biomestonea>, <botania:biomestonea:8>, <botania:biomestoneb>, <botania:biomestoneb:8>, <botania:biomestonea0stairs>, <botania:biomestonea0slab>,
  <botania:biomestonea8stairs>, <botania:biomestonea8slab>, <botania:biomestoneb0stairs>, <botania:biomestoneb0slab>, <botania:biomestonea0wall>],
  #Plains
  [<botania:biomestonea:1>, <botania:biomestonea:9>, <botania:biomestoneb:1>, <botania:biomestoneb:9>, <botania:biomestonea1stairs>, <botania:biomestonea1slab>,
  <botania:biomestonea9stairs>, <botania:biomestonea9slab>, <botania:biomestoneb1stairs>, <botania:biomestoneb1slab>, <botania:biomestonea0wall:1>],
  #Mountain
  [<botania:biomestonea:2>, <botania:biomestonea:10>, <botania:biomestoneb:2>, <botania:biomestoneb:10>, <botania:biomestonea2stairs>, <botania:biomestonea2slab>,
  <botania:biomestonea10stairs>, <botania:biomestonea10slab>, <botania:biomestoneb2stairs>, <botania:biomestoneb2slab>, <botania:biomestonea0wall:2>],
  #Fungal
  [<botania:biomestonea:3>, <botania:biomestonea:11>, <botania:biomestoneb:3>, <botania:biomestoneb:11>, <botania:biomestonea3stairs>, <botania:biomestonea3slab>,
  <botania:biomestonea11stairs>, <botania:biomestonea11slab>, <botania:biomestoneb3stairs>, <botania:biomestoneb3slab>, <botania:biomestonea0wall:3>],
  #Swamp
  [<botania:biomestonea:4>, <botania:biomestonea:12>, <botania:biomestoneb:4>, <botania:biomestoneb:12>, <botania:biomestonea4stairs>, <botania:biomestonea4slab>,
  <botania:biomestonea12stairs>, <botania:biomestonea12slab>, <botania:biomestoneb4stairs>, <botania:biomestoneb4slab>, <botania:biomestonea0wall:4>],
  #Desert
  [<botania:biomestonea:5>, <botania:biomestonea:13>, <botania:biomestoneb:5>, <botania:biomestoneb:13>, <botania:biomestonea5stairs>, <botania:biomestonea5slab>,
  <botania:biomestonea13stairs>, <botania:biomestonea13slab>, <botania:biomestoneb5stairs>, <botania:biomestoneb5slab>, <botania:biomestonea0wall:5>],
  #Taiga
  [<botania:biomestonea:6>, <botania:biomestonea:14>, <botania:biomestoneb:6>, <botania:biomestoneb:14>, <botania:biomestonea6stairs>, <botania:biomestonea6slab>,
  <botania:biomestonea14stairs>, <botania:biomestonea14slab>, <botania:biomestoneb6stairs>, <botania:biomestoneb6slab>, <botania:biomestonea0wall:6>],
  #Mesa
  [<botania:biomestonea:7>, <botania:biomestonea:15>, <botania:biomestoneb:7>, <botania:biomestoneb:15>, <botania:biomestonea7stairs>, <botania:biomestonea7slab>,
  <botania:biomestonea15stairs>, <botania:biomestonea15slab>, <botania:biomestoneb7stairs>, <botania:biomestoneb7slab>, <botania:biomestonea0wall:7>]
];
var stage = stages.chisel_group;
for i in metamorphicIngredient {
  for Item in i {
		addItemStage(stage, Item);
  }
  makeSlabToBlockGroover     (i[0].items[0], i[5]);
  makeSlabToBlockGroover     (i[1].items[0], i[7]);
  makeSlabToBlockGroover     (i[2].items[0], i[9]);
  make4BlocksTo4BlockChisel  (i[2].items[0], i[0]);
  make4BlocksTo4BlockChisel  (i[3].items[0], i[2]);
  makeBlockToSlabHandsaw     (i[5].items[0], i[0]);
  makeBlockToSlabHandsaw     (i[7].items[0], i[1]);
  makeBlockToSlabHandsaw     (i[9].items[0], i[2]);
  makeStairsFramingHammer    (i[4].items[0], i[0]);
  makeStairsFramingHammer    (i[6].items[0], i[1]);
  makeStairsFramingHammer    (i[8].items[0], i[2]);
  makeWallsCarver            (i[10].items[0], i[1]);
}
