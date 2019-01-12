import mods.artisanworktables.builder.RecipeBuilder;

#Sariras Brick
mods.primal.Smelter.addRecipe(
    "brick",
    6,
    [<minecraft:clay_ball>],
    [<minecraft:brick>]
);

#Remove Brick From Hibachi
mods.primal.Hibachi.removeRecipe("primal:vanilla_brick");

#Remove Sticks from Caldron
mods.primal.Cauldron.removeRecipe("primal:stick_from_corypha");
mods.primal.Cauldron.removeRecipe("primal:stick_from_lacquer");

#Flint Workblade
recipes.remove(<primal:flint_workblade>);
recipes.addShapeless(<primal:flint_workblade>, [<primal:flint_knapp>,<ore:cordagePlant>,<primal:flint_knapp>,<minecraft:stick>]);

#Wood Pin
 RecipeBuilder.get("carpenter")
.setShapeless([<minecraft:stick>])
.addOutput(<primal:wood_pin>)
.addTool(<ore:artisansHandsaw>, 10)
.create();

#Drying Rack
recipes.remove(<primal:drying_rack:*>)
RecipeBuilder.get("carpenter")
  .setShaped([
  [<minecraft:stick>, <primal:slat_oak>, <minecraft:stick>],
  [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
  [<minecraft:stick>, null, <minecraft:stick>]])
  .addOutput(<primal:drying_rack>)
  .addTool(<ore:artisansFramingHammer>, 75)
  .create();

  RecipeBuilder.get("carpenter")
    .setShaped([
    [<minecraft:stick>, <primal:slat_spruce>, <minecraft:stick>],
    [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
    [<minecraft:stick>, null, <minecraft:stick>]])
    .addOutput(<primal:drying_rack:1>)
    .addTool(<ore:artisansFramingHammer>, 75)
    .create();

    RecipeBuilder.get("carpenter")
      .setShaped([
      [<minecraft:stick>, <primal:slat_birch>, <minecraft:stick>],
      [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
      [<minecraft:stick>, null, <minecraft:stick>]])
      .addOutput(<primal:drying_rack:2>)
      .addTool(<ore:artisansFramingHammer>, 75)
      .create();

      RecipeBuilder.get("carpenter")
        .setShaped([
        [<minecraft:stick>, <primal:slat_jungle>, <minecraft:stick>],
        [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
        [<minecraft:stick>, null, <minecraft:stick>]])
        .addOutput(<primal:drying_rack:3>)
        .addTool(<ore:artisansFramingHammer>, 75)
        .create();

        RecipeBuilder.get("carpenter")
          .setShaped([
          [<minecraft:stick>, <primal:slat_acacia>, <minecraft:stick>],
          [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
          [<minecraft:stick>, null, <minecraft:stick>]])
          .addOutput(<primal:drying_rack:4>)
          .addTool(<ore:artisansFramingHammer>, 75)
          .create();

          RecipeBuilder.get("carpenter")
            .setShaped([
            [<minecraft:stick>, <primal:slat_bigoak>, <minecraft:stick>],
            [<primal:wood_pin>, <minecraft:stick>, <primal:wood_pin>],
            [<minecraft:stick>, null, <minecraft:stick>]])
            .addOutput(<primal:drying_rack:5>)
            .addTool(<ore:artisansFramingHammer>, 75)
            .create();
