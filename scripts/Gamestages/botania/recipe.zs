#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;

import mods.foundry.Casting;

/*
function fromRecipe(tableName as string,
                    stage as string,
                    toInput as IIngredient[][],
                    toOut as IItemStack,
                    tools1 as IIngredient, tools2 as IIngredient, tools3 as IIngredient,
                    Tdamage1 as int, Tdamage2 as int, Tdamage3 as int) {

  RecipeBuilder.get(tableName)
      .setShaped(toInput)
      .addOutput(toOut)
      .addTool(tools1, Tdamage1)
      .addRequirement(GameStages.anyOf([stage]))
      .create();
}

fromRecipe("carpenter", stages.bot_livingRock, [
    [<botania:livingrock:1>, <botania:livingrock:1>],
    [<botania:livingrock:1>, <botania:livingrock:1>]],
  <botania:livingrock:4> * 4, <ore:artisansFramingHammer>, null, null, 10, 0, 0);
*/

var Dye = <botania:dye>;
var Petal = <botania:petal>;
var PetalBlock = <botania:petalblock>;
var Flower = <botania:flower>;
var Gf = <botania:shinyflower>;

//==============================================================================bot_flowers
for i in 0 to 16 {
  Dye = <botania:dye>.definition.makeStack(i);
  Petal = <botania:petal>.definition.makeStack(i);
  PetalBlock = <botania:petalblock>.definition.makeStack(i);
  Flower = <botania:flower>.definition.makeStack(i);
  Gf = <botania:shinyflower>.definition.makeStack(i);

  //Dye
  RecipeBuilder.get("farmer")
    .setShapeless([Petal])
    .addTool(<ore:artisansMortar>, 5)
    .addOutput(Dye)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();

  //Petal
  RecipeBuilder.get("farmer")
    .setShapeless([Flower])
    .addTool(<ore:artisansCutters>, 5)
    .addOutput(Petal)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();

  //PetalBlock
  RecipeBuilder.get("farmer")
    .setShapeless([
      Petal, Petal, Petal,
      Petal, Petal, Petal,
      Petal, Petal, Petal])
    .addOutput(PetalBlock)
    .addTool(<ore:artisansPunch>, 20)
    .setMaximumTier(1)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();

  //Glimmering flowers
  RecipeBuilder.get("mage")
    .setShaped([
      [null, <ore:dustGlowstone>, null],
      [<ore:dustGlowstone>, Flower, <ore:dustGlowstone>],
      [null, <ore:dustGlowstone>, null]])
    .setFluid(<liquid:water> * 100)
    .addOutput(Gf)
    .addTool(<ore:artisansShears>, 25)
    .setMaximumTier(1)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();
}

  //Floral Ferilizer
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:dye:15>, <botania:dye:*>, <botania:dye:*>],
    [<botania:dye:*>, <botania:dye:*>, null]])
  .addOutput(<botania:fertilizer>)
  .addTool(<ore:artisansMortar>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_flowers]))
  .create();
RecipeBuilder.get("farmer")
  .setShaped([
    [<minecraft:dye:15>, <minecraft:dye:11>, <minecraft:dye:11>],
    [<minecraft:dye:1>, <minecraft:dye:1>, null]])
  .addOutput(<botania:fertilizer>)
  .addTool(<ore:artisansMortar>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_flowers]))
  .create();

  //Apothecary
var Sslab = <minecraft:stone_slab>;
RecipeBuilder.get("mason")
  .setShaped([
    [Sslab, <botania:fertilizer>, Sslab],
    [null, <minecraft:stone>, null],
    [Sslab, <minecraft:stone>, Sslab]])
  .addOutput(<botania:altar>)
  .addTool(<ore:artisansHammer>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_flowers]))
  .create();

  //Apothecary others
var apothecary as IItemStack[IItemStack] = {
  <botania:altar:1> : <botania:dye:5>,
  <botania:altar:2> : <botania:dye:4>,
  <botania:altar:3> : <botania:dye:12>,
  <botania:altar:4> : <botania:dye:10>,
  <botania:altar:5> : <botania:dye:13>,
  <botania:altar:6> : <botania:dye:1>,
  <botania:altar:7> : <botania:dye:9>,
  <botania:altar:8> : <botania:dye:14>
};
for altar, dye in apothecary {
  RecipeBuilder.get("mason")
    .setShaped([
      [dye],
      [<botania:altar>],
      [<minecraft:stone>]])
    .addOutput(altar)
    .addTool(<ore:artisansHammer>, 20)
    .setMaximumTier(1)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();
}

  //Redstone root
RecipeBuilder.get("farmer")
  .setShaped([
    [null, <ore:dustRedstone>, null],
    [<ore:dustRedstone>, <minecraft:tallgrass:*>, <ore:dustRedstone>],
    [null, <ore:dustRedstone>, null]])
  .addOutput(<botania:manaresource:6>)
  .addTool(<ore:artisansMortar>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_flowers]))
  .create();

//==============================================================================bot_petal
  //Lexica botania
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:redstoneRoot>, <ore:botaniaPetal>, <ore:redstoneRoot>],
    [<ore:botaniaPetal>, <ore:artisansGrimoire>, <ore:botaniaPetal>],
    [<ore:redstoneRoot>, <ore:botaniaPetal>, <ore:redstoneRoot>]])
  .addOutput(<botania:lexicon>.withTag({}))
  .addTool(<ore:artisansLens>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_petal]))
  .setMaximumTier(1)
  .create();

  //Flowers
Apothecary.addRecipe("puredaisy",
  [<ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <ore:petalWhite>, <botania:fertilizer>]);
Apothecary.addRecipe("sunbless",
  [<ore:petalOrange>, <ore:petalOrange>, <ore:petalYellow>, <ore:petalYellow>, <botania:fertilizer>]);
Apothecary.addRecipe("moonbless",
  [<ore:petalPink>, <ore:petalPink>, <ore:petalPurple>, <ore:petalPurple>, <botania:fertilizer>]);

  //Flower punch
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:wool>, <ore:botaniaPetal>, <ore:wool>],
    [<ore:wool>, <ore:materialCloth>, <ore:wool>],
    [<ore:botaniaPetal>, <ore:wool>, <ore:botaniaPetal>]])
  .addOutput(<botania:flowerbag>)
  .addTool(<ore:artisansNeedle>, 35)
  .addRequirement(GameStages.anyOf([stages.bot_petal]))
  .setMaximumTier(1)
  .create();

//==============================================================================bot_livingWood
  //Livingwood
  //--Livingwood planks
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:livingwood>])
  .addOutput(<botania:livingwood:1> * 2)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //--Livingwood mossy planks
RecipeBuilder.get("farmer")
  .setShapeless([<botania:livingwood:1>, <ore:seedWheat>])
  .addOutput(<botania:livingwood:2>)
  .addTool(<ore:artisansGemCutter>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //--Livingwood framed
RecipeBuilder.get("carpenter")
  .setShaped([
    [<botania:livingwood:1>, <botania:livingwood:1>],
    [<botania:livingwood:1>, <botania:livingwood:1>]])
  .addOutput(<botania:livingwood:3> * 4)
  .addTool(<ore:artisansChisel>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //--Livingwood pattern framed
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <botania:livingwood:1>, null],
    [<botania:livingwood:1>, null, <botania:livingwood:1>],
    [null, <botania:livingwood:1>, null]])
  .addOutput(<botania:livingwood:4> * 4)
  .addTool(<ore:artisansChisel>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //--Livingwood/plank slab, stair, wall
var livingwoodIngredient as IIngredient[][] = [
  [<botania:livingwood>,
  <botania:livingwood:1>,
  <botania:livingwood0stairs>,
  <botania:livingwood0slab>,
  <botania:livingwood0wall>,
  <botania:livingwood1stairs>,
  <botania:livingwood1slab>]
];
for i in livingwoodIngredient {
  scripts.Botania.makeSlabToBlockGroover  (i[0].items[0], i[3]);
  scripts.Botania.makeSlabToBlockGroover  (i[1].items[0], i[6]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[3].items[0], i[0]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[6].items[0], i[1]);
  scripts.Botania.makeStairsFramingHammer (i[2].items[0], i[0]);
  scripts.Botania.makeStairsFramingHammer (i[5].items[0], i[2]);
  scripts.Botania.makeWallsCarver         (i[4].items[0], i[0]);
}

  //Mana Spreader
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<ore:plateGold>, <ore:botaniaPetalBlock>, null],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]])
  .addOutput(<botania:spreader>)
  .addTool(<ore:artisansFramingHammer>, 75)
  .addTool(<ore:artisansChisel>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //Mana pulse spreader
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <botania:spreader>, <ore:dustRedstone>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]])
  .addOutput(<botania:spreader:1>)
  .addTool(<ore:artisansFramingHammer>, 25)
  .addTool(<ore:artisansChisel>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //Spreader turntable
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>],
    [<ore:livingwood>, <minecraft:sticky_piston>, <ore:livingwood>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]])
  .addOutput(<botania:turntable>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addTool(<ore:artisansChisel>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

  //Livingwood twig
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>],
    [<ore:livingwood>]])
  .addOutput(<botania:manaresource:3>)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_livingWood]))
  .create();

//==============================================================================bot_livingWoodTwig
  //Wand of the forest
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:botaniaPetal>, <ore:livingwoodTwig>],
    [null, <ore:livingwoodTwig>, <ore:botaniaPetal>],
    [<ore:livingwoodTwig>, null, null]])
  .addOutput(<botania:twigwand>.withTag({color1: 0, color2: 0}))
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_livingWoodTwig]))
  .create();

//==============================================================================bot_livingRock
  //Livingrock
  //--Livingrock mossy brick
RecipeBuilder.get("farmer")
  .setShapeless([<botania:livingrock:1>, <ore:seedWheat>])
  .addOutput(<botania:livingrock:2>)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addRequirement(GameStages.anyOf([stages.bot_livingRock]))
  .create();

  //--Livingrock cracked brick
RecipeBuilder.get("carpenter")
  .setShapeless([<botania:livingrock:1>, <ore:cobblestone>])
  .addOutput(<botania:livingrock:3>)
  .addTool(<ore:artisansFramingHammer>, 5)
  .addRequirement(GameStages.anyOf([stages.bot_livingRock]))
  .create();

  //--Livingrock brick, chisel, slab, stair, wall
var livingrockIngredient as IIngredient[][] = [
  [<botania:livingrock>,
  <botania:livingrock:1>,
  <botania:livingrock:4>,
  <botania:livingrock0stairs>,
  <botania:livingrock0slab>,
  <botania:livingrock0wall>,
  <botania:livingrock1stairs>,
  <botania:livingrock1slab>]
];
for i in livingrockIngredient {
  scripts.Botania.makeSlabToBlockGroover     (i[0].items[0], i[4]);
  scripts.Botania.makeSlabToBlockGroover     (i[1].items[0], i[7]);
  scripts.Botania.make4BlocksTo4BlockChisel  (i[1].items[0], i[0]);
  scripts.Botania.make4BlocksTo4BlockChisel  (i[2].items[0], i[1]);
  scripts.Botania.makeBlockToSlabHandsaw     (i[4].items[0], i[0]);
  scripts.Botania.makeBlockToSlabHandsaw     (i[7].items[0], i[1]);
  scripts.Botania.makeStairsFramingHammer    (i[3].items[0], i[0]);
  scripts.Botania.makeStairsFramingHammer    (i[6].items[0], i[1]);
  scripts.Botania.makeWallsCarver            (i[5].items[0], i[0]);
}

  //Mana void
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:obsidian>, null, <ore:obsidian>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:manavoid>)
  .addTool(<ore:artisansHammer>, 30)
  .addRequirement(GameStages.anyOf([stages.bot_livingRock]))
  .create();

  //Mana detector
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustRedstone>, <ore:livingrock>, <ore:dustRedstone>],
    [<ore:livingrock>, <minecraft:comparator>, <ore:livingrock>],
    [<ore:dustRedstone>, <ore:livingrock>, <ore:dustRedstone>]])
  .addOutput(<botania:manadetector>)
  .addTool(<ore:artisansSpanner>, 30)
  .addTool(<ore:artisansCompass>, 30)
  .addRequirement(GameStages.anyOf([stages.bot_livingRock]))
  .create();

  //Diluted Mana Pool
RecipeBuilder.get("mason")
  .setShaped([
    [<botania:livingrock0slab>, <botania:fertilizer>, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, <ore:livingrock>, <botania:livingrock0slab>]])
  .addOutput(<botania:pool:2>)
  .addTool(<ore:artisansHammer>, 30)
  .addRequirement(GameStages.anyOf([stages.bot_livingRock]))
  .create();

//==============================================================================bot_mana_pool
  //Mana Pool
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>],
    [<botania:livingrock0slab>, <botania:pool:2>, <botania:livingrock0slab>],
    [<botania:livingrock0slab>, <botania:livingrock0slab>, <botania:livingrock0slab>]])
  .addOutput(<botania:pool>)
  .addTool(<ore:artisansHammer>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Horn of the wild
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:livingwood>, null],
    [<ore:livingwood>, <botania:grassseeds>, <ore:livingwood>],
    [<ore:livingwood>, <ore:livingwood>, null]])
  .addOutput(<botania:grasshorn>)
  .addTool(<ore:artisansHammer>, 30)
  .addTool(<ore:artisansChisel>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Horn of the canopy
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:thatchingWet>, <ore:treeLeaves>, <ore:thatchingWet>],
    [<ore:treeLeaves>, <botania:grasshorn>, <ore:treeLeaves>],
    [<ore:thatchingWet>, <ore:treeLeaves>, <ore:thatchingWet>]])
  .addOutput(<botania:grasshorn:1>)
  .addTool(<ore:artisansRazor>, 30)
  .addTool(<ore:artisansChisel>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Horn of the covering
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:snowball>, <minecraft:snowball>, <minecraft:snowball>],
    [<minecraft:snowball>, <botania:grasshorn>, <minecraft:snowball>],
    [<minecraft:snowball>, <minecraft:snowball>, <minecraft:snowball>]])
  .addOutput(<botania:grasshorn:2>)
  .addTool(<ore:artisansRazor>, 30)
  .addTool(<ore:artisansChisel>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Drum of the wild
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <ore:leatherBoiled>, <ore:livingwood>],
    [<botania:livingwood0slab>, <botania:grasshorn>, <botania:livingwood0slab>],
    [<ore:livingwood>, <ore:leatherBoiled>, <ore:livingwood>]])
  .addOutput(<botania:forestdrum>)
  .addTool(<ore:artisansFramingHammer>, 30)
  .addTool(<ore:artisansHandsaw>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Drum of the canopy
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <ore:leatherBoiled>, <ore:livingwood>],
    [<botania:livingwood0slab>, <botania:grasshorn:1>, <botania:livingwood0slab>],
    [<ore:livingwood>, <ore:leatherBoiled>, <ore:livingwood>]])
  .addOutput(<botania:forestdrum:2>)
  .addTool(<ore:artisansFramingHammer>, 30)
  .addTool(<ore:artisansHandsaw>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Animated torch
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:powderMana>],
    [<ore:craftingRedstoneTorch>]])
  .addOutput(<botania:animatedtorch>)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

  //Floral obedience stick
RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <ore:ingotManasteel>],
    [null, <ore:livingwoodTwig>, null],
    [<ore:livingwoodTwig>, null, null]])
  .addOutput(<botania:obediencestick>)
  .addTool(<ore:artisansHandsaw>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_mana_pool]))
  .create();

//==============================================================================bot_managlass
  //Mana glass pane
RecipeBuilder.get("mason")
  .setShapeless([<botania:managlass>])
  .addOutput(<botania:managlasspane> * 2)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_managlass]))
  .create();

  //Manaseer monocle
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:managlass>, <ore:ingotGold>],
    [<ore:ingotManasteel>, <ore:ingotGold>],
    [null, <ore:ingotGold>]])
  .addOutput(<botania:monocle>)
  .addTool(<ore:artisansSpanner>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_managlass]))
  .create();

  //Cacophonium
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:managlass>, <ore:ingotGold>, null],
    [<ore:ingotGold>, <minecraft:noteblock>, <ore:ingotGold>],
    [<ore:ingotGold>, <ore:ingotGold>, <botania:managlass>]])
  .addOutput(<botania:cacophonium>.withTag({}))
  .addTool(<ore:artisansFramingHammer>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_managlass]))
  .create();

//==============================================================================bot_manasteel
  //Manasteel block
RecipeBuilder.get("mason")
  .setShapeless([
    <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>,
    <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>,
    <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>])
  .addOutput(<botania:storage>)
  .addTool(<ore:artisansHammer>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana splitter
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <botania:livingrock0slab>, <ore:livingrock>],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [<ore:livingrock>, <botania:livingrock0slab>, <ore:livingrock>]])
  .addOutput(<botania:distributor>)
  .addTool(<ore:artisansHammer>, 10)
  .addTool(<ore:artisansCutters>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <botania:managlass>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:lens>.withTag({}))
  .setSecondaryIngredients([<foundry:mold:23>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansRazor>, 15)
  .addTool(<ore:artisansPunch>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens magnetizing
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>],
    [<ore:ingotIron>, <botania:lens>.withTag({}), <ore:ingotIron>],
    [<ore:ingotGold>, <ore:ingotIron>, <ore:ingotGold>]])
  .addOutput(<botania:lens:10>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens kindle
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:flint_and_steel>, null],
    [<minecraft:fire_charge>, <botania:lens>.withTag({}), <minecraft:fire_charge>],
    [null, <minecraft:fire_charge>, null]])
  .addOutput(<botania:lens:15>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens force
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:pistonrelay>],
    [<botania:lens>.withTag({})],
    [<botania:pistonrelay>]])
  .addOutput(<botania:lens:16>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens flash
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:blockGlowstone>, <ore:torch>, <ore:blockGlowstone>],
    [<minecraft:fire_charge>, <botania:lens>.withTag({}), <minecraft:fire_charge>],
    [<ore:blockGlowstone>, <minecraft:fire_charge>, <ore:blockGlowstone>]])
  .addOutput(<botania:lens:17>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana lens messenger
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:paper>, null],
    [<ore:paper>, <botania:lens>.withTag({}), <ore:paper>],
    [null, <ore:paper>, null]])
  .addOutput(<botania:lens:22>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Hovering hourglass
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotGold>, <botania:managlass>,<ore:ingotGold>],
    [<ore:dustRedstone>, <ore:blockManasteel>, <ore:dustRedstone>],
    [<ore:ingotGold>, <botania:managlass>, <ore:ingotGold>]])
  .addOutput(<botania:hourglass>)
  .addTool(<ore:artisansRazor>, 15)
  .addTool(<ore:artisansPunch>, 20)
  .addRequirement(GameStages.allOf([stages.bot_manasteel, stages.bot_managlass])) //bot_managlass
  .create();

  //Ender overseer
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustRedstone>, <ore:gemEnderEye>,<ore:dustRedstone>],
    [<ore:gemEnderEye>, <ore:blockManasteel>, <ore:gemEnderEye>],
    [<ore:dustRedstone>, <ore:gemEnderEye>, <ore:dustRedstone>]])
  .addOutput(<botania:endereyeblock>)
  .addTool(<ore:artisansHammer>, 25)
  .addTool(<ore:artisansPunch>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Eye of the ancients
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:livingrock>,<ore:ingotManasteel>],
    [<ore:livingrock>, <ore:gemEnderEye>, <ore:livingrock>],
    [<ore:ingotManasteel>, <ore:livingrock>, <ore:ingotManasteel>]])
  .addOutput(<botania:foresteye>)
  .addTool(<ore:artisansRazor>, 15)
  .addTool(<ore:artisansPunch>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Mana pump
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>,<ore:livingrock>],
    [<ore:ingotManasteel>, <minecraft:bucket>, <ore:ingotManasteel>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:pump>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansChisel>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //The spectator
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemEnderEye>, <ore:ingotManasteel>,<ore:gemEnderEye>],
    [<ore:ingotManasteel>, <ore:gemEnderEye>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:gemEmerald>, <ore:ingotManasteel>]])
  .addOutput(<botania:itemfinder>.withTag({}))
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansChisel>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Bauble case
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotManasteel>, <ore:manaString>],
    [<ore:ingotManasteel>, <ironchest:iron_chest>, <ore:ingotGold>],
    [null, <ore:ingotManasteel>, null]])
  .addOutput(<botania:baublebox>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansChisel>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Worldshaper's sextant
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:livingwoodTwig>, <ore:ingotManasteel>],
    [null, <ore:livingwoodTwig>, <ore:livingwoodTwig>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:sextant>)
  .addTool(<ore:artisansHandsaw>, 25)
  .addTool(<ore:artisansDriver>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Ring of magnetization
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <magneticraft:crafting:4>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <botania:lens:10>.withTag({}), <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:magnetring>.withTag({}))
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

  //Ring of correction
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:blockClay>, <ore:ingotManasteel>, null],
    [<ore:ingotManasteel>, <factorytech:inventorysensor>, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, null]])
  .addOutput(<botania:swapring>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manasteel]))
  .create();

//==============================================================================ms_armor
  //Blank Manasteel helmet
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:runeWaterB>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>]])
  .addOutput(<contenttweaker:blankmanahelmet>)
  .setSecondaryIngredients([<foundry:mold:12>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansHammer>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.rune_tier1, stages.ms_armor]))  //ms_armor
  .create();

  //Blank Manasteel chestplate
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:runeFireB>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, null]])
  .addOutput(<contenttweaker:blankmanachestplate>)
  .setSecondaryIngredients([<foundry:mold:13>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansHammer>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.rune_tier1, stages.ms_armor]))  //ms_armor
  .create();

  //Blank Manasteel leggings
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:runeEarthB>, <ore:ingotManasteel>]])
  .addOutput(<contenttweaker:blankmanaleggings>)
  .setSecondaryIngredients([<foundry:mold:14>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansHammer>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.rune_tier1, stages.ms_armor]))  //ms_armor
  .create();

  //Blank Manasteel boots
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:runeAirB>, <ore:ingotManasteel>]])
  .setSecondaryIngredients([<foundry:mold:15>])
  .addOutput(<contenttweaker:blankmanaboots>)
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansHammer>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.rune_tier1, stages.ms_armor]))  //ms_armor
  .create();

Casting.addRecipe(<botania:manasteelhelm>  , <liquid:liquidmanasteel> * 720  , <foundry:mold:12>, <contenttweaker:blankmanahelmet>     , 500);
Casting.addRecipe(<botania:manasteelchest> , <liquid:liquidmanasteel> * 1152 , <foundry:mold:13>, <contenttweaker:blankmanachestplate> , 800);
Casting.addRecipe(<botania:manasteellegs>  , <liquid:liquidmanasteel> * 1008 , <foundry:mold:14>, <contenttweaker:blankmanaleggings>   , 700);
Casting.addRecipe(<botania:manasteelboots> , <liquid:liquidmanasteel> * 576  , <foundry:mold:15>, <contenttweaker:blankmanaboots>      , 400);

//==============================================================================bot_ms_tools
  //Manasteel pickaxe
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>,<ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:livingwoodTwig>, <ore:ingotManasteel>],
    [null, <ore:livingwoodTwig>, null]])
  .addOutput(<botania:manasteelpick>)
  .setSecondaryIngredients([<foundry:mold:7>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Manasteel shovel
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>],
    [<ore:livingwoodTwig>],
    [<ore:livingwoodTwig>]])
  .addOutput(<botania:manasteelshovel>)
  .setSecondaryIngredients([<foundry:mold:10>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Manasteel axe
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>],
    [<ore:livingwoodTwig>, <ore:ingotManasteel>],
    [<ore:livingwoodTwig>, null]])
  .addOutput(<botania:manasteelaxe>)
  .setSecondaryIngredients([<foundry:mold:8>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Manasteel sword
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>],
    [<ore:ingotManasteel>],
    [<ore:livingwoodTwig>]])
  .addOutput(<botania:manasteelsword>)
  .setSecondaryIngredients([<foundry:mold:9>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Manasteel shears
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <minecraft:shears>, <ore:ingotManasteel>]])
  .addOutput(<botania:manasteelshears>)
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Vitreous pickaxe
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:glass>, <ore:ingotManasteel>, <minecraft:glass>],
    [null, <ore:livingwoodTwig>, null],
    [null, <ore:livingwoodTwig>, null]])
  .addOutput(<botania:manasteelpick>)
  .setSecondaryIngredients([<foundry:mold:7>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Soulscriber
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotManasteel>,null],
    [<ore:ingotManasteel>, <ore:manaPearl>, <ore:ingotManasteel>],
    [null, <ore:livingwoodTwig>, null]])
  .addOutput(<botania:enderdagger>)
  .setSecondaryIngredients([<foundry:mold:9>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansRazor>, 30)
  .addTool(<ore:artisansSpanner>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools, stages.bot_manapearl])) //bot_manapearl
  .create();

//==============================================================================bot_manapearl
  //Abstruse platform
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <ore:manaPearl>, <ore:livingwood>],
    [<botania:livingwood:3>, <botania:livingwood:4>, <botania:livingwood:3>],
    [<ore:livingwood>, <ore:manaPearl>, <ore:livingwood>]])
  .addOutput(<botania:platform> * 4)
  .addTool(<ore:artisansHandsaw>, 30)
  .addTool(<ore:artisansFramingHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manapearl]))
  .create();

  //Soujourner's sash
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeAirB>, <ore:leatherPigman>, <ore:ingotManasteel>],
    [<ore:leatherPigman>, <ore:manaPearl>, <ore:leatherPigman>],
    [<ore:ingotManasteel>, <ore:leatherPigman>, <ore:runeEarthB>]])
  .addOutput(<botania:travelbelt>)
  .addTool(<ore:artisansNeedle>, 75)
  .addTool(<ore:artisansLens>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manapearl, stages.bot_manasteel])) //bot_manasteel
  .create();

  //Tectonic girdle
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeFireB>, <ore:leatherPigman>, <ore:ingotManasteel>],
    [<ore:leatherPigman>, <ore:manaPearl>, <ore:leatherPigman>],
    [<ore:ingotManasteel>, <ore:leatherPigman>, <ore:runeEarthB>]])
  .addOutput(<botania:travelbelt>)
  .addTool(<ore:artisansNeedle>, 75)
  .addTool(<ore:artisansLens>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manapearl, stages.bot_manasteel])) //bot_manasteel
  .create();

  //Mana lens phantom
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:platform>, null],
    [<botania:platform>, <botania:lens>.withTag({}), <botania:platform>],
    [null, <botania:platform>, null]])
  .addOutput(<botania:lens:9>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manapearl, stages.bot_manasteel])) //bot_manasteel
  .create();

  //Tiny planet bauble
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:stone>, <ore:livingrock>],
    [<ore:stone>, <ore:manaPearl>, <ore:stone>],
    [<ore:livingrock>, <ore:stone>, <ore:livingrock>]])
  .addOutput(<botania:tinyplanet>)
  .addTool(<ore:artisansFramingHammer>, 10)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manapearl]))
  .create();

  //Tiny planet block
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<ore:stone>, <botania:tinyplanet>, <ore:stone>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addOutput(<botania:tinyplanetblock>)
  .addTool(<ore:artisansFramingHammer>, 15)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manapearl]))
  .create();

  //Cloak of invisibility
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustPrismarine>, <ore:blockWoolWhite>, <ore:dustPrismarine>],
    [<botania:managlass>, <ore:blockWoolWhite>, <botania:managlass>],
    [<botania:managlass>, <ore:manaPearl>, <botania:managlass>]])
  .addOutput(<botania:invisibilitycloak>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manapearl, stages.bot_managlass])) //bot_managlass
  .create();

  //Spellbinding cloth
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:materialCloth>, <ore:clothManaweave>, <ore:materialCloth>],
    [<ore:clothManaweave>, <ore:manaPearl>, <ore:clothManaweave>],
    [<ore:materialCloth>, <ore:clothManaweave>, <ore:materialCloth>]])
  .addOutput(<botania:spellcloth>)
  .addTool(<ore:artisansNeedle>, 75)
  .addTool(<ore:artisansGrimoire>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manapearl, stages.bot_manastring])) //bot_manastring
  .create();

  //Spark
RecipeBuilder.get("mage")
  .setShaped([
    [null, <roots:fairy_dust>, null],
    [<ore:dustBlaze>, <ore:manaPearl>, <ore:dustBlaze>],
    [null, <roots:fairy_dust>, null]])
  .addOutput(<botania:spark> * 2)
  .addTool(<ore:artisansLens>, 25)
  .addTool(<ore:artisansGrimoire>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manapearl]))
  .create();

//==============================================================================bot_manadiamond
  //Mana pylon
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotGold>, <ore:ingotGold>,<ore:ingotGold>],
    [<botania:storage>, <botania:storage:3>, <botania:storage>],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]])
  .addOutput(<botania:pylon>.withTag({}))
  .addTool(<ore:artisansChisel>, 75)
  .addTool(<ore:artisansPunch>, 75)
  .addRequirement(GameStages.allOf([stages.bot_manadiamond, stages.bot_manasteel])) //bot_manasteel
  .create();

  //Livingwood avatar
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:livingwood>, null],
    [<ore:livingwood>, <ore:manaDiamond>, <ore:livingwood>],
    [<ore:livingwood>, null, <ore:livingwood>]])
  .addOutput(<botania:avatar>)
  .addTool(<ore:artisansHandsaw>, 45)
  .addTool(<ore:artisansFramingHammer>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manadiamond]))
  .create();

  //Phantom ink
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:manaPearl>, <ore:botaniaDye>, <botania:managlass>],
    [<minecraft:glass_bottle>, <minecraft:glass_bottle>, <minecraft:glass_bottle>],
    [null, <minecraft:glass_bottle>, null]])
  .addOutput(<botania:phantomink> * 4)
  .addTool(<ore:artisansBeaker>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manadiamond, stages.bot_managlass])) //bot_managlass
  .create();

  //Band of mana
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <botania:manatablet>.withTag({}), <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:manaring>.withTag({}))
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manadiamond]))
  .create();

  //Mana tablet
var localCraftTablet as IItemStack[] = [
  <botania:manaresource:2>, //diamond
  <botania:manaresource:1>  //pearl
];
for items in localCraftTablet {
  RecipeBuilder.get("mage")
    .setShaped([
      [<botania:livingrock0slab>, <ore:livingrock>, <botania:livingrock0slab>],
      [<ore:livingrock>, items, <ore:livingrock>],
      [<botania:livingrock0slab>, <ore:livingrock>, <botania:livingrock0slab>]])
    .addOutput(<botania:manatablet>.withTag({}))
    .addTool(<ore:artisansHandsaw>, 40)
    .addTool(<ore:artisansRazor>, 40)
    .setMaximumTier(1)
    .addRequirement(GameStages.anyOf([stages.bot_manadiamond]))
    .create();
}


//==============================================================================bot_manaquartz
  //Smokey quartz
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>,<ore:quartzMana>],
    [<ore:quartzMana>, <ore:coal>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartz> * 8)
  .addTool(<ore:artisansKnife>, 40)
  .addTool(<ore:artisansMortar>, 40)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Smokey quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzDark>, <ore:quartzDark>, <ore:quartzDark>],
    [<ore:quartzDark>, <ore:quartzDark>, <ore:quartzDark>],
    [<ore:quartzDark>, <ore:quartzDark>, <ore:quartzDark>]])
  .addOutput(<botania:quartztypedark>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Mana quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartztypemana>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Blaze quartz
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>,<ore:quartzMana>],
    [<ore:quartzMana>, <ore:dustBlaze>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartz:2> * 8)
  .addTool(<ore:artisansKnife>, 40)
  .addTool(<ore:artisansMortar>, 40)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Blaze quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzBlaze>, <ore:quartzBlaze>, <ore:quartzBlaze>],
    [<ore:quartzBlaze>, <ore:quartzBlaze>, <ore:quartzBlaze>],
    [<ore:quartzBlaze>, <ore:quartzBlaze>, <ore:quartzBlaze>]])
  .addOutput(<botania:quartztypeblaze>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Lavender quartz
var lavender as IItemStack[] = [
  <minecraft:red_flower:2>,
  <minecraft:red_flower:7>,
  <minecraft:double_plant:1>,
  <minecraft:double_plant:5>
];
<ore:lavender>.add(lavender);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>,<ore:quartzMana>],
    [<ore:quartzMana>, <ore:lavender>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartz:3> * 8)
  .addTool(<ore:artisansKnife>, 40)
  .addTool(<ore:artisansMortar>, 40)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Lavender quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzLavender>, <ore:quartzLavender>, <ore:quartzLavender>],
    [<ore:quartzLavender>, <ore:quartzLavender>, <ore:quartzLavender>],
    [<ore:quartzLavender>, <ore:quartzLavender>, <ore:quartzLavender>]])
  .addOutput(<botania:quartztypelavender>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Redquartz
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>,<ore:quartzMana>],
    [<ore:quartzMana>, <ore:dustRedstone>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartz:4> * 8)
  .addTool(<ore:artisansKnife>, 40)
  .addTool(<ore:artisansMortar>, 40)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Redquartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzRed>, <ore:quartzRed>, <ore:quartzRed>],
    [<ore:quartzRed>, <ore:quartzRed>, <ore:quartzRed>],
    [<ore:quartzRed>, <ore:quartzRed>, <ore:quartzRed>]])
  .addOutput(<botania:quartztypered>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Sunny quartz
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:quartzMana>, <ore:quartzMana>,<ore:quartzMana>],
    [<ore:quartzMana>, <minecraft:double_plant>, <ore:quartzMana>],
    [<ore:quartzMana>, <ore:quartzMana>, <ore:quartzMana>]])
  .addOutput(<botania:quartz:6> * 8)
  .addTool(<ore:artisansKnife>, 40)
  .addTool(<ore:artisansMortar>, 40)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

  //Sunny quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzSunny>, <ore:quartzSunny>, <ore:quartzSunny>],
    [<ore:quartzSunny>, <ore:quartzSunny>, <ore:quartzSunny>],
    [<ore:quartzSunny>, <ore:quartzSunny>, <ore:quartzSunny>]])
  .addOutput(<botania:quartztypesunny>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_manaquartz]))
  .create();

//==============================================================================bot_manastring
  //Manaweave cloth
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:manaString>, <ore:manaString>],
    [<ore:manaString>, <ore:manaString>]])
  .addOutput(<botania:manaresource:22>)
  .addTool(<ore:artisansNeedle>, 5)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //Manaweave armor
  //--ManaweaveHelm
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>]])
  .addOutput(<botania:manaweavehelm>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //--ManaweaveChest
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>]])
  .addOutput(<botania:manaweavechest>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //--ManaweaveLeggins
RecipeBuilder.get("tailor")
  .setShaped([
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>]])
  .addOutput(<botania:manaweavelegs>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //--ManaweaveBoots
RecipeBuilder.get("tailor")
    .setShaped([
    [<ore:clothManaweave>, null, <ore:clothManaweave>],
    [<ore:clothManaweave>, null, <ore:clothManaweave>]])
  .addOutput(<botania:manaweaveboots>)
  .addTool(<ore:artisansNeedle>, 75)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //Teru teru bozo
RecipeBuilder.get("mage")
    .setShaped([
    [<ore:clothManaweave>, <botania:invisibilitycloak>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <botania:specialflower>.withTag({type: "ba_rain_flower"}), <ore:clothManaweave>],
    [<minecraft:double_plant>, <minecraft:double_plant>, <minecraft:double_plant>]])
  .addOutput(<botania:teruterubozu>)
  .addTool(<ore:artisansNeedle>, 25)
  .addTool(<ore:artisansLens>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_manastring, stages.bot_manapearl])) //bot_manapearl
  .create();

  //Livingwood bow
RecipeBuilder.get("mage")
    .setShaped([
    [<ore:livingwoodTwig>, <ore:livingwoodTwig>, <ore:ingotManasteel>],
    [<ore:livingwoodTwig>, null, <ore:ingotManasteel>],
    [<ore:livingwoodTwig>, <ore:livingwoodTwig>, <ore:ingotManasteel>]])
  .addOutput(<botania:livingwoodbow>)
  .addTool(<ore:artisansHandsaw>, 25)
  .addTool(<ore:artisansCompass>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_manastring]))
  .create();

  //Cosmetic petal
var Cosmetic = <botania:cosmetic>.withTag({});
for i in 0 to 16 {
  Petal = <botania:petal>.definition.makeStack(i);
  Cosmetic = <botania:cosmetic>.withTag({}).definition.makeStack(i);
  RecipeBuilder.get("mage")
    .setShaped([
      [Petal, Petal, Petal],
      [Petal, <ore:manaString>, Petal],
      [Petal, Petal, Petal]])
    .addOutput(Cosmetic)
    .addTool(<ore:artisansNeedle>, 25)
    .addRequirement(GameStages.anyOf([stages.bot_manastring]))
    .create();
}

  //Cosmetic dye
var CosmeticDye as IItemStack[IItemStack] = {
  <botania:cosmetic:16> : <botania:dye>,
  <botania:cosmetic:17> : <botania:dye:1>,
  <botania:cosmetic:18> : <botania:dye:2>,
  <botania:cosmetic:19> : <botania:dye:3>,
  <botania:cosmetic:20> : <botania:dye:4>,
  <botania:cosmetic:21> : <botania:dye:5>,
  <botania:cosmetic:22> : <botania:dye:6>,
  <botania:cosmetic:23> : <botania:dye:7>,
  <botania:cosmetic:24> : <botania:dye:8>,
  <botania:cosmetic:25> : <botania:dye:9>,
  <botania:cosmetic:26> : <botania:dye:10>,
  <botania:cosmetic:27> : <botania:dye:11>,
  <botania:cosmetic:28> : <botania:dye:12>,
  <botania:cosmetic:29> : <botania:dye:13>,
  <botania:cosmetic:30> : <botania:dye:14>,
  <botania:cosmetic:31> : <botania:dye:15>
};
for item, dye in CosmeticDye {
  RecipeBuilder.get("mage")
    .setShaped([
      [dye, dye, dye],
      [dye, <ore:manaString>, dye],
      [dye, dye, dye]])
    .addOutput(item)
    .addTool(<ore:artisansNeedle>, 25)
    .addRequirement(GameStages.anyOf([stages.bot_manastring]))
    .create();
}

//==============================================================================bot_flowers_gen
  //Endoflame
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:petalBrown>, null],
    [<ore:petalRed>, <ore:redstoneRoot>, <ore:petalBrown>],
    [null, <ore:petalLightGray>, null]])
  .addOutput(<botania:specialflower>.withTag({type: "endoflame"}))
  .setSecondaryIngredients([<botania:grassseeds>])
  .setConsumeSecondaryIngredients(true)
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansPliers>, 50)
  .addTool(<ore:botaniaAltar>, 0)
  .addRequirement(GameStages.anyOf([stages.bot_flowers_gen]))
  .create();

  //Manapool minecart
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:minecart>],
    [<botania:pool>]])
  .addOutput(<botania:poolminecart>)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansDriver>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_flowers_gen]))
  .create();

//==============================================================================rune_tier1
  //Runes
  //--Blank rune
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:livingrock0slab>, null],
    [<botania:livingrock0slab>, <ore:botaniaFlower>, <botania:livingrock0slab>],
    [null, <botania:livingrock0slab>,null]])
  .setFluid(<liquid:liquidmanasteel> * 144)
  .addOutput(<contenttweaker:blank_rune>)
  .addTool(<ore:artisansCarver>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //--Water
mods.botania.RuneAltar.addRecipe(<botania:rune>*2,
  [<botania:manasteelshovel>, <contenttweaker:blank_rune>, <botania:petalblock:11>, <ore:ingotManasteel>, <ore:powderMana>, 	<ore:sugarcane>,
<harvestcraft:freshwateritem>, <minecraft:fishing_rod>], 5000);
  //--Fire
mods.botania.RuneAltar.addRecipe(<botania:rune:1>*2,
  [<botania:manasteelaxe>, <contenttweaker:blank_rune>, <botania:petalblock:14>, <ore:ingotManasteel>, <ore:powderMana>, <ore:ingotBrickNether>,
<ore:gunpowder>, <ore:dustBlaze>], 5000);
  //--Earth
mods.botania.RuneAltar.addRecipe(<botania:rune:2>*2,
  [<botania:manasteelpick>, <contenttweaker:blank_rune>, <botania:petalblock:13>, <ore:ingotManasteel>, <ore:powderMana>, <minecraft:stone>,
<ore:blockCoal>, <minecraft:tallgrass:1>], 5000);
  //--Air
mods.botania.RuneAltar.addRecipe(<botania:rune:3>*2,
  [<botania:manasteelsword>, <contenttweaker:blank_rune>, <botania:petalblock:3>, <ore:ingotManasteel>, <ore:powderMana>, <ore:feather>,
  <ore:string>, <minecraft:carpet:*>], 5000);


  //Mana lens velocity
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeAirB>]])
  .addOutput(<botania:lens:1>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Mana lens potency
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeFireB>]])
  .addOutput(<botania:lens:2>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Mana lens resistance
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeEarthB>]])
  .addOutput(<botania:lens:3>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Mana lens efficiency
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeWaterB>]])
  .addOutput(<botania:lens:4>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Mana lens influence
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemPrismarine>, <ore:runeAirB>, <ore:gemPrismarine>],
    [<ore:gemPrismarine>, <botania:lens>.withTag({}), <ore:gemPrismarine>],
    [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>]])
  .addOutput(<botania:lens:12>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Mana lens weight
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>],
    [<ore:gemPrismarine>, <botania:lens>.withTag({}), <ore:gemPrismarine>],
    [<ore:gemPrismarine>, <ore:runeWaterB>, <ore:gemPrismarine>]])
  .addOutput(<botania:lens:13>.withTag({}))
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Blaze mesh
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:rodBlaze>, <ore:rodBlaze>, <ore:rodBlaze>],
    [<ore:rodBlaze>, <ore:rodBlaze>, <ore:rodBlaze>],
    [<ore:rodBlaze>, <ore:rodBlaze>, <ore:rodBlaze>]])
  .addOutput(<botania:blazeblock>)
  .addTool(<ore:artisansHammer>, 100)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Manatide bellows
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>],
    [<ore:runeAirB>, <ore:leather>, <ore:runeAirB>],
    [<botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>]])
  .addOutput(<botania:bellows>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Manatide bellows
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>],
    [<ore:runeAirB>, <ore:leather>, <ore:runeAirB>],
    [<botania:livingwood0slab>, <botania:livingwood0slab>, <botania:livingwood0slab>]])
  .addOutput(<botania:bellows>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Fel pumpkin
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:manaString>, null],
    [<ore:bone>, <ore:cropPumpkin>, <ore:listAllmeatrotten>],
    [<ore:gunpowder>, <ore:gunpowder>, <ore:gunpowder>]])
  .addOutput(<botania:felpumpkin>)
  .addTool(<ore:artisansPliers>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Third eye
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:golden_carrot>, <ore:runeEarthB>, <minecraft:golden_carrot>],
    [<ore:blockQuartz>, <ore:gemEnderEye>, <ore:blockQuartz>],
    [<minecraft:golden_carrot>, <ore:manaDiamond>, <minecraft:golden_carrot>]])
  .addOutput(<botania:thirdeye>)
  .addTool(<ore:artisansCompass>, 25)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Ring of chordata
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeWaterB>, <magneticraft:crafting:4>, <minecraft:fish:3>],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [<minecraft:fish:1>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:waterring>.withTag({}))
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Ring of the mantle
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeEarthB>, <ore:ingotManasteel>, <minecraft:golden_pickaxe>],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, null]])
  .addOutput(<botania:miningring>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Ring of dexterous motion
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeAirB>, <ore:ingotManasteel>, null],
    [<ore:ingotManasteel>, null, <ore:ingotManasteel>],
    [null, <ore:ingotManasteel>, <ore:gemEmerald>]])
  .addOutput(<botania:dodgering>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the lands
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:flakeFlint>, <contenttweaker:compressed_fert_dirt>],
    [<ore:flakeFlint>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:flakeFlint>],
    [<ore:runeEarthB>, <ore:flakeFlint>, null]])
  .addOutput(<botania:dirtrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the seas
RecipeBuilder.get("mage")
  .setShaped([
    [null, <harvestcraft:freshwateritem>, <minecraft:potion>.withTag({Potion: "minecraft:mundane"})],
    [<harvestcraft:freshwateritem>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <harvestcraft:freshwateritem>],
    [<ore:runeWaterB>, <harvestcraft:freshwateritem>, null]])
  .addOutput(<botania:waterrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the skies
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:feather>, <roots:fairy_dust>],
    [<ore:feather>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:feather>],
    [<ore:runeAirB>, <ore:feather>, null]])
  .addOutput(<botania:tornadorod>.withTag({}))
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the depths
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:runeFireB>, <contenttweaker:compressed_cob>],
    [<chisel:lavastone>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeWaterB>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <chisel:waterstone>, null]])
  .addOutput(<botania:cobblerod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the hells
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:quartzBlaze>, <ore:blockBlaze>],
    [<ore:dustSmallBlaze>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:quartzBlaze>],
    [<ore:runeFireB>, <ore:dustSmallBlaze>, null]])
  .addOutput(<botania:firerod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Rod of the plentiful mantle
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:quartzRed>, <ore:manaDiamond>],
    [<ore:quartzBlaze>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:quartzLavender>],
    [<ore:runeEarthB>, <ore:quartzSunny>, null]])
  .addOutput(<botania:diviningrod>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Vine ball
RecipeBuilder.get("mage")
  .setShapeless([
    <ore:vine>, <ore:vine>, <ore:vine>,
    <ore:vine>, <ore:vine>, <ore:vine>,
    <ore:vine>, <ore:vine>, <ore:vine>])
  .addOutput(<botania:vineball>)
  .addTool(<ore:artisansPliers>, 25)
  .addTool(<ore:artisansMortar>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

  //Livingwood slingshot
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:livingwoodTwig>, <ore:runeAirB>],
    [null, <ore:livingwoodTwig>, <ore:livingwoodTwig>],
    [<ore:livingwoodTwig>, null, null]])
  .addOutput(<botania:vineball>)
  .addTool(<ore:artisansChisel>, 25)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier1]))
  .create();

//==============================================================================rune_tier2
  //Runes
  //--Spring
mods.botania.RuneAltar.addRecipe(<botania:rune:4>,
  [<contenttweaker:blank_rune>, <botania:petalblock:5>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:1>,
  <botania:rune>, <naturalpledge:seal_sapling>, <naturalpledge:circuit_sapling>, <naturalpledge:calico_sapling>], 5000);
  //--Summer
mods.botania.RuneAltar.addRecipe(<botania:rune:5>,
  [<contenttweaker:blank_rune>, <botania:petalblock:4>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:2>,
  <botania:rune:3>, <minecraft:melon>, <minecraft:sand>, <minecraft:sand>, <ore:blockSlime>], 5000);
  //--Autumn
mods.botania.RuneAltar.addRecipe(<botania:rune:6>,
  [<contenttweaker:blank_rune>, <botania:petalblock:1>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune:1>,
  <botania:rune:3>, <minecraft:deadbush>, <ore:treeLeaves>, <ore:treeLeaves>, <minecraft:spider_eye>], 5000);
  //--Winter
mods.botania.RuneAltar.addRecipe(<botania:rune:7>,
  [<contenttweaker:blank_rune>, <botania:petalblock>, <ore:ingotManasteel>, <ore:powderMana>, 	<botania:rune>,
  <botania:rune:2>, <minecraft:snow>, <minecraft:snow>, <minecraft:wool>, <ore:foodIcecream>], 5000);
  //--Mana
mods.botania.RuneAltar.addRecipe(<botania:rune:8>,
  [<contenttweaker:blank_rune>, <botania:petalblock:10>, <ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>,
  <ore:powderMana>, <ore:manaPearl>, <ore:manaDiamond>, <ore:clothManaweave>, <botanicadds:mana_lapis>], 5000);

  //Botanical brewery
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:incensestick>.withTag({}), <minecraft:brewing_stand>, <ore:bVial>],
    [<ore:livingrock>, <ore:runeManaB>, <ore:livingrock>],
    [<ore:livingrock>, <ore:blockManasteel>, <ore:livingrock>]])
  .addOutput(<botania:brewery>)
  .addTool(<ore:artisansRazor>, 75)
  .addTool(<ore:artisansPunch>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Alchemy catalyst
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:ingotGold>, <ore:livingrock>],
    [<botania:brewery>, <ore:manaPearl>, <botania:brewery>],
    [<ore:livingrock>, <ore:ingotGold>, <ore:livingrock>]])
  .addOutput(<botania:alchemycatalyst>)
  .addTool(<ore:artisansCarver>, 75)
  .addTool(<ore:artisansSpanner>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Managlass vial
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:managlass>, null, <botania:managlass>],
    [null, <botania:managlass>, null]])
  .addOutput(<botania:vial>)
  .addTool(<ore:artisansRazor>, 30)
  .addTool(<ore:artisansChisel>, 30)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Incense plate
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <botania:livingwood0slab>, <botania:livingwood0slab>]])
  .addOutput(<botania:incenseplate>)
  .addTool(<ore:artisansHandsaw>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Incense stick
RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <minecraft:ghast_tear>],
    [null, <ore:rodBlaze>, null],
    [<ore:livingwoodTwig>, null, null]])
  .addOutput(<botania:incensestick>.withTag({}))
  .addTool(<ore:artisansHandsaw>, 10)
  .addTool(<ore:artisansGemCutter>, 30)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Tainted blood pendant
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:gemPrismarine>, <ore:gemPrismarine>, <ore:gemPrismarine>],
    [<ore:gemPrismarine>, <minecraft:ghast_tear>, <ore:gemPrismarine>],
    [<ore:manaDiamond>, <ore:gemPrismarine>, <ore:gemPrismarine>]])
  .addOutput(<botania:bloodpendant>.withTag({}))
  .addTool(<ore:artisansDriver>, 25)
  .addTool(<ore:artisansGemCutter>, 50)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Mana lens bounce
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeSummerB>]])
  .addOutput(<botania:lens:5>.withTag({}))
  .addTool(<ore:artisansSpanner>, 35)
  .addRequirement(GameStages.allOf([stages.rune_tier2]))
  .create();

  //Mana lens gravity
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeWinterB>]])
  .addOutput(<botania:lens:6>.withTag({}))
  .addTool(<ore:artisansSpanner>, 35)
  .addRequirement(GameStages.allOf([stages.rune_tier2]))
  .create();

  //Mana lens bore
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dyeGreen>, <botania:pistonrelay>, <ore:dyeGreen>],
    [<ore:blockLapis>, <botania:lens>.withTag({}), <ore:blockLapis>],
    [<ore:dustRedstone>, <ore:dustRedstone>, <ore:dustRedstone>]])
  .addOutput(<botania:lens:7>.withTag({}))
  .addTool(<ore:artisansSpanner>, 35)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Terrestrial agglomeration plate
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:blockLapis>, <botania:pump>, <ore:blockLapis>, <botania:pump>, <ore:blockLapis>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <botania:managlass>, <ore:ingotManasteel>, <ore:ingotManasteel>],
    [<botania:managlass>, <ore:runeWaterB>, <botania:foresteye>, <ore:runeEarthB>, <botania:managlass>],
    [<botania:managlass>, <ore:runeFireB>, <ore:runeManaB>, <ore:runeAirB>, <botania:managlass>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <botania:managlass>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:terraplate>)
  .addTool(<ore:artisansDriver>, 150)
  .addTool(<ore:artisansPunch>, 100)
  .addTool(<ore:artisansGemCutter>, 100)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .setMinimumTier(2)
  .create();

  //Mana blaster
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:spreader:1>, <ore:runeManaB>, <ore:manaDiamond>],
    [null, <ore:livingwood>, <minecraft:tnt>],
    [null, null, <ore:livingwood>]])
  .addOutput(<botania:managun>.withTag({}))
  .addTool(<ore:artisansHandsaw>, 40)
  .addTool(<ore:artisansDriver>, 120)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Benevolent goddess' charm
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:blockWool>, <ore:petalPink>, <ore:blockWool>],
    [<minecraft:tnt>, <ore:petalPink>, <minecraft:tnt>],
    [<ore:runeWaterB>, <ore:manaDiamond>, <ore:runeSpringB>]])
  .addOutput(<botania:goddesscharm>)
  .addTool(<ore:artisansGrimoire>, 40)
  .addTool(<ore:artisansDriver>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Cirrus amulet
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeAutumnB>, <ore:manaString>, <ore:ingotManasteel>],
    [<ore:manaString>, <ore:ingotManasteel>, <ore:manaString>],
    [<ore:ingotManasteel>, <ore:manaString>, <ore:runeAirB>]])
  .addOutput(<botania:cloudpendant>)
  .addTool(<ore:artisansGrimoire>, 40)
  .addTool(<ore:artisansSpanner>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

  //Band of aura
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:manaString>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:runeManaB>, <ore:ingotManasteel>],
    [<ore:ingotManasteel>, <ore:ingotManasteel>, <ore:ingotManasteel>]])
  .addOutput(<botania:auraring>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.rune_tier2]))
  .create();

//==============================================================================rune_tier3
  //Mana lens damaging
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeWrathB>]])
  .addOutput(<botania:lens:8>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .addRequirement(GameStages.allOf([stages.rune_tier3]))
  .create();

  //Mana lens entropic
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:lens>.withTag({})],
    [<ore:runeEnvyB>]])
  .addOutput(<botania:lens:11>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .addRequirement(GameStages.allOf([stages.rune_tier3]))
  .create();

//==============================================================================elven_trade
  //Elven quartz block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:quartzElven>, <ore:quartzElven>, <ore:quartzElven>],
    [<ore:quartzElven>, <ore:quartzElven>, <ore:quartzElven>],
    [<ore:quartzElven>, <ore:quartzElven>, <ore:quartzElven>]])
  .addOutput(<botania:quartztypeelf>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.elven_trade]))
  .create();

  //Elemetium block
RecipeBuilder.get("blacksmith")
  .setShapeless([
    <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>,
    <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>,
    <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>])
  .addOutput(<botania:storage:2>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.elven_trade]))
  .setMaximumTier(1)
  .create();

  //Dragonstone block
RecipeBuilder.get("blacksmith")
  .setShapeless([
    <ore:elvenDragonstone>, <ore:elvenDragonstone>, <ore:elvenDragonstone>,
    <ore:elvenDragonstone>, <ore:elvenDragonstone>, <ore:elvenDragonstone>,
    <ore:elvenDragonstone>, <ore:elvenDragonstone>, <ore:elvenDragonstone>])
  .addOutput(<botania:storage:4>)
  .addTool(<ore:artisansHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.elven_trade]))
  .setMaximumTier(1)
  .create();

//==============================================================================bot_dreamWood
  //Dreamwood
  //--Dreamwood plank
RecipeBuilder.get("carpenter")
  .setShapeless([<ore:dreamwood>])
  .addOutput(<botania:dreamwood:1> * 2)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //--Dreamwood mossy plank
RecipeBuilder.get("farmer")
  .setShapeless([<botania:dreamwood:1>, <ore:seedWheat>])
  .addOutput(<botania:dreamwood:2>)
  .addTool(<ore:artisansGemCutter>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //--Dreamwood framed
RecipeBuilder.get("carpenter")
  .setShaped([
    [<botania:dreamwood:1>, <botania:dreamwood:1>],
    [<botania:dreamwood:1>, <botania:dreamwood:1>]])
  .addOutput(<botania:dreamwood:3> * 4)
  .addTool(<ore:artisansChisel>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //--Dreamwood pattern framed
RecipeBuilder.get("carpenter")
  .setShaped([
    [null, <botania:dreamwood:1>, null],
    [<botania:dreamwood:1>, null, <botania:dreamwood:1>],
    [null, <botania:dreamwood:1>, null]])
  .addOutput(<botania:dreamwood:4> * 4)
  .addTool(<ore:artisansChisel>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //Lens clip
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:dreamwood>, null],
    [<ore:dreamwood>, null, <ore:dreamwood>],
    [<ore:dreamwood>, <ore:dreamwood>, null]])
  .addOutput(<botania:clip>)
  .addTool(<ore:artisansChisel>, 20)
  .addTool(<ore:artisansHandsaw>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //--Dreamwood glimmering
RecipeBuilder.get("mage")
  .setShapeless([<ore:dreamwood>, <ore:dustGlowstone>])
  .addOutput(<botania:dreamwood:5>)
  .addTool(<ore:artisansGemCutter>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWood]))
  .create();

  //--Dreamwood/plank slab, stair, wall
var dreamwoodIngredient as IIngredient[][] = [
  [<botania:dreamwood>,
  <botania:dreamwood:1>,
  <botania:dreamwood0stairs>,
  <botania:dreamwood0slab>,
  <botania:dreamwood0wall>,
  <botania:dreamwood1stairs>,
  <botania:dreamwood1slab>]
];
for i in dreamwoodIngredient {
  scripts.Botania.makeSlabToBlockGroover  (i[0].items[0], i[3]);
  scripts.Botania.makeSlabToBlockGroover  (i[1].items[0], i[6]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[3].items[0], i[0]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[6].items[0], i[1]);
  scripts.Botania.makeStairsFramingHammer (i[2].items[0], i[0]);
  scripts.Botania.makeStairsFramingHammer (i[5].items[0], i[2]);
  scripts.Botania.makeWallsCarver         (i[4].items[0], i[0]);
}

//==============================================================================bot_dreamWoodTwig
  //Rod of the bifrost
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:elvenPixieDust>, <botania:storage:4>],
    [<roots:fairy_dust>, <ore:dreamwoodTwig>, <ore:elvenPixieDust>],
    [<ore:dreamwoodTwig>, <roots:fairy_dust>, null]])
  .addOutput(<botania:rainbowrod>)
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWoodTwig]))
  .create();

  //Rod of the shaded mesa
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:dreamwoodTwig>, <ore:elvenDragonstone>],
    [<ore:runeAirB>, <botania:specialflower>.withTag({type: "daffomill"}), <ore:dreamwoodTwig>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeGreedB>, null]])
  .addOutput(<botania:gravityrod>.withTag({}))
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWoodTwig]))
  .create();

  //Rod of the terra firma
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwoodTwig>, <ore:runeWinterB>, <ore:blockTerrasteel>],
    [<ore:runeAutumnB>, <botania:skydirtrod>, <ore:runeSpringB>],
    [<roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeSummerB>, <ore:dreamwoodTwig>]])
  .addOutput(<botania:terraformrod>)
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWoodTwig]))
  .create();

  //Rod of the molten core
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwoodTwig>, <ore:runeFireB>, <ore:blockBlaze>],
    [<minecraft:lava_bucket>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:runeFireB>],
    [<minecraft:furnace>, <minecraft:lava_bucket>, <ore:dreamwoodTwig>]])
  .addOutput(<botania:smeltrod>)
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_dreamWoodTwig]))
  .create();

//==============================================================================bot_element
  //Elven mana spreader
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>],
    [<ore:blockElvenElementium>, <botania:spreader>, <ore:blockElvenElementium>],
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>]])
  .addOutput(<botania:spreader:2>)
  .addTool(<ore:artisansFramingHammer>, 150)
  .addTool(<ore:artisansSpanner>, 150)
  .addRequirement(GameStages.allOf([stages.bot_element, stages.bot_dreamWood])) //bot_dreamWood
  .create();

  //Drum of the gathering
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwood>, <ore:ingotElvenElementium>, <ore:dreamwood>],
    [<botania:dreamwood0slab>, <botania:forestdrum>, <botania:dreamwood0slab>],
    [<ore:dreamwood>, <ore:ingotElvenElementium>, <ore:dreamwood>]])
  .addOutput(<botania:forestdrum:2>)
  .addTool(<ore:artisansFramingHammer>, 30)
  .addTool(<ore:artisansHandsaw>, 25)
  .addRequirement(GameStages.allOf([stages.bot_element, stages.bot_dreamWood]))  //bot_dreamWood
  .create();

  //Starfield creator
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:elvenPixieDust>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:obsidian>, <ore:ingotElvenElementium>]])
  .addOutput(<botania:starfield>)
  .addTool(<ore:artisansSpanner>, 30)
  .addTool(<ore:artisansHandsaw>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_element, stages.bot_pixie]))  //bot_pixie
  .create();

  //Globetrotter's sash
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, null, <ore:eternalLifeEssence>],
    [<ore:ingotElvenElementium>, <botania:speedupbelt>, <ore:ingotElvenElementium>],
    [<ore:eternalLifeEssence>, null, <ore:ingotElvenElementium>]])
  .addOutput(<botania:supertravelbelt>)
  .addTool(<ore:artisansNeedle>, 150)
  .addTool(<ore:artisansLens>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Mana lens paintslinger
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>],
    [<ore:blockWool>, <botania:lens>.withTag({}), <ore:blockWool>],
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>]])
  .addOutput(<botania:lens:14>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Mana lens redirective
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotElvenElementium>, null],
    [<ore:livingwood>, <botania:lens>.withTag({}), <ore:livingwood>],
    [<ore:livingwood>, <ore:livingwood>, <ore:livingwood>]])
  .addOutput(<botania:lens:19>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Mana lens celebratory
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>],
    [<botania:lens>.withTag({})],
    [<minecraft:fireworks>]])
  .addOutput(<botania:lens:20>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Mana lens tripwire
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>],
    [<botania:lens>.withTag({})],
    [<minecraft:tripwire_hook>]])
  .addOutput(<botania:lens:23>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Extrapolated bucket
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <minecraft:bucket>, <ore:ingotElvenElementium>],
    [null, <ore:ingotElvenElementium>, null]])
  .addOutput(<botania:openbucket>)
  .addTool(<ore:artisansHammer>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Ring of far rich
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotElvenElementium>, null],
    [<ore:ingotElvenElementium>, <ore:runePrideB>, <ore:ingotElvenElementium>],
    [null, <ore:ingotElvenElementium>, null]])
  .addOutput(<botania:reachring>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_element]))
  .create();

  //Great fairy ring
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotElvenElementium>, null],
    [<ore:ingotElvenElementium>, <ore:elvenPixieDust>, <ore:ingotElvenElementium>],
    [null, <ore:ingotElvenElementium>, null]])
  .addOutput(<botania:pixiering>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_element, stages.bot_pixie])) //bot_pixie
  .create();

//==============================================================================bot_elem_tools
  //Elementium pickaxe
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <botania:manasteelpick>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:dreamwoodTwig>, <ore:ingotElvenElementium>],
    [null, <ore:dreamwoodTwig>, null]])
  .addOutput(<botania:elementiumpick>)
  .setSecondaryIngredients([<foundry:mold:7>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Elementium shovel
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <botania:manasteelshovel>, <ore:ingotElvenElementium>],
    [null, <ore:dreamwoodTwig>, null],
    [null, <ore:dreamwoodTwig>, null]])
  .addOutput(<botania:elementiumshovel>)
  .setSecondaryIngredients([<foundry:mold:10>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Elementium axe
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:manasteelaxe>, <ore:ingotElvenElementium>],
    [<ore:dreamwoodTwig>, <ore:ingotElvenElementium>],
    [<ore:dreamwoodTwig>, null]])
  .addOutput(<botania:elementiumaxe>)
  .setSecondaryIngredients([<foundry:mold:8>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Elementium sword
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotElvenElementium>, null],
    [<ore:ingotElvenElementium>, <botania:manasteelsword>, <ore:ingotElvenElementium>],
    [null, <ore:dreamwoodTwig>, null]])
  .addOutput(<botania:elementiumsword>)
  .setSecondaryIngredients([<foundry:mold:9>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Elementium shears
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <botania:manasteelshears>, <ore:ingotElvenElementium>]])
  .addOutput(<botania:elementiumshears>)
  .addTool(<ore:artisansHammer>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Rod of the shifting crust
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:obsidian>, <ore:runeSlothB>],
    [<botania:elementiumshovel>, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:obsidian>],
    [<roots:petal_dust>.withTag({spell: "spell_azure_bluet"}), <botania:elementiumpick>, null]])
  .addOutput(<botania:exchangerod>.withTag({}))
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_elem_tools]))
  .create();

//==============================================================================element_armor
  //Elemetium helmet
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:runeSpringB>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <botania:manasteelhelm>, <ore:ingotElvenElementium>]])
  .addOutput(<contenttweaker:blankelementiumhelmet>)
  .setSecondaryIngredients([<foundry:mold:12>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansHammer>, 75)
  .addRequirement(GameStages.anyOf([stages.element_armor]))
  .create();

  //Elemetium chestplate
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:runeSummerB>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <botania:manasteelchest>, <ore:ingotElvenElementium>],
    [null, <ore:ingotElvenElementium>, null]])
  .addOutput(<contenttweaker:blankelementiumchestplate>)
  .setSecondaryIngredients([<foundry:mold:13>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansHammer>, 75)
  .addRequirement(GameStages.anyOf([stages.element_armor]))
  .create();

  //Elemetium leggings
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:runeAutumnB>, <ore:ingotElvenElementium>],
    [null, <botania:manasteellegs>, null]])
  .addOutput(<contenttweaker:blankelementiumleggings>)
  .setSecondaryIngredients([<foundry:mold:14>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansHammer>, 75)
  .addRequirement(GameStages.anyOf([stages.element_armor]))
  .create();

  //Elemetium boots
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:runeWinterB>, <ore:ingotElvenElementium>],
    [null, <botania:manasteelboots>, null]])
  .addOutput(<contenttweaker:blankelementiumboots>)
  .setSecondaryIngredients([<foundry:mold:15>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansSpanner>, 50)
  .addTool(<ore:artisansHammer>, 75)
  .addRequirement(GameStages.anyOf([stages.element_armor]))
  .create();

Casting.addRecipe(<botania:elementiumhelm>  , <liquid:liquidelvenelementium> * 720  , <foundry:mold:12>, <contenttweaker:blankelementiumhelmet>     , 500);
Casting.addRecipe(<botania:elementiumchest> , <liquid:liquidelvenelementium> * 1152 , <foundry:mold:13>, <contenttweaker:blankelementiumchestplate> , 800);
Casting.addRecipe(<botania:elementiumlegs>  , <liquid:liquidelvenelementium> * 1008 , <foundry:mold:14>, <contenttweaker:blankelementiumleggings>   , 700);
Casting.addRecipe(<botania:elementiumboots> , <liquid:liquidelvenelementium> * 576  , <foundry:mold:15>, <contenttweaker:blankelementiumboots>      , 400);

//==============================================================================bot_dragonstone
  //Crystal bow
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:dreamwoodTwig>, <ore:Dragonstone>, <ore:manaString>],
    [<ore:dreamwoodTwig>, null, null, <ore:manaString>],
    [<ore:dreamwoodTwig>, null, null, <ore:manaString>],
    [<ore:dreamwoodTwig>, null, null, <ore:manaString>],
    [null, <ore:dreamwoodTwig>, <ore:Dragonstone>, <ore:manaString>]])
  .addOutput(<botania:crystalbow>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addTool(<ore:artisansChisel>, 75)
  .setMinimumTier(2)
  .addRequirement(GameStages.anyOf([stages.bot_dragonstone]))
  .create();

  //World seed
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:grass>],
    [<ore:seedWheat>],
    [<ore:elvenDragonstone>]])
  .addOutput(<botania:worldseed>)
  .addRequirement(GameStages.anyOf([stages.bot_dragonstone]))
  .create();

//==============================================================================bot_pixie
  //Gaia pylon
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:spellcloth>, <botania:elfglass>, <ore:elvenPixieDust>, <botania:elfglass>, <botania:spellcloth>],
    [<botania:elfglass>, <ore:ingotTerrasteel>, <ore:elvenPixieDust>, <ore:ingotTerrasteel>, <botania:elfglass>],
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <botania:pylon:1>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>],
    [<botania:elfglass>, <ore:ingotTerrasteel>, <ore:elvenPixieDust>, <ore:ingotTerrasteel>, <botania:elfglass>],
    [<botania:spellcloth>, <botania:elfglass>, <ore:elvenPixieDust>, <botania:elfglass>, <botania:spellcloth>]])
  .addOutput(<botania:pylon:2>)
  .addTool(<ore:artisansSpanner>, 250)
  .addTool(<ore:artisansPunch>, 100)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .setMinimumTier(2)
  .create();

  //Spectral platform
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwood>, <ore:elvenPixieDust>, <ore:dreamwood>],
    [<botania:dreamwood:3>, <botania:dreamwood:4>, <botania:dreamwood:3>],
    [<ore:dreamwood>, <ore:elvenPixieDust>, <ore:dreamwood>]])
  .addOutput(<botania:platform:1> * 4)
  .addTool(<ore:artisansHandsaw>, 30)
  .addTool(<ore:artisansFramingHammer>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Mana prism
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:elfglass>, <ore:gemPrismarine>, <botania:elfglass>],
    [<botania:elfglass>, <botania:platform:1>, <botania:elfglass>],
    [<botania:elfglass>, <ore:gemPrismarine>, <botania:elfglass>]])
  .addOutput(<botania:prism>)
  .addTool(<ore:artisansCarver>, 30)
  .addTool(<ore:artisansDriver>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Spectral rail
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:rail>, null],
    [<minecraft:rail>, <botania:platform:1>, <minecraft:rail>],
    [null, <minecraft:rail>, null]])
  .addOutput(<botania:ghostrail>)
  .addTool(<ore:artisansSpanner>, 30)
  .addTool(<ore:artisansDriver>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Mana lens warp
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:managlass>, <ore:elvenPixieDust>, <botania:managlass>],
    [<botania:managlass>, <botania:lens>.withTag({}), <botania:managlass>],
    [<botania:managlass>, <ore:elvenPixieDust>, <botania:managlass>]])
  .addOutput(<botania:lens:18>.withTag({}))
  .addTool(<ore:artisansSpanner>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Cocoon of caprice
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:manaString>, <ore:manaString>, <ore:manaString>],
    [<ore:clothManaweave>, <botania:felpumpkin>, <ore:clothManaweave>],
    [<ore:manaString>, <ore:elvenPixieDust>, <ore:manaString>]])
  .addOutput(<botania:cocoon>)
  .addTool(<ore:artisansGemCutter>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Spark tinkerer
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:livingrock>, <ore:ingotElvenElementium>],
    [<ore:livingrock>, <ore:blockRedstone>, <ore:livingrock>]])
  .addOutput(<botania:sparkchanger>)
  .addTool(<ore:artisansFramingHammer>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pixie, stages.bot_element])) //bot_element
  .create();

  //Flare chakram
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustBlaze>, <ore:dustBlaze>, <ore:dustBlaze>],
    [<botania:thornchakram>, <ore:elvenPixieDust>, <botania:thornchakram>],
    [<ore:dustBlaze>, <ore:dustBlaze>, <ore:dustBlaze>]])
  .addOutput(<botania:thornchakram:1>)
  .addTool(<ore:artisansFramingHammer>, 45)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Rod of the highlands
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:elvenPixieDust>, <botania:spark>],
    [<ore:feather>, <botania:dirtrod>, <ore:elvenPixieDust>],
    [<ore:runeAirB>, <ore:feather>, null]])
  .addOutput(<botania:skydirtrod>)
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Necodermal virus
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenPixieDust>, <botania:vineball>, <minecraft:magma_cream>],
    [<minecraft:fermented_spider_eye>, <minecraft:ender_eye>, <ore:skullZombie>]])
  .addOutput(<botania:virus>)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Nullodermal virus
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenPixieDust>, <botania:vineball>, <minecraft:magma_cream>],
    [<minecraft:fermented_spider_eye>, <minecraft:ender_eye>, <ore:skullSkeleton>]])
  .addOutput(<botania:virus:1>)
  .addTool(<ore:artisansPunch>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_pixie]))
  .create();

  //Spark augment
  //--Dispersive
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>],
    [<ore:elvenPixieDust>, <ore::runeWaterB>, <ore:elvenPixieDust>],
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>]])
  .addOutput(<botania:sparkupgrade>)
  .setSecondaryIngredients([<botania:spark>])
  .setConsumeSecondaryIngredients(true)
  .addTool(<ore:artisansLens>, 50)
  .addTool(<ore:artisansGemCutter>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pixie]))
  .create();
  //--Dominant
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>],
    [<ore:elvenPixieDust>, <ore::runeFireB>, <ore:elvenPixieDust>],
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>]])
  .addOutput(<botania:sparkupgrade:1>)
  .setSecondaryIngredients([<botania:spark>])
  .setConsumeSecondaryIngredients(true)
  .addTool(<ore:artisansLens>, 50)
  .addTool(<ore:artisansGemCutter>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pixie]))
  .create();
  //--Recessive
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>],
    [<ore:elvenPixieDust>, <ore::runeEarthB>, <ore:elvenPixieDust>],
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>]])
  .addOutput(<botania:sparkupgrade:2>)
  .setSecondaryIngredients([<botania:spark>])
  .setConsumeSecondaryIngredients(true)
  .addTool(<ore:artisansLens>, 50)
  .addTool(<ore:artisansGemCutter>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pixie]))
  .create();
  //--Isolated
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>],
    [<ore:elvenPixieDust>, <ore::runeAirB>, <ore:elvenPixieDust>],
    [<ore:ingotManasteel>, <ore:elvenPixieDust>, <ore:ingotManasteel>]])
  .addOutput(<botania:sparkupgrade:3>)
  .setSecondaryIngredients([<botania:spark>])
  .setConsumeSecondaryIngredients(true)
  .addTool(<ore:artisansLens>, 50)
  .addTool(<ore:artisansGemCutter>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pixie]))
  .create();

//==============================================================================bot_alfglass
  //Alfglass pane
RecipeBuilder.get("mason")
  .setShapeless([<botania:elfglass>])
  .addOutput(<botania:elfglasspane> * 2)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Alfglass flask
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:elfglass>, null, <botania:elfglass>],
    [null, <botania:elfglass>, null]])
  .addOutput(<botania:vial:1>)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Slime in a bottle
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <botania:elfglass>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:slimeball>, <ore:ingotElvenElementium>],
    [null, <ore:ingotElvenElementium>, null]])
  .addOutput(<botania:slimebottle>)
  .addTool(<ore:artisansSpanner>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Mana lens flare
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>],
    [<botania:lens>.withTag({})],
    [<botania:elfglass>]])
  .addOutput(<botania:lens:21>.withTag({}))
  .setSecondaryIngredients([<botania:rainbowrod>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansQuill>, 10)
  .addTool(<ore:artisansSpanner>, 45)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Bifrost block
RecipeBuilder.get("mage")
  .setShapeless([<botania:elfglass>])
  .addOutput(<botania:bifrostperm>)
  .setSecondaryIngredients([<botania:rainbowrod>])
  .setConsumeSecondaryIngredients(false)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Bifrost pane
RecipeBuilder.get("mason")
  .setShapeless([<botania:bifrostperm>])
  .addOutput(<botania:bifrostpermpane> * 2)
  .addTool(<ore:artisansHandsaw>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Fabulous mana pool
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:<botania:shimmerrock0slab>, <botania:pool>, <botania:shimmerrock0slab>],
    [<ore:<botania:shimmerrock0slab>, <botania:shimmerrock0slab>, <botania:shimmerrock0slab>]])
  .addOutput(<botania:pool:3>)
  .addTool(<ore:artisansHammer>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Shimmerrock
RecipeBuilder.get("mage")
  .setShapeless([<ore:livingrock>, <botania:bifrostperm>])
  .addOutput(<botania:shimmerrock>)
  .addTool(<ore:artisansGroover>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_alfglass]))
  .create();

  //Shimmerwood plank
RecipeBuilder.get("mage")
  .setShapeless([<botania:dreamwood:1>, <botania:bifrostperm>])
  .addOutput(<botania:shimmerwoodplanks>)
  .addTool(<ore:artisansGroover>, 10)
  .addRequirement(GameStages.allOf([stages.bot_alfglass, stages.bot_dreamWood]))  //bot_dreamWood
  .create();

  //Shimmerrock/wood plank, slab, stair
var shimmerIngredient as IIngredient[][] = [
  [<botania:shimmerrock>,
  <botania:shimmerwoodplanks>,
  <botania:shimmerrock0slab>,
  <botania:shimmerrock0stairs>,
  <botania:shimmerwoodplanks0slab>,
  <botania:shimmerwoodplanks0stairs>]
];
for i in dreamwoodIngredient {
  scripts.Botania.makeSlabToBlockGroover  (i[0].items[0], i[2]);
  scripts.Botania.makeSlabToBlockGroover  (i[1].items[0], i[4]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[2].items[0], i[0]);
  scripts.Botania.makeBlockToSlabHandsaw  (i[4].items[0], i[1]);
  scripts.Botania.makeStairsFramingHammer (i[3].items[0], i[0]);
  scripts.Botania.makeStairsFramingHammer (i[5].items[0], i[1]);
}

//==============================================================================end_first
  //
//==============================================================================bot_corporea
  //Corporea spark
RecipeBuilder.get("mage")
  .setShapeless([<botania:spark>, <ore:elvenPixieDust>, <ore:bEnderAirBottle>])
  .addOutput(<botania:corporeaspark>)
  .addTool(<ore:artisansRazor>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea master spark
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotTerrasteel>, <ore:elvenDragonstone>, <ore:ingotTerrasteel>],
    [<ore:elvenDragonstone>, <botania:corporeaspark>, <ore:elvenDragonstone>],
    [<ore:ingotTerrasteel>, <ore:elvenDragonstone>, <ore:ingotTerrasteel>]])
  .addOutput(<botania:corporeaspark:1>)
  .addTool(<ore:artisansRazor>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea index
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:bEnderAirBottle>, <ore:obsidian>, <ore:bEnderAirBottle>],
    [<ore:obsidian>, <botania:corporeaspark>, <ore:obsidian>],
    [<ore:elvenDragonstone>, <ore:obsidian>, <ore:elvenDragonstone>]])
  .addOutput(<botania:corporeaindex>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansSpanner>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea funnel
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:dropper>, null],
    [<minecraft:dropper>, <botania:corporeaspark>, <minecraft:dropper>],
    [null, <minecraft:dropper>, null]])
  .addOutput(<botania:corporeafunnel>)
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea interceptor
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:blockRedstone>, null],
    [<ore:blockRedstone>, <botania:corporeaspark>, <ore:blockRedstone>],
    [null, <ore:blockRedstone>, null]])
  .addOutput(<botania:corporeainterceptor>)
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea retainer
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:chest>, null],
    [<ore:chest>, <botania:corporeaspark>, <ore:chest>],
    [null, <ore:chest>, null]])
  .addOutput(<botania:corporearetainer>)
  .addTool(<ore:artisansSpanner>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

  //Corporea crystal cube
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <botania:corporeaspark>, <ore:ingotElvenElementium>],
    [<ore:ingotTerrasteel>, <botania:elfglass>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:dreamwood>, <ore:ingotTerrasteel>]])
  .addOutput(<botania:corporeacrystalcube>)
  .addTool(<ore:artisansSpanner>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_corporea]))
  .create();

//==============================================================================bot_terrasteel
  //Terrasteel block
RecipeBuilder.get("mason")
  .setShaped([
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>]])
  .addOutput(<botania:storage:1>)
  .addTool(<ore:artisansHammer>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Natura pylon
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:quartztypemana>, <ore:ingotTerrasteel>, <botania:quartztypedark>],
    [<botania:quartztypeblaze>, <botania:pylon>.withTag({}), <botania:quartztypelavender>],
    [<botania:quartztypered>, <minecraft:ender_eye>, <botania:quartztypesunny>]])
  .addOutput(<botania:pylon:1>)
  .addTool(<ore:artisansChisel>, 150)
  .addTool(<ore:artisansPunch>, 150)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Planestrider's sash
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:feather>, null],
    [<ore:ingotTerrasteel>, <botania:travelbelt>, <ore:ingotTerrasteel>],
    [<botania:grassseeds>, <ore:dustSugar>, <botania:grassseeds>]])
  .addOutput(<botania:speedupbelt>)
  .addTool(<ore:artisansNeedle>, 75)
  .addTool(<ore:artisansLens>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Stone of temperance
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:stone>, null],
    [<ore:stone>, <ore:runeEarthB>, <ore:stone>],
    [null, <ore:stone>, null]])
  .addOutput(<botania:temperancestone>)
  .addTool(<ore:artisansRazor>, 25)
  .addTool(<ore:artisansChisel>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Mana mirror
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:manaPearl>, <ore:livingrock>],
    [null, <ore:livingwoodTwig>, <ore:ingotTerrasteel>],
    [<botania:manatablet>.withTag({}), null, null]])
  .addOutput(<botania:manamirror>.withTag({}))
  .addTool(<ore:artisansHandsaw>, 25)
  .addTool(<ore:artisansChisel>, 30)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Greater band of mana
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotTerrasteel>,null],
    [<ore:ingotTerrasteel>, <botania:manaring>.withTag({}), <ore:ingotTerrasteel>],
    [null, <ore:ingotTerrasteel>, null]])
  .addOutput(<botania:manaringgreater>.withTag({}))
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Greater band of aura
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotTerrasteel>,null],
    [<ore:ingotTerrasteel>, <botania:auraring>, <ore:ingotTerrasteel>],
    [null, <ore:ingotTerrasteel>, null]])
  .addOutput(<botania:auraringgreater>)
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Greater ring of magnetization
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotTerrasteel>,null],
    [<ore:ingotTerrasteel>, <botania:magnetring>.withTag({}), <ore:ingotTerrasteel>],
    [null, <ore:ingotTerrasteel>, null]])
  .addOutput(<botania:magnetringgreater>.withTag({}))
  .addTool(<ore:artisansChisel>, 40)
  .addTool(<ore:artisansDriver>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Thorn chakram
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:vine>, <ore:vine>, <ore:vine>, <ore:vine>, <ore:vine>],
    [<ore:vine>, <ore:vine>, <ore:ingotTerrasteel>, <ore:vine>, <ore:vine>],
    [<ore:vine>, <ore:ingotTerrasteel>, <ore:vine>, <ore:ingotTerrasteel>, <ore:vine>],
    [<ore:vine>, <ore:vine>, <ore:ingotTerrasteel>, <ore:vine>, <ore:vine>],
    [<ore:vine>, <ore:vine>, <ore:vine>, <ore:vine>, <ore:vine>]])
  .addOutput(<botania:thornchakram>)
  .addTool(<ore:artisansGemCutter>, 25)
  .addTool(<ore:artisansPliers>, 20)
  .addTool(<ore:artisansRazor>, 10)
  .setMinimumTier(2)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Livingwood glimmering
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dustGlowstone>, <ore:livingwood>, <ore:livingwood>, <ore:livingwood>, <ore:dustGlowstone>],
    [<ore:livingwood>, <ore:dustGlowstone>, <ore:blockGlowstone>, <ore:dustGlowstone>, <ore:livingwood>],
    [<ore:livingwood>, <ore:blockGlowstone>, <ore:livingwood>, <ore:blockGlowstone>, <ore:livingwood>],
    [<ore:livingwood>, <ore:dustGlowstone>, <ore:blockGlowstone>, <ore:dustGlowstone>, <ore:livingwood>],
    [<ore:dustGlowstone>, <ore:livingwood>, <ore:livingwood>, <ore:livingwood>, <ore:dustGlowstone>]])
  .addOutput(<botania:livingwood:5>)
  .addTool(<ore:artisansGemCutter>, 25)
  .addTool(<ore:artisansChisel>, 20)
  .addTool(<ore:artisansRazor>, 10)
  .setMinimumTier(2)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

  //Elven gateway core
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:livingwood:5>, <ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>, <botania:livingwood:5>],
    [<ore:livingwood>, <ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>, <ore:livingwood>],
    [<ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:blockTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>],
    [<ore:livingwood>, <ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>, <ore:livingwood>],
    [<botania:livingwood:5>, <ore:livingwood>, <ore:ingotTerrasteel>, <ore:livingwood>, <botania:livingwood:5>]])
  .addOutput(<botania:alfheimportal>)
  .addTool(<ore:artisansChisel>, 100)
  .addTool(<ore:artisansGemCutter>, 150)
  .setMinimumTier(2)
  .addRequirement(GameStages.anyOf([stages.bot_terrasteel]))
  .create();

//==============================================================================bot_endairbottle
  //Red string
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:manaString>, <ore:blockRedstone>, <ore:manaString>],
    [<ore:elvenPixieDust>, <ore:bEnderAirBottle>, <ore:elvenPixieDust>],
    [<ore:manaString>, <ore:blockRedstone>, <ore:manaString>]])
  .addOutput(<botania:manaresource:12>)
  .addTool(<ore:artisansNeedle>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

  //Thundercaller
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, null, <ore:ingotElvenElementium>],
    [<ore:manaDiamond>, <botania:terrasword>, <ore:manaDiamond>],
    [<ore:bEnderAirBottle>, null, <ore:bEnderAirBottle>]])
  .addOutput(<botania:thundersword>)
  .addTool(<ore:artisansSpanner>, 40)
  .addTool(<ore:artisansQuill>, 30)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

  //Starcaller
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, null, <ore:ingotElvenElementium>],
    [<ore:elvenDragonstone>, <botania:terrasword>, <ore:elvenDragonstone>],
    [<ore:bEnderAirBottle>, null, <ore:bEnderAirBottle>]])
  .addOutput(<botania:starsword>)
  .addTool(<ore:artisansSpanner>, 40)
  .addTool(<ore:artisansQuill>, 30)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

  //Life imbuer
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:rodBlaze>, <ore:ingotElvenElementium>, <ore:rodBlaze>],
    [<ore:blockPrismarineDark>, <ore:blockManasteel>, <ore:blockPrismarineDark>],
    [<ore:blockPrismarineDark>, <ore:bEnderAirBottle>, <ore:blockPrismarineDark>]])
  .addOutput(<botania:spawnerclaw>)
  .addTool(<ore:artisansCarver>, 50)
  .addTool(<ore:artisansKnife>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

  //Resolute ivy
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenPixieDust>, <ore:vine>, <ore:elvenPixieDust>],
    [<ore:vine>, <ore:bEnderAirBottle>, <ore:vine>],
    [<ore:slimeball>, null, <ore:slimeball>]])
  .addOutput(<botania:keepivy>)
  .addTool(<ore:artisansShears>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

  //Hand of ender
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:manaPearl>, <ore:leather>, <ore:obsidian>],
    [<ore:leather>, <ore:chestEnder>, <ore:leather>],
    [<ore:obsidian>, <ore:leather>, <ore:bEnderAirBottle>]])
  .addOutput(<botania:enderhand>)
  .addTool(<ore:artisansNeedle>, 50)
  .addTool(<ore:artisansLens>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_endairbottle]))
  .create();

//==============================================================================bot_red_string
  //Red stringed container
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <ore:chest>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringcontainer>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Red stringed dispenser
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <minecraft:dispenser>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringdispenser>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Red stringed nulifier
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <minecraft:bucket>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringfertilizer>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Red stringed comparator
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <minecraft:comparator>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringcomparator>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Red stringed spoofer
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <botania:spreader:2>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringrelay>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Red stringed interceptor
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>],
    [<ore:livingrock>, <minecraft:light_weighted_pressure_plate>, <ore:bRedString>],
    [<ore:livingrock>, <ore:livingrock>, <ore:livingrock>]])
  .addOutput(<botania:redstringinterceptor>)
  .addTool(<ore:artisansFramingHammer>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Luminizer launcher
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:dreamwood>, <ore:dreamwood>, <ore:dreamwood>],
    [<ore:dreamwood>, <botania:lightrelay>, <ore:dreamwood>]])
  .addOutput(<botania:lightlauncher>)
  .addTool(<ore:artisansRazor>, 20)
  .addTool(<ore:artisansFramingHammer>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Luminizer
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenDragonstone>, <ore:blockGlowstone>, <ore:elvenDragonstone>],
    [<ore:blockGlowstone>, <ore:bRedString>, <ore:blockGlowstone>],
    [<ore:elvenDragonstone>, <ore:blockGlowstone>, <ore:elvenDragonstone>]])
  .addOutput(<botania:lightrelay>)
  .addTool(<ore:artisansRazor>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Luminizer detector
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:dustRedstone>, null],
    [<ore:dustRedstone>, <botania:lightrelay>, <ore:dustRedstone>],
    [null, <ore:dustRedstone>, null]])
  .addOutput(<botania:lightrelay:1>)
  .addTool(<ore:artisansRazor>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Luminizer fork
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:craftingRedstoneTorch>, null],
    [<ore:craftingRedstoneTorch>, <botania:lightrelay>, <ore:craftingRedstoneTorch>],
    [null, <ore:craftingRedstoneTorch>, null]])
  .addOutput(<botania:lightrelay:2>)
  .addTool(<ore:artisansRazor>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

  //Luminizer toggle
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:blockLever>, null],
    [<ore:blockLever>, <botania:lightrelay>, <ore:blockLever>],
    [null, <ore:blockLever>, null]])
  .addOutput(<botania:lightrelay:3>)
  .addTool(<ore:artisansRazor>, 50)
  .addRequirement(GameStages.anyOf([stages.bot_red_string]))
  .create();

//==============================================================================bot_gaia
  //Life aggregator
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:eternalLifeEssence>, <ore:ingotElvenElementium>, <ore:eternalLifeEssence>],
    [<ore:bEnderAirBottle>, <ore:elvenDragonstone>, <ore:bEnderAirBottle>],
    [<ore:eternalLifeEssence>, <ore:ingotElvenElementium>, <ore:eternalLifeEssence>]])
  .addOutput(<botania:spawnermover>)
  .addTool(<ore:artisansCarver>, 50)
  .addTool(<ore:artisansCutters>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Gaia spirit ingot
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:eternalLifeEssence>, null],
    [<ore:eternalLifeEssence>, <ore:ingotTerrasteel>, <ore:eternalLifeEssence>],
    [null, <ore:eternalLifeEssence>, null]])
  .addOutput(<botania:manaresource:14>)
  .addTool(<ore:artisansHammer>, 20)
  .addTool(<ore:artisansPunch>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Worldshaper's astrolabe
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotElvenElementium>, <ore:eternalLifeEssence>],
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>],
    [<ore:eternalLifeEssence>, <ore:ingotElvenElementium>, <ore:dreamwood>]])
  .addOutput(<botania:astrolabe>.withTag({}))
  .addTool(<ore:artisansDriver>, 20)
  .addTool(<ore:artisansPunch>, 20)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Black hole talisman
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:eternalLifeEssence>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:bEnderAirBottle>, <ore:ingotElvenElementium>],
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>]])
  .addOutput(<botania:blackholetalisman>.withTag({}))
  .addTool(<ore:artisansSpanner>, 20)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Nimbus amulet
RecipeBuilder.get("mage")
  .setShaped([
    [<minecraft:ghast_tear>, <ore:ingotElvenElementium>, <minecraft:ghast_tear>],
    [<minecraft:ghast_tear>, <botania:cloudpendant>, <minecraft:ghast_tear>],
    [<ore:blockWool>, <ore:eternalLifeEssence>, <ore:blockWool>]])
  .addOutput(<botania:supercloudpendant>)
  .addTool(<ore:artisansGrimoire>, 80)
  .addTool(<ore:artisansSpanner>, 40)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Rod of the unstable reservoir
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:eternalLifeEssence>, <ore:elvenDragonstone>, <ore:elvenDragonstone>],
    [null, <roots:staff>.withTag({spell3: "null", spell2: "null", selected: 0, spell1: "null", spell0: "null"}), <ore:elvenDragonstone>],
    [<ore:dreamwoodTwig>, null, <ore:eternalLifeEssence>]])
  .addOutput(<botania:missilerod>)
  .addTool(<ore:artisansRazor>, 50)
  .addTool(<ore:artisansPunch>, 50)
  .setMaximumTier(1)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Crimson pendant
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:blockBlaze>, <ore:blockBlaze>, <ore:blockBlaze>, <ore:blockBlaze>, <ore:blockBlaze>],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <ore:eternalLifeEssence>, <minecraft:nether_brick>, <minecraft:nether_brick>],
    [null, <ore:eternalLifeEssence>, <botania:lavapendant>, <ore:eternalLifeEssence>, null],
    [<ore:gemEnderEye>, <minecraft:nether_brick>, <ore:eternalLifeEssence>, <minecraft:nether_brick>, <ore:gemEnderEye>],
    [<minecraft:nether_brick>, <minecraft:nether_brick>, <ore:eternalLifeEssence>, <minecraft:nether_brick>, <minecraft:nether_brick>]])
  .addOutput(<botania:superlavapendant>)
  .addTool(<ore:artisansDriver>, 50)
  .addTool(<ore:artisansGemCutter>, 100)
  .setFluid(<liquid:lava> * 10000)
  .setMinimumTier(2)
  .addRequirement(GameStages.allOf([stages.bot_gaia, stages.bot_pendant]))
  .create();

  //Flugel tiara
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:eternalLifeEssence>, <ore:eternalLifeEssence>, <ore:eternalLifeEssence>],
    [<ore:blockElvenElementium>, <ore:eternalLifeEssence>, <ore:blockElvenElementium>],
    [<ore:feather>, <ore:bEnderAirBottle>, <ore:feather>]])
  .addOutput(<botania:flighttiara>)
  .addTool(<ore:artisansGemCutter>, 120)
  .addTool(<ore:artisansPunch>, 100)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Flugel tiara others
var OtherTiara as IItemStack[IItemStack] = {
  <botania:flighttiara:1> : <minecraft:quartz>,
  <botania:flighttiara:2> : <botania:quartz>,
  <botania:flighttiara:3> : <botania:quartz:1>,
  <botania:flighttiara:4> : <botania:quartz:2>,
  <botania:flighttiara:5> : <botania:quartz:3>,
  <botania:flighttiara:6> : <botania:quartz:4>,
  <botania:flighttiara:7> : <botania:quartz:5>,
  <botania:flighttiara:8> : <botania:quartz:6>
};
for tiara, quartz in OtherTiara {
  RecipeBuilder.get("mage")
    .setShapeless([<botania:flighttiara:*>, quartz])
    .addOutput(tiara)
    .addTool(<ore:artisansGemCutter>, 20)
    .addRequirement(GameStages.anyOf([stages.bot_gaia]))
    .create();
}

  //Manastorm charge
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:livingwood>, <minecraft:tnt>, <ore:livingwood>],
    [<minecraft:tnt>, <ore:eternalLifeEssence>, <minecraft:tnt>],
    [<ore:livingwood>, <minecraft:tnt>, <ore:livingwood>]])
  .addOutput(<botania:manabomb>)
  .addTool(<ore:artisansTrowel>, 20)
  .addTool(<ore:artisansPunch>, 10)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Gaia mana spreader
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:elvenDragonstone>, <ore:eternalLifeEssence>, <ore:elvenDragonstone>],
    [<ore:eternalLifeEssence>, <botania:spreader:2>, <ore:eternalLifeEssence>],
    [<ore:elvenDragonstone>, <ore:eternalLifeEssence>, <ore:elvenDragonstone>]])
  .addOutput(<botania:spreader:3>)
  .addTool(<ore:artisansFramingHammer>, 150)
  .addTool(<ore:artisansSpanner>, 150)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .create();

  //Cloak of virtue
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>],
    [<ore:ingotElvenElementium>, <ore:dustGlowstone>, <ore:clothManaweave>, <ore:dustGlowstone>, <ore:ingotElvenElementium>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:dustGlowstone>, <ore:eternalLifeEssence>, <ore:dustGlowstone>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:dustGlowstone>, <ore:elvenPixieDust>, <ore:dustGlowstone>, <ore:clothManaweave>]])
  .addOutput(<botania:holycloak>)
  .addTool(<ore:artisansNeedle>, 100)
  .addTool(<ore:artisansCompass>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .setMinimumTier(2)
  .create();

  //Cloak of sin
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>],
    [<ore:ingotElvenElementium>, <ore:dustRedstone>, <ore:clothManaweave>, <ore:dustRedstone>, <ore:ingotElvenElementium>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:dustRedstone>, <ore:eternalLifeEssence>, <ore:dustRedstone>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:dustRedstone>, <ore:elvenPixieDust>, <ore:dustRedstone>, <ore:clothManaweave>]])
  .addOutput(<botania:unholycloak>)
  .addTool(<ore:artisansNeedle>, 100)
  .addTool(<ore:artisansCompass>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .setMinimumTier(2)
  .create();

  //Cloak of balance
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>],
    [<ore:ingotElvenElementium>, <ore:gemEmerald>, <ore:clothManaweave>, <ore:gemEmerald>, <ore:ingotElvenElementium>],
    [<ore:clothManaweave>, <ore:clothManaweave>, <ore:blockWoolWhite>, <ore:clothManaweave>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:gemEmerald>, <ore:eternalLifeEssence>, <ore:gemEmerald>, <ore:clothManaweave>],
    [<ore:clothManaweave>, <ore:gemEmerald>, <ore:elvenPixieDust>, <ore:gemEmerald>, <ore:clothManaweave>]])
  .addOutput(<botania:balancecloak>)
  .addTool(<ore:artisansNeedle>, 100)
  .addTool(<ore:artisansCompass>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .setMinimumTier(2)
  .create();

  //Charm of the diva
RecipeBuilder.get("mage")
  .setShaped([
    [null, <ore:ingotGold>, null, null, <ore:ingotGold>],
    [<ore:ingotGold>, <ore:runePrideB>, <ore:ingotGold>, <ore:eternalLifeEssence>, <ore:ingotGold>],
    [null, <ore:ingotGold>, <botania:tinyplanet>, <ore:ingotGold>, <ore:ingotGold>],
    [null, <ore:eternalLifeEssence>, <ore:ingotGold>, <ore:ingotGold>, null],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, null, null]])
  .addOutput(<botania:divacharm>)
  .addTool(<ore:artisansGemCutter>, 100)
  .addTool(<ore:artisansCompass>, 25)
  .addRequirement(GameStages.anyOf([stages.bot_gaia]))
  .setMinimumTier(2)
  .create();

//==============================================================================bot_pendant
  //Pyroclast pendant
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeSummerB>, <ore:manaString>, null],
    [<ore:manaString>, <botania:brewvial>.withTag({brewKey: "fireResistance"}), <ore:manaString>],
    [<ore:ingotManasteel>, <ore:manaString>, <ore:runeFireB>]])
  .addOutput(<botania:lavapendant>)
  .setFluid(<liquid:lava> * 1000)
  .addTool(<ore:artisansDriver>, 50)
  .addTool(<ore:artisansGemCutter>, 100)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pendant, stages.bot_brewing_vial])) //bot_brewing_vial
  .create();

  //Snowflake pendant
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:runeWinterB>, <ore:manaString>, null],
    [<ore:manaString>, <botania:brewvial>.withTag({brewKey: "waterBreathing"}), <ore:manaString>],
    [<ore:ingotManasteel>, <ore:manaString>, <ore:runeWaterB>]])
  .addOutput(<botania:icependant>)
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansDriver>, 50)
  .addTool(<ore:artisansGemCutter>, 100)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_pendant, stages.bot_brewing_vial])) //bot_brewing_vial
  .create();

//==============================================================================chisel_group
  //Pavement
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>])
  .addOutput(<botania:pavement> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>, <ore:coal>])
  .addOutput(<botania:pavement:1> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>, <ore:gemLapis>])
  .addOutput(<botania:pavement:2> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>, <ore:dustRedstone>])
  .addOutput(<botania:pavement:3> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>, <ore:cropWheat>])
  .addOutput(<botania:pavement:4> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mason")
  .setShapeless([<ore:livingrock>, <ore:cobblestone>, <ore:blockGravel>, <minecraft:slime_ball>])
  .addOutput(<botania:pavement:5> * 3)
  .addTool(<ore:artisansChisel>, 5)
  .addRequirement(GameStages.anyOf([stages.chisel_group]))
  .setMaximumTier(1)
  .create();
