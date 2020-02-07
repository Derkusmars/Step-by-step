import mods.artisanworktables.builder.RecipeBuilder;


// Coke oven brick
RecipeBuilder.get("mason")
  .setShaped([
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>],
    [<foundry:component:2>, null, <foundry:component:2>],
    [<foundry:component:2>, <foundry:component:2>, <foundry:component:2>]])
  .addOutput(<gregtech:metal_casing:8>)
  .setMirrored()
  .addTool(<ore:artisansFile>, 15)
  .addTool(<ore:artisansHammer>, 15)
//  .addRequirement(GameStages.anyOf([]))                                       stage creosote ?
.create();

// Coke oven
RecipeBuilder.get("mason")
  .setShaped([
    [<gregtech:metal_casing:8>, <ore:plateIron>, <gregtech:metal_casing:8>],
    [<ore:plateIron>, <ore:craftingFurnace>, <ore:plateIron>],
    [<gregtech:metal_casing:8>, <ore:plateIron>, <gregtech:metal_casing:8>]])
  .setFluid(<liquid:lava> * 1000)
  .addOutput(<gregtech:machine:526>)
  .setMirrored()
  .addTool(<ore:artisansFile>, 50)
  .addTool(<ore:artisansCarver>, 50)
//  .addRequirement(GameStages.anyOf([]))
.create();

// Coke oven hatch
RecipeBuilder.get("mason")
  .setShaped([
    [<gregtech:meta_item_2:32011>, <foundry:refractorytank>, <gregtech:meta_item_2:32011>],
    [null, <gregtech:metal_casing:8>, null],
    [<gregtech:meta_item_2:32011>, <ore:hopper>, <gregtech:meta_item_2:32011>]])
  .setFluid(<liquid:water> * 1000)
  .addOutput(<gregtech:machine:527>)
  .setMirrored()
  .addTool(<ore:artisansFile>, 15)
  .addTool(<ore:artisansRazor>, 10)
//  .addRequirement(GameStages.anyOf([]))
.create();
