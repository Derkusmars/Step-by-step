#priority 10
import mods.artisanworktables.builder.RecipeBuilder;
import mods.artisanworktables.integration.requirement.GameStages;

//==============================================================================bot_ms_tools
  //Manasteel hoe
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotManasteel>, <ore:ingotManasteel>],
    [null, <ore:livingwoodTwig>],
    [null, <ore:livingwoodTwig>]])
  .addOutput(<aiotbotania:manasteelhoe>)
  .setSecondaryIngredients([<foundry:mold:11>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //Manasteel AIOT
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:manasteelpick>, <botania:manasteelsword>, <botania:manasteelshovel>],
    [<ore:manaString>, <botania:lens>.withTag({}), <ore:manaString>],
    [<botania:manasteelaxe>, <minecraft:web>, <aiotbotania:manasteelhoe>]])
  .addOutput(<aiotbotania:manasteelaiot>)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_ms_tools]))
  .create();

  //==============================================================================bot_elem_tools
  //Elemetium hoe
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElvenElementium>, <ore:ingotElvenElementium>],
    [null, <ore:dreamwoodTwig>],
    [null, <ore:dreamwoodTwig>]])
  .addOutput(<aiotbotania:elementiumhoe>)
  .setSecondaryIngredients([<foundry:mold:11>])
  .setConsumeSecondaryIngredients(false)
  .addTool(<ore:artisansHandsaw>, 15)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();

  //Elemetium AIOT
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:elementiumpick>, <botania:elementiumsword>, <botania:elementiumshovel>],
    [<ore:manaString>, <botania:lens>.withTag({}), <ore:manaString>],
    [<botania:elementiumaxe>, <minecraft:web>, <aiotbotania:elementiumhoe>]])
  .addOutput(<aiotbotania:elementiumaiot>)
  .addTool(<ore:artisansSpanner>, 25)
  .addTool(<ore:artisansRazor>, 25)
  .setMaximumTier(1)
  .addRequirement(GameStages.allOf([stages.bot_elem_tools]))
  .create();
