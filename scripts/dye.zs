import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanintegrations.requirement.GameStages;

/*  misc
  0: "black",
  1: "red",
  2: "green",
  3: "brown",
  4: "blue",
  5: "purple",
  6: "cyan",
  7: "lightGray",
  8: "gray",
  9: "pink",
  10: "lime",
  11: "yellow",
  12: "lightBlue",
  13: "magenta",
  14: "orange",
  15: "white"
*/

recipes.remove(<ore:dye>);

var GTdye as IItemStack[IItemStack] = {
  <gregtech:meta_item_2:32414> : <botania:petal>,
  <gregtech:meta_item_2:32415> : <botania:petal:1>,
  <gregtech:meta_item_2:32416> : <botania:petal:2>,
  <gregtech:meta_item_2:32417> : <botania:petal:3>,
  <gregtech:meta_item_2:32418> : <botania:petal:4>,
  <gregtech:meta_item_2:32419> : <botania:petal:5>,
  <gregtech:meta_item_2:32420> : <botania:petal:6>,
  <gregtech:meta_item_2:32421> : <botania:petal:7>,
  <gregtech:meta_item_2:32422> : <botania:petal:8>,
  <gregtech:meta_item_2:32423> : <botania:petal:9>,
  <gregtech:meta_item_2:32424> : <botania:petal:10>,
  <gregtech:meta_item_2:32425> : <botania:petal:11>,
  <gregtech:meta_item_2:32426> : <botania:petal:12>,
  <gregtech:meta_item_2:32427> : <botania:petal:13>,
  <gregtech:meta_item_2:32428> : <botania:petal:14>,
  <gregtech:meta_item_2:32429> : <botania:petal:15>
};

for gtdyes, petal in GTdye {
  RecipeBuilder.get("farmer")
    .setShapeless([petal])
    .addOutput(gtdyes)
    .addTool(<ore:artisansMortar>, 5)
    .addRequirement(GameStages.anyOf([stages.bot_flowers]))
    .create();
}

//      TODO
//Dye From Flower
RecipeBuilder.get("farmer")
.setShapeless([<minecraft:double_plant>])
.addOutput(<minecraft:dye:11> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:yellow_flower>])
.addOutput(<minecraft:dye:11>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:double_plant:4>])
.addOutput(<minecraft:dye:1> *2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower>])
.addOutput(<minecraft:dye:1>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:4>])
.addOutput(<minecraft:dye:1>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:5>])
.addOutput(<minecraft:dye:14>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeRed>, <ore:dyeYellow>])
.addOutput(<minecraft:dye:14> *2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:3>])
.addOutput(<minecraft:dye:7>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:8>])
.addOutput(<minecraft:dye:7>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:6>])
.addOutput(<minecraft:dye:7>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeGray>, <ore:dyeWhite>])
.addOutput(<minecraft:dye:7> *2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:2>])
.addOutput(<minecraft:dye:13>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:double_plant:1>])
.addOutput(<minecraft:dye:13> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyePurple>, <ore:dyePink>])
.addOutput(<minecraft:dye:13>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:5>])
.addOutput(<minecraft:dye:9> *2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:7>])
.addOutput(<minecraft:dye:9>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeRed>, <ore:dyeWhite>])
.addOutput(<minecraft:dye:9>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:red_flower:1>])
.addOutput(<minecraft:dye:12>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeBlue>, <ore:dyeWhite>])
.addOutput(<minecraft:dye:12> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeBlue>, <ore:dyeGreen>])
.addOutput(<minecraft:dye:6> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeBlue>, <ore:dyeYellow>])
.addOutput(<minecraft:dye:2> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeBlack>, <ore:dyeWhite>])
.addOutput(<minecraft:dye:8> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeGreen>, <ore:dyeWhite>])
.addOutput(<minecraft:dye:10> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<ore:dyeBlue>, <ore:dyeRed>])
.addOutput(<minecraft:dye:5> * 2)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("farmer")
.setShapeless([<minecraft:beetroot>])
.addOutput(<minecraft:dye:1>)
.addTool(<ore:artisansMortar>, 10)
.setMaximumTier(1)
.create();
