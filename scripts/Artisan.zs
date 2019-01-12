import mods.artisanworktables.builder.RecipeBuilder;

#Basic workbench
recipes.remove(<artisanworktables:worktable:5>);
recipes.addShapeless(<artisanworktables:worktable:5>, [<primal:flint_knapp>,<factorytech:machinepart:180>,<primal:logs_stripped:*>,<minecraft:stick>]);

#Carpenters workbench
RecipeBuilder.get("basic")
  .setShaped([
  [<minecraft:stick>, <primal:logs_stripped:*>, <minecraft:stick>],
  [<primal:logs_stripped:*>, <ore:logWood>, <primal:logs_stripped:*>],
  [<minecraft:stick>, <primal:logs_stripped:*>, <minecraft:stick>]])
  .addOutput(<artisanworktables:worktable:1>)
  .setMaximumTier(0)
  .create();
