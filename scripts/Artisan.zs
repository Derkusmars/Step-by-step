import mods.artisanworktables.builder.RecipeBuilder;

#Basic workbench
recipes.remove(<artisanworktables:worktable:5>);
recipes.addShapeless(<artisanworktables:worktable:5>, [<primal:flint_knapp>,<factorytech:machinepart:180>,<primal:logs_stripped:*>,<minecraft:stick>]);

#Flint Framing Hammer
RecipeBuilder.get("basic")
 .setShaped([
  	[null, <primal:flint_knapp>, <primal:flint_knapp>],
  	[null, <ore:stickWood>, <ore:cordageGeneral>],
  	[<ore:stickWood>, null, null]])
    .addOutput(<artisanworktables:artisans_framing_hammer_flint>)
    .create();

#Carpenters workbench
    RecipeBuilder.get("basic")
      .setShaped([
      [<minecraft:stick>, <primal:logs_stripped:*>, <minecraft:stick>],
      [<primal:logs_stripped:*>, <ore:logWood>, <primal:logs_stripped:*>],
      [<minecraft:stick>, <primal:logs_stripped:*>, <minecraft:stick>]])
      .addOutput(<artisanworktables:worktable:1>)
      .setMaximumTier(0)
      .addTool(<ore:artisansFramingHammer>, 50)
      .create();

#Flint Cutters
    recipes.remove(<artisanworktables:artisans_cutters_flint>);
    RecipeBuilder.get("basic")
      .setShaped([
      [<primal:flint_knapp>, null, <primal:flint_knapp>],
      [null, <ore:cordageGeneral>, null],
      [<minecraft:stick>, null, <minecraft:stick>]])
      .addOutput(<artisanworktables:artisans_cutters_flint>)
      .create();

#Flint Handsaw
      recipes.remove(<ore:artisansHandsaw>);
      RecipeBuilder.get("carpenter")
        .setShaped([
	      [null, <primal:flint_knapp>, <ore:stickWood>],
        [<primal:flint_knapp>, <ore:stickWood>, null],
        [<ore:stickWood>, null, null]])
        .addOutput(<artisanworktables:artisans_handsaw_flint>)
        .create();

#Log to Planks
        RecipeBuilder.get("carpenter")
          .setShapeless([<minecraft:log>])
          .addOutput(<minecraft:planks> * 4)
          .setMaximumTier(2)
          .addTool(<ore:artisansHandsaw>, 10)
          .create();

          RecipeBuilder.get("carpenter")
            .setShapeless([<minecraft:log:1>])
            .addOutput(<minecraft:planks:1> * 4)
            .setMaximumTier(2)
            .addTool(<ore:artisansHandsaw>, 10)
            .create();

            RecipeBuilder.get("carpenter")
              .setShapeless([<minecraft:log:2>])
              .addOutput(<minecraft:planks:2> * 4)
              .setMaximumTier(2)
              .addTool(<ore:artisansHandsaw>, 10)
              .create();

              RecipeBuilder.get("carpenter")
                .setShapeless([<minecraft:log:3>])
                .addOutput(<minecraft:planks:3> * 4)
                .setMaximumTier(2)
                .addTool(<ore:artisansHandsaw>, 10)
                .create();

                RecipeBuilder.get("carpenter")
                  .setShapeless([<minecraft:log2>])
                  .addOutput(<minecraft:planks:4> * 4)
                  .setMaximumTier(2)
                  .addTool(<ore:artisansHandsaw>, 10)
                  .create();

                  RecipeBuilder.get("carpenter")
                    .setShapeless([<minecraft:log2:1>])
                    .addOutput(<minecraft:planks:5> * 4)
                    .setMaximumTier(2)
                    .addTool(<ore:artisansHandsaw>, 10)
                    .create();

#Planks to Slabs
                    RecipeBuilder.get("carpenter")
                      .setShapeless([<minecraft:planks>])
                      .addOutput(<minecraft:wooden_slab> * 2)
                      .setMaximumTier(2)
                      .addTool(<ore:artisansHandsaw>, 10)
                      .create();

                      RecipeBuilder.get("carpenter")
                        .setShapeless([<minecraft:planks:1>])
                        .addOutput(<minecraft:wooden_slab:1> * 2)
                        .setMaximumTier(2)
                        .addTool(<ore:artisansHandsaw>, 10)
                        .create();

                        RecipeBuilder.get("carpenter")
                          .setShapeless([<minecraft:planks:2>])
                          .addOutput(<minecraft:wooden_slab:2> * 2)
                          .setMaximumTier(2)
                          .addTool(<ore:artisansHandsaw>, 10)
                          .create();

                          RecipeBuilder.get("carpenter")
                            .setShapeless([<minecraft:planks:3>])
                            .addOutput(<minecraft:wooden_slab:3> * 2)
                            .setMaximumTier(2)
                            .addTool(<ore:artisansHandsaw>, 10)
                            .create();

                            RecipeBuilder.get("carpenter")
                              .setShapeless([<minecraft:planks:4>])
                              .addOutput(<minecraft:wooden_slab:4> * 2)
                              .setMaximumTier(2)
                              .addTool(<ore:artisansHandsaw>, 10)
                              .create();

                              RecipeBuilder.get("carpenter")
                                .setShapeless([<minecraft:planks:5>])
                                .addOutput(<minecraft:wooden_slab:5> * 2)
                                .setMaximumTier(2)
                                .addTool(<ore:artisansHandsaw>, 10)
                                .create();

#Thin Slab
                                recipes.remove(<primal:thin_slab_oak>);
                                RecipeBuilder.get("carpenter")
                                  .setShapeless([<minecraft:wooden_slab>])
                                  .addOutput(<primal:thin_slab_oak> * 2)
                                  .setMaximumTier(2)
                                  .addTool(<ore:artisansHandsaw>, 10)
                                  .create();

                                  recipes.remove(<primal:thin_slab_spruce>);
                                  RecipeBuilder.get("carpenter")
                                    .setShapeless([<minecraft:wooden_slab:1>])
                                    .addOutput(<primal:thin_slab_spruce> * 2)
                                    .setMaximumTier(2)
                                    .addTool(<ore:artisansHandsaw>, 10)
                                    .create();

                                    recipes.remove(<primal:thin_slab_birch>);
                                    RecipeBuilder.get("carpenter")
                                      .setShapeless([<minecraft:wooden_slab:2>])
                                      .addOutput(<primal:thin_slab_birch> * 2)
                                      .setMaximumTier(2)
                                      .addTool(<ore:artisansHandsaw>, 10)
                                      .create();

                                      recipes.remove(<primal:thin_slab_jungle>);
                                      RecipeBuilder.get("carpenter")
                                        .setShapeless([<minecraft:wooden_slab:3>])
                                        .addOutput(<primal:thin_slab_jungle> * 2)
                                        .setMaximumTier(2)
                                        .addTool(<ore:artisansHandsaw>, 10)
                                        .create();

                                        recipes.remove(<primal:thin_slab_acacia>);
                                        RecipeBuilder.get("carpenter")
                                          .setShapeless([<minecraft:wooden_slab:4>])
                                          .addOutput(<primal:thin_slab_acacia> * 2)
                                          .setMaximumTier(2)
                                          .addTool(<ore:artisansHandsaw>, 10)
                                          .create();

                                        recipes.remove(<primal:thin_slab_bigoak>);
                                        RecipeBuilder.get("carpenter")
                                            .setShapeless([<minecraft:wooden_slab:5>])
                                            .addOutput(<primal:thin_slab_bigoak> * 2)
                                            .setMaximumTier(2)
                                            .addTool(<ore:artisansHandsaw>, 10)
                                            .create();

#Slat
                                  recipes.remove(<primal:slat_oak>);
                                  RecipeBuilder.get("carpenter")
                                    .setShapeless([<primal:thin_slab_oak>])
                                    .addOutput(<primal:slat_oak> * 2)
                                    .addTool(<ore:artisansHandsaw>, 10)
                                    .create();

                                    recipes.remove(<primal:slat_spruce>);
                                    RecipeBuilder.get("carpenter")
                                      .setShapeless([<primal:thin_slab_spruce>])
                                      .addOutput(<primal:slat_spruce> * 2)
                                      .addTool(<ore:artisansHandsaw>, 10)
                                      .create();

                                      recipes.remove(<primal:slat_jungle>);
                                      RecipeBuilder.get("carpenter")
                                        .setShapeless([<primal:thin_slab_jungle>])
                                        .addOutput(<primal:slat_jungle> * 2)
                                        .addTool(<ore:artisansHandsaw>, 10)
                                        .create();

                                      recipes.remove(<primal:slat_bigoak>);
                                        RecipeBuilder.get("carpenter")
                                          .setShapeless([<primal:thin_slab_bigoak>])
                                          .addOutput(<primal:slat_bigoak> * 2)
                                          .addTool(<ore:artisansHandsaw>, 10)
                                          .create();

                                      recipes.remove(<primal:slat_acacia>);
                                        RecipeBuilder.get("carpenter")
                                          .setShapeless([<primal:thin_slab_acacia>])
                                          .addOutput(<primal:slat_acacia> * 2)
                                          .addTool(<ore:artisansHandsaw>, 10)
                                          .create();

                                      recipes.remove(<primal:slat_birch>);
                                        RecipeBuilder.get("carpenter")
                                        .setShapeless([<primal:thin_slab_birch>])
                                        .addOutput(<primal:slat_birch> * 2)
                                        .addTool(<ore:artisansHandsaw>, 10)
                                        .create();

#Sticks
                         RecipeBuilder.get("carpenter")
                        .setShapeless([<ore:plankWood>])
                        .addOutput(<minecraft:stick> * 2)
                        .addTool(<ore:artisansFramingHammer>, 10)
                        .create();