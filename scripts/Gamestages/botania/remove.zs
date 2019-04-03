#priority 1000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemDefinition;
import crafttweaker.data.IData;

import mods.botania.Apothecary;
import mods.botania.ManaInfusion;

import mods.foundry.Casting;

//recipes.removeByMod("Botania");
/*
val craftingToDisable = [
//<botania:twigwand:*>,                                                         //Wand of the forest

  <botania:managlasspane>,                                                      //Mana glass pane
  <botania:storage>,                                                            //Manasteel block
  <botania:manasteelshears>,                                                    //Manasteel shears
  <botania:enderdagger>,                                                        //Soulscriber
  <botania:monocle>,                                                            //Manaseer monocle

  <botania:worldseed>,                                                          //World seed

  <botania:elfglasspane>,                                                       //Alfglass pane
  <botania:vial:1>,                                                             //Alfglass flask
  <botania:slimebottle>,                                                        //Slime in a bottle
  <botania:lens:21>.withTag({}),                                                //Mana lens flare
  <botania:bifrostperm>,                                                        //Bifrost block
  <botania:bifrostpermpane>,                                                    //Bifrost pane

  <botania:terrapick>,                                                          //Terra shatterer
  <botania:terrasword>,                                                         //Terra blade
  <botania:terraaxe>,                                                           //Terra truncator

  <botania:pavement:*>,                                                         //Portuguese Pavement

  <botania:corporeacrystalcube>,                                                //Corporea crystal cube
  <botania:corporeaspark>,                                                      //Corporea spark
  <botania:corporeaspark:1>,                                                    //Corporea master spark
  <botania:corporeaindex>,                                                      //Corporea index
  <botania:corporeafunnel>,                                                     //Corporea funnel
  <botania:corporeainterceptor>,                                                //Corporea interceptor
  <botania:corporearetainer>                                                    //Corporea retainer
] as IItemStack[];
*/

val itemToDisable = [
  <botania:manainkwell>,                                                        //Botanurgist's inkwell
  <botania:autocraftinghalo>,                                                   //Manufactory halo
  <botania:craftinghalo>,                                                       //Assembly halo
  <botania:root>,                                                               //Block root
  <botania:manasteelhelmreveal>,                                                //Manasteel helmet of revealing
  <botania:elementiumhelmreveal>,                                               //Elemetium helmet of revealing
  <botania:terrasteelhelmreveal>,                                               //Terrasteel helmet of revealing
  <botania:platform:2>                                                          //Infrangible platform
] as IItemStack[];

mods.jei.JEI.removeAndHide(<botania:twigwand:*>);                               //Wand of the forest

val itemToHide = [
  <botania:specialflower>.withTag({type: "bellethornChibi"}),
  <botania:specialflower>.withTag({type: "marimorphosisChibi"}),
  <botania:specialflower>.withTag({type: "agricarnationChibi"}),
  <botania:specialflower>.withTag({type: "hopperhockChibi"}),
  <botania:specialflower>.withTag({type: "rannuncarpusChibi"}),
  <botania:specialflower>.withTag({type: "clayconiaChibi"}),
  <botania:specialflower>.withTag({type: "bubbellChibi"}),
  <botania:specialflower>.withTag({type: "solegnoliaChibi"}),

  <botania:specialflower>.withTag({type: "sanvocalia_chibi"}),
  <botania:specialflower>.withTag({type: "sweet_alexum_chibi"}),

  <botania:floatingspecialflower:*>,
  <botania:altgrass:*>,
  <botania:mushroom:*>,
  <botania:enchantedsoil>,                                                      //Enchanted soil
  <botania:enchanter>,                                                          //Mana enchanter
  <botania:bifrost>,                                                            //Temporary bifrost block
  <botania:cacophoniumblock>,                                                   //Cacophonium block
  <botania:pestleandmortar>,                                                    //Pestle and mortar
  <botania:manaresource:11>,                                                    //Crafting placeholder
  <botania:craftpattern:*>,                                                     //Crafting pattern all
  <botania:conjurationcatalyst>,                                                //Conjuration catalyst
  <botania:rfgenerator>                                                         //Mana fluxfield
] as IItemStack[];

//scripts.globalfunctions.disableCraftings(craftingToDisable);
scripts.globalfunctions.disableItems(itemToDisable);
scripts.globalfunctions.hideItems(itemToHide);

for i in 0 to 16 {
  recipes.remove(<botania:petal>.definition.makeStack(i));
  recipes.remove(<botania:petalblock>.definition.makeStack(i));
  recipes.remove(<botania:dye>.definition.makeStack(i));
  recipes.remove(<botania:shinyflower>.definition.makeStack(i));

  <ore:botaniaPetal>.add(<botania:petal>.definition.makeStack(i));
  <ore:botaniaPetalBlock>.add(<botania:petalblock>.definition.makeStack(i));
  <ore:botaniaDye>.add(<botania:dye>.definition.makeStack(i));
  <ore:botaniaFlower>.add(<botania:flower>.definition.makeStack(i));
  <ore:botaniaShinyFlower>.add(<botania:shinyflower>.definition.makeStack(i));
}

for i in 0 to 9 {
  recipes.remove(<botania:altar>.definition.makeStack(i));

  <ore:botaniaAltar>.add(<botania:altar>.definition.makeStack(i));
}

Apothecary.removeRecipe("puredaisy");
Apothecary.removeRecipe("sunbless");
Apothecary.removeRecipe("moonbless");
Apothecary.removeRecipe("endoflame");

var mold as IItemStack[] = [<foundry:mold:12>, <foundry:mold:13>, <foundry:mold:14>, <foundry:mold:15>];
for i in mold {
    Casting.removeRecipe(<liquid:liquidmanasteel>, i);
    Casting.removeRecipe(<liquid:liquidelvenelementium>, i);
}

mods.botania.RuneAltar.removeRecipe(<botania:rune:*>);

// Mana infusion remove
ManaInfusion.removeRecipe(<minecraft:flint>);             #Flint
ManaInfusion.removeRecipe(<botania:manaresource:23>);     #Mana powder
