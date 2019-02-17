import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.foundry.Casting;
import mods.botania.ManaInfusion;

// Removing ====================================================================
val craftingToDisable = [
  <botania:manaresource:3>,             #Livingwood twig
  <botania:manaresource:13>,            #Dreamwood twig
  <botania:manasteelpick>,              #Manasteel pickaxe
  <botania:manasteelshovel>,            #Manasteel shovel
  <botania:manasteelaxe>,               #Manasteel axe
  <botania:manasteelsword>,             #Manasteel sword
  <botania:elementiumpick>,             #Elementium pickaxe
  <botania:elementiumshovel>,           #Elementium shovel
  <botania:elementiumaxe>,              #Elementium axe
  <botania:elementiumsword>,            #Elementium sword

  <botania:dirtrod>,                    #Rod of the lands
  <botania:waterrod>,                   #Rod of the seas
  <botania:tornadorod>,                 #Rod of the skies
  <botania:cobblerod>,                  #Rod of the depths
  <botania:rainbowrod>,                 #Rod of the bifrost
  <botania:firerod>,                    #Rod of the hells
  <botania:skydirtrod>,                 #Rod of the highlands
  <botania:diviningrod>,                #Rod of the plentiful mantle
  <botania:exchangerod>,                #Rod of the shifting crust
  <botania:gravityrod>,                 #Rod of the shaded mesa
  <botania:missilerod>,                 #Rod of the unstable reservoir
  <botania:terraformrod>,               #Rod of the terra firma
  <naturalpledge:prism_rod>,            #Rod of the prismatic lake
  <botania:smeltrod>,                   #Rod of the molten core
  
  <botania:virus>,                      #Necodermal virus
  <botania:flowerbag>,                  #Flower punch
  <botania:manaweavehelm>,              #Manaweave cowl
  <botania:manaweavechest>,             #Manaweave robe top
  <botania:manaweavelegs>,              #Manaweave robe bottom
  <botania:manaweaveboots>,             #Manaweave boots
  <botania:manaresource:22>             #Manaweave cloth
] as IItemStack[];
scripts.globalfunctions.disableCraftings(craftingToDisable);

// Mana infusion remove
ManaInfusion.removeRecipe(<minecraft:flint>);             #Flint
ManaInfusion.removeRecipe(<botania:manaresource:23>);     #Mana powder

//Botania Dye ==================================================================
recipes.remove(<botania:dye:*>);

var BotaniaDye as IItemStack[IItemStack] = {
  <botania:dye>    : <botania:petal>,
  <botania:dye:1>  : <botania:petal:1>,
  <botania:dye:2>  : <botania:petal:2>,
  <botania:dye:3>  : <botania:petal:3>,
  <botania:dye:4>  : <botania:petal:4>,
  <botania:dye:5>  : <botania:petal:5>,
  <botania:dye:6>  : <botania:petal:6>,
  <botania:dye:7>  : <botania:petal:7>,
  <botania:dye:8>  : <botania:petal:8>,
  <botania:dye:9>  : <botania:petal:9>,
  <botania:dye:10> : <botania:petal:10>,
  <botania:dye:11> : <botania:petal:11>,
  <botania:dye:12> : <botania:petal:12>,
  <botania:dye:13> : <botania:petal:13>,
  <botania:dye:14> : <botania:petal:14>,
  <botania:dye:15> : <botania:petal:15>
};
for dye, petal in BotaniaDye {
  RecipeBuilder.get("farmer")
    .setShapeless([petal])
    .addTool(<ore:artisansMortar>, 5)
    .addOutput(dye)
    .create();
}
/* Conductive rebase
for i, botaniaDye in botaniaDyes {
    recipes.remove(botaniaDye);
    recipes.addShapeless(botaniaDye, [botaniaPetals[i], anyStone]);
}
*/
//Botania Petals
recipes.remove(<botania:petal:*>);

var BotaniaPetal as IItemStack[IItemStack] = {
  <botania:petal>    : <botania:flower>,
  <botania:petal:1>  : <botania:flower:1>,
  <botania:petal:2>  : <botania:flower:2>,
  <botania:petal:3>  : <botania:flower:3>,
  <botania:petal:4>  : <botania:flower:4>,
  <botania:petal:5>  : <botania:flower:5>,
  <botania:petal:6>  : <botania:flower:6>,
  <botania:petal:7>  : <botania:flower:7>,
  <botania:petal:8>  : <botania:flower:8>,
  <botania:petal:9>  : <botania:flower:9>,
  <botania:petal:10> : <botania:flower:10>,
  <botania:petal:11> : <botania:flower:11>,
  <botania:petal:12> : <botania:flower:12>,
  <botania:petal:13> : <botania:flower:13>,
  <botania:petal:14> : <botania:flower:14>,
  <botania:petal:15> : <botania:flower:15>
};
for petal, flower in BotaniaPetal {
  <ore:botaniaFlowers>.add(flower);
  RecipeBuilder.get("farmer")
    .setShapeless([flower])
    .addTool(<ore:artisansCutters>, 5)
    .addOutput(petal)
    .create();
}

//Petal Block
var PetalBlock as IItemStack[IItemStack] = {
  <botania:petalblock>    : <botania:petal>,
  <botania:petalblock:1>  : <botania:petal:1>,
  <botania:petalblock:2>  : <botania:petal:2>,
  <botania:petalblock:3>  : <botania:petal:3>,
  <botania:petalblock:4>  : <botania:petal:4>,
  <botania:petalblock:5>  : <botania:petal:5>,
  <botania:petalblock:6>  : <botania:petal:6>,
  <botania:petalblock:7>  : <botania:petal:7>,
  <botania:petalblock:8>  : <botania:petal:8>,
  <botania:petalblock:9>  : <botania:petal:9>,
  <botania:petalblock:10> : <botania:petal:10>,
  <botania:petalblock:11> : <botania:petal:11>,
  <botania:petalblock:12> : <botania:petal:12>,
  <botania:petalblock:13> : <botania:petal:13>,
  <botania:petalblock:14> : <botania:petal:14>,
  <botania:petalblock:15> : <botania:petal:15>
};

for Pblock, Ppetal in PetalBlock {
    recipes.remove(Pblock);
  RecipeBuilder.get("farmer")
    .setShaped([
      [Ppetal, Ppetal, Ppetal],
      [Ppetal, Ppetal, Ppetal],
      [Ppetal, Ppetal, Ppetal]])
    .addOutput(Pblock)
    .addTool(<ore:artisansPunch>, 20)
    .setMaximumTier(1)
    .create();
}

//Petal Apothecary [Botania]
RecipeBuilder.get("mason")
.setShaped([
[<minecraft:stone_slab>, <botania:fertilizer>, <minecraft:stone_slab>],
[null, <minecraft:stone>, null],
[<minecraft:stone_slab>, <minecraft:stone>, <minecraft:stone_slab>]])
.addOutput(<botania:altar>)
.setMaximumTier(1)
.addTool(<ore:artisansHammer>, 30)
.create();

var otherApothecary as IItemStack[IItemStack] = {
  <botania:altar:1> : <botania:dye:5>,
  <botania:altar:2> : <botania:dye:4>,
  <botania:altar:3> : <botania:dye:12>,
  <botania:altar:4> : <botania:dye:10>,
  <botania:altar:5> : <botania:dye:13>,
  <botania:altar:6> : <botania:dye:1>,
  <botania:altar:7> : <botania:dye:9>,
  <botania:altar:8> : <botania:dye:14>
};
for altar, Adye in otherApothecary {
  RecipeBuilder.get("mason")
    .setShaped([
      [null, Adye, null],
      [null, <botania:altar>, null],
      [null, <minecraft:stone>, null]])
    .addOutput(altar)
    .addTool(<ore:artisansHammer>, 20)
    .setMaximumTier(1)
    .create();
}

//Runes
mods.botania.RuneAltar.removeRecipe(<botania:rune:*>);
    #Blank
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:livingrock0slab>, null],
    [<botania:livingrock0slab>, <ore:botaniaFlowers>, <botania:livingrock0slab>],
    [null, <botania:livingrock0slab>,null]])
  .setFluid(<liquid:liquidmanasteel> * 144)
  .addOutput(<contenttweaker:blank_rune>)
  .addTool(<ore:artisansCarver>, 25)
  .create();
    #add BM slate to allCraft runes
    #Water
mods.botania.RuneAltar.addRecipe(<botania:rune>*2,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:11>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
<harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
    #Fire
mods.botania.RuneAltar.addRecipe(<botania:rune:1>*2,
  [<botania:manasteelaxe>, <contenttweaker:blank_rune>, <botania:petalblock:14>, <ore:ingotManasteel>, <ore:powderMana>, <ore:ingotBrickNether>,
<ore:gunpowder>, <ore:dustBlaze>], 5000);
    #Earth
mods.botania.RuneAltar.addRecipe(<botania:rune:2>*2,
  [<botania:manasteelpick>, <contenttweaker:blank_rune>, <botania:petalblock:13>, <ore:ingotManasteel>, <ore:powderMana>, <minecraft:stone>,
<ore:blockCoal>, <minecraft:tallgrass:1>], 5000);
    #Air
mods.botania.RuneAltar.addRecipe(<botania:rune:3>*2,
  [<botania:manasteelsword>, <contenttweaker:blank_rune>, <botania:petalblock:3>, <ore:ingotManasteel>, <ore:powderMana>, <ore:feather>,
  <ore:string>, <minecraft:carpet:*>], 5000);
    #Spring
mods.botania.RuneAltar.addRecipe(<botania:rune:4>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:5>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:1>,
<botania:rune>, <naturalpledge:seal_sapling>, <naturalpledge:circuit_sapling>, <naturalpledge:calico_sapling>], 5000);
    #Summer
mods.botania.RuneAltar.addRecipe(<botania:rune:5>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:4>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:2>,
<botania:rune:3>, <minecraft:melon>, <minecraft:sand>, <minecraft:sand>, <ore:blockSlime>], 5000);
    #Autumn
mods.botania.RuneAltar.addRecipe(<botania:rune:6>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:1>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:1>,
<botania:rune:3>, <minecraft:deadbush>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>], 5000);
    #Winter
mods.botania.RuneAltar.addRecipe(<botania:rune:7>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune>,
<botania:rune:2>, <minecraft:snow>, <minecraft:snow>, <minecraft:wool>, <ore:foodIcecream>], 5000);
    #Mana
mods.botania.RuneAltar.addRecipe(<botania:rune:8>,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:10>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>,
<ore:powderMana>, <ore:manaPearl>, <ore:manaDiamond>, <ore:clothManaweave>, <botanicadds:mana_lapis>], 5000);
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
  #Rod of the lands
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:flakeFlint>, <contenttweaker:compressed_fert_dirt>],
    [<ore:flakeFlint>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:flakeFlint>],
    [<ore:runeEarthB>, <ore:flakeFlint>, null]])
  .addOutput(<botania:dirtrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the seas
RecipeBuilder.get("mage")
  .setShaped([
    [null, <harvestcraft:freshwateritem>, <minecraft:potion>.withTag({Potion: "minecraft:mundane"})],
    [<harvestcraft:freshwateritem>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <harvestcraft:freshwateritem>],
    [<ore:runeWaterB>, <harvestcraft:freshwateritem>, null]])
  .addOutput(<botania:waterrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the skies
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:feather>, <roots:fairy_dust>],
    [<ore:feather>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:feather>],
    [<ore:runeAirB>, <ore:feather>, null]])
  .addOutput(<botania:tornadorod>.withTag({}))
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the depths
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:runeFireB>, <contenttweaker:compressed_cob>],
    [<chisel:lavastone>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeWaterB>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <chisel:waterstone>, null]])
  .addOutput(<botania:cobblerod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the bifrost
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:elvenPixieDust>, <botania:storage:4>],
    [<roots:fairy_dust>, <ore:dreamwoodTwig>, <ore:elvenPixieDust>],
    [<ore:dreamwoodTwig>, <roots:fairy_dust>, null]])
  .addOutput(<botania:rainbowrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the hells
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:quartzBlaze>, <ore:blockBlaze>],
    [<ore:dustSmallBlaze>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:quartzBlaze>],
    [<ore:runeFireB>, <ore:dustSmallBlaze>, null]])
  .addOutput(<botania:firerod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the highlands
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:elvenPixieDust>, <botania:spark>],
    [<ore:feather>, <botania:dirtrod>, <ore:elvenPixieDust>],
    [<ore:runeAirB>, <ore:feather>, null]])
  .addOutput(<botania:skydirtrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the plentiful mantle
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:quartzRed>, <ore:manaDiamond>],
    [<ore:quartzBlaze>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:quartzLavender>],
    [<ore:runeEarthB>, <ore:quartzSunny>, null]])
  .addOutput(<botania:diviningrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the shifting crust
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:obsidian>, <ore:runeSlothB>],
    [<botania:elementiumshovel>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:obsidian>],
    [<roots:petal_dust>.withTag({spell: "spell_azure_bluet"}), <botania:elementiumpick>, null]])
  .addOutput(<botania:exchangerod>.withTag({}))
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the shaded mesa
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:dreamwoodTwig>, <ore:elvenDragonstone>],
    [<ore:runeAirB>, <botania:specialflower>.withTag({type: "daffomill"}), <ore:dreamwoodTwig>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeGreedB>, null]])
  .addOutput(<botania:gravityrod>.withTag({dist: -1.0, ticksCooldown: 0, ticksTillExpire: -28, target: -1}))
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the unstable reservoir
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:eternalLifeEssence>, <ore:elvenDragonstone>, <ore:elvenDragonstone>],
    [null, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:elvenDragonstone>],
    [<ore:dreamwoodTwig>, null, <ore:eternalLifeEssence>]])
  .addOutput(<botania:missilerod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the terra firma
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwoodTwig>, <ore:runeWinterB>, <ore:blockTerrasteel>],
    [<ore:runeAutumnB>, <botania:skydirtrod>, <ore:runeSpringB>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeSummerB>, <ore:dreamwoodTwig>]])
  .addOutput(<botania:terraformrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the prismatic lake
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:irisDyeRainbow>, <roots:petal_dust>.withTag({spell: "spell_white_tulip"})],
    [<ore:dreamwoodTwig>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:irisDyeRainbow>],
    [<ore:blockGlowstone>, <ore:dreamwoodTwig>, null]])
  .addOutput(<naturalpledge:prism_rod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Rod of the molten core
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwoodTwig>, <ore:runeFireB>, <ore:blockBlaze>],
    [<minecraft:lava_bucket>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeFireB>],
    [<minecraft:furnace>, <minecraft:lava_bucket>, <ore:dreamwoodTwig>]])
  .addOutput(<botania:smeltrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .create();

//Armor
    #ManasteelSet
var mold as IItemStack[] = [<foundry:mold:12>, <foundry:mold:13>, <foundry:mold:14>, <foundry:mold:15>];
for i in mold {
    Casting.removeRecipe(<liquid:liquidmanasteel>, i);
    Casting.removeRecipe(<liquid:liquidelvenelementium>, i);
}
var ManasteelSet as IItemStack[] = [
  <botania:manasteelhelm>,
  <botania:manasteelchest>,
  <botania:manasteellegs>,
  <botania:manasteelboots>
];
for i in ManasteelSet {
  recipes.remove(i);
}
Casting.addRecipe(<botania:manasteelhelm>  , <liquid:liquidmanasteel> * 720  , <foundry:mold:12>, <contenttweaker:blankmanahelmet>     , 500);
Casting.addRecipe(<botania:manasteelchest> , <liquid:liquidmanasteel> * 1152 , <foundry:mold:13>, <contenttweaker:blankmanachestplate> , 800);
Casting.addRecipe(<botania:manasteellegs>  , <liquid:liquidmanasteel> * 1008 , <foundry:mold:14>, <contenttweaker:blankmanaleggings>   , 700);
Casting.addRecipe(<botania:manasteelboots> , <liquid:liquidmanasteel> * 576  , <foundry:mold:15>, <contenttweaker:blankmanaboots>      , 400);
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
Casting.addRecipe(<botania:elementiumhelm>  , <liquid:liquidelvenelementium> * 720  , <foundry:mold:12>, <contenttweaker:blankelementiumhelmet>     , 500);
Casting.addRecipe(<botania:elementiumchest> , <liquid:liquidelvenelementium> * 1152 , <foundry:mold:13>, <contenttweaker:blankelementiumchestplate> , 800);
Casting.addRecipe(<botania:elementiumlegs>  , <liquid:liquidelvenelementium> * 1008 , <foundry:mold:14>, <contenttweaker:blankelementiumleggings>   , 700);
Casting.addRecipe(<botania:elementiumboots> , <liquid:liquidelvenelementium> * 576  , <foundry:mold:15>, <contenttweaker:blankelementiumboots>      , 400);
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
    #ClothManaweave
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:manaString>, <ore:manaString>, null],
    [<ore:manaString>, <ore:manaString>, null],
    [null, null, null]])
  .addOutput(<botania:manaresource:22>)
  .addTool(<ore:artisansNeedle>, 5)
  .setMaximumTier(1)
  .create();
      #ManaweaveHelm
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [null, null, null]])
  .addOutput(<botania:manaweavehelm>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .create();
      #ManaweaveChest
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]])
  .addOutput(<botania:manaweavechest>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .create();
      #ManaweaveLeggins
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>]])
  .addOutput(<botania:manaweavelegs>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .create();
      #ManaweaveBoots
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [null, null, null]])
  .addOutput(<botania:manaweaveboots>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .create();

//Slabs
var CraftSlabs as IItemStack[IItemStack] = {
  <botania:livingwood0slab>        : <botania:livingwood>,
  <botania:livingrock0slab>        : <botania:livingrock>,
  <botania:livingwood1slab>        : <botania:livingwood:1>,
  <botania:livingrock1slab>        : <botania:livingrock:1>,
  <botania:dreamwood0slab>         : <botania:dreamwood>,
  <botania:dreamwood1slab>         : <botania:dreamwood:1>,
  <botania:quartzslabdarkhalf>     : <botania:quartztypedark>,
  <botania:quartzslabmanahalf>     : <botania:quartztypemana>,
  <botania:quartzslabblazehalf>    : <botania:quartztypeblaze>,
  <botania:quartzslablavenderhalf> : <botania:quartztypelavender>,
  <botania:quartzslabredhalf>      : <botania:quartztypered>,
  <botania:quartzslabelfhalf>      : <botania:quartztypeelf>,
  <botania:quartzslabsunnyhalf>    : <botania:quartztypesunny>,
  <botania:biomestonea0slab>       : <botania:biomestonea>,
  <botania:biomestonea1slab>       : <botania:biomestonea:1>,
  <botania:biomestonea2slab>       : <botania:biomestonea:2>,
  <botania:biomestonea3slab>       : <botania:biomestonea:3>,
  <botania:biomestonea4slab>       : <botania:biomestonea:4>,
  <botania:biomestonea5slab>       : <botania:biomestonea:5>,
  <botania:biomestonea6slab>       : <botania:biomestonea:6>,
  <botania:biomestonea7slab>       : <botania:biomestonea:7>,
  <botania:biomestonea8slab>       : <botania:biomestonea:8>,
  <botania:biomestonea9slab>       : <botania:biomestonea:9>,
  <botania:biomestonea10slab>      : <botania:biomestonea:10>,
  <botania:biomestonea11slab>      : <botania:biomestonea:11>,
  <botania:biomestonea12slab>      : <botania:biomestonea:12>,
  <botania:biomestonea13slab>      : <botania:biomestonea:13>,
  <botania:biomestonea14slab>      : <botania:biomestonea:14>,
  <botania:biomestonea15slab>      : <botania:biomestonea:15>,
  <botania:biomestoneb0slab>       : <botania:biomestoneb>,
  <botania:biomestoneb1slab>       : <botania:biomestoneb:1>,
  <botania:biomestoneb2slab>       : <botania:biomestoneb:2>,
  <botania:biomestoneb3slab>       : <botania:biomestoneb:3>,
  <botania:biomestoneb4slab>       : <botania:biomestoneb:4>,
  <botania:biomestoneb5slab>       : <botania:biomestoneb:5>,
  <botania:biomestoneb6slab>       : <botania:biomestoneb:6>,
  <botania:biomestoneb7slab>       : <botania:biomestoneb:7>,
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
    #Wooden Stairs
var WoodStairs as IItemStack[IItemStack] = {
  <botania:livingwood0stairs>        : <botania:livingwood>,
  <botania:livingwood1stairs>        : <botania:livingwood:1>,
  <botania:dreamwood0stairs>         : <botania:dreamwood>,
  <botania:dreamwood1stairs>         : <botania:dreamwood:1>,
  <botania:shimmerwoodplanks0stairs> : <botania:shimmerwoodplanks>
};

for stairs, block in WoodStairs {
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
    #Stone Stairs
var StoneStairs as IItemStack[IItemStack] = {
  <botania:livingrock0stairs>      : <botania:livingrock>,
  <botania:livingrock1stairs>      : <botania:livingrock:1>,
  <botania:quartzstairsdark>       : <botania:quartztypedark>,
  <botania:quartzstairsmana>       : <botania:quartztypemana>,
  <botania:quartzstairsblaze>      : <botania:quartztypeblaze>,
  <botania:quartzstairslavender>   : <botania:quartztypelavender>,
  <botania:quartzstairsred>        : <botania:quartztypered>,
  <botania:quartzstairself>        : <botania:quartztypeelf>,
  <botania:quartzstairssunny>      : <botania:quartztypesunny>,
  <botania:biomestonea0stairs>     : <botania:biomestonea>,
  <botania:biomestonea1stairs>     : <botania:biomestonea:1>,
  <botania:biomestonea2stairs>     : <botania:biomestonea:2>,
  <botania:biomestonea3stairs>     : <botania:biomestonea:3>,
  <botania:biomestonea4stairs>     : <botania:biomestonea:4>,
  <botania:biomestonea5stairs>     : <botania:biomestonea:5>,
  <botania:biomestonea6stairs>     : <botania:biomestonea:6>,
  <botania:biomestonea7stairs>     : <botania:biomestonea:7>,
  <botania:biomestonea8stairs>     : <botania:biomestonea:8>,
  <botania:biomestonea9stairs>     : <botania:biomestonea:9>,
  <botania:biomestonea10stairs>    : <botania:biomestonea:10>,
  <botania:biomestonea11stairs>    : <botania:biomestonea:11>,
  <botania:biomestonea12stairs>    : <botania:biomestonea:12>,
  <botania:biomestonea13stairs>    : <botania:biomestonea:13>,
  <botania:biomestonea14stairs>    : <botania:biomestonea:14>,
  <botania:biomestonea15stairs>    : <botania:biomestonea:15>,
  <botania:biomestoneb0stairs>     : <botania:biomestoneb>,
  <botania:biomestoneb1stairs>     : <botania:biomestoneb:1>,
  <botania:biomestoneb2stairs>     : <botania:biomestoneb:2>,
  <botania:biomestoneb3stairs>     : <botania:biomestoneb:3>,
  <botania:biomestoneb4stairs>     : <botania:biomestoneb:4>,
  <botania:biomestoneb5stairs>     : <botania:biomestoneb:5>,
  <botania:biomestoneb6stairs>     : <botania:biomestoneb:6>,
  <botania:biomestoneb7stairs>     : <botania:biomestoneb:7>,
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
    .addTool(<ore:toolGallagher>, 10)
    .create();
}

// Mana powder
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <ore:rootsbark>, 500);

// Livingwood twig
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:livingwood>],
    [<ore:livingwood>]])
  .addOutput(<botania:manaresource:3>)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();

// Dreamwood twig
RecipeBuilder.get("carpenter")
  .setShaped([
    [<ore:dreamwood>],
    [<ore:dreamwood>]])
  .addOutput(<botania:manaresource:13>)
  .addTool(<ore:artisansHandsaw>, 10)
  .create();

//Lilys
mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "sunbless"}), [<ore:petalOrange>, <ore:petalOrange>, <ore:petalYellow>, <ore:petalYellow>, <botania:fertilizer>]);

mods.botania.Apothecary.addRecipe(<botania:specialflower>.withTag({type: "moonbless"}), [<ore:petalPink>, <ore:petalPink>, <ore:petalPurple>, <ore:petalPurple>, <botania:fertilizer>]);

//Mana Pool [Botania]
RecipeBuilder.get("mason")
.setShaped([
[null, null, null],
[<botania:livingrock0slab>, <botania:fertilizer>, <botania:livingrock0slab>],
[<botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>]])
.addOutput(<botania:pool>)
.setMaximumTier(1)
.addTool(<ore:artisansHammer>, 30)
.create();

//Diluted Mana Pool [Botania]
RecipeBuilder.get("mason")
.setShaped([
[null, null, null],
[<botania:livingrock0slab>, <botania:fertilizer>, <botania:livingrock0slab>],
[<botania:livingrock0slab>, <botania:livingrock>, <botania:livingrock0slab>]])
.addOutput(<botania:pool:2>)
.setMaximumTier(1)
.addTool(<ore:artisansHammer>, 30)
.create();

//Fabulous Mana Pool [Botania]
RecipeBuilder.get("mason")
.setShaped([
[null, null, null],
[<botania:shimmerrock0slab>, <botania:fertilizer>, <botania:shimmerrock0slab>],
[<botania:shimmerrock0slab>, <botania:shimmerrock0slab>, <botania:shimmerrock0slab>]])
.addOutput(<botania:pool:3>)
.setMaximumTier(1)
.addTool(<ore:artisansHammer>, 50)
.create();

//Floral Ferilizer
RecipeBuilder.get("farmer")
.setShaped([
[<minecraft:dye:15>, <botania:dye:*>, <botania:dye:*>],
[<botania:dye:*>, <botania:dye:*>, null],
[null, null, null]])
.addOutput(<botania:fertilizer>)
.addTool(<ore:artisansMortar>, 10)
.create();

//Floral Fertilizer
RecipeBuilder.get("farmer")
.setShaped([
[<minecraft:dye:15>, <minecraft:dye:11>, <minecraft:dye:11>],
[<minecraft:dye:1>, <minecraft:dye:1>, null],
[null, null, null]])
.addOutput(<botania:fertilizer>)
.addTool(<ore:artisansMortar>, 20)
.create();

  #Necodermal virus
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenPixieDust>, <botania:vineball>, <minecraft:magma_cream>],
    [<minecraft:fermented_spider_eye>, <minecraft:ender_eye>, <ore:skullZombie>],
    [null, null, null]])
  .addOutput(<botania:virus>)
  .addTool(<ore:artisansPunch>, 25)
  .create();

  #Flower punch
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <botania:petal>, <ore:wool>],
    [<ore:wool>, <ore:materialCloth>, <ore:wool>],
    [<botania:petal>, <ore:wool>, <botania:petal>]])
  .addOutput(<botania:flowerbag>)
  .addTool(<ore:artisansNeedle>, 35)
  .setMaximumTier(1)
  .create();

//Disable Flint [ExtraBotany]
mods.extrabotany.Pedestal.remove(<minecraft:flint>, <minecraft:gravel>);

//Mana Spreader
RecipeBuilder.get("mage")
.setShaped([
[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>],
[<minecraft:gold_ingot>, <ore:petal_block>, null],
[<botania:livingwood>, <botania:livingwood>, <botania:livingwood>]])
.addOutput(<botania:spreader>)
.addTool(<ore:artisansFramingHammer>, 75)
.addTool(<ore:artisansChisel>, 75)
.create();
