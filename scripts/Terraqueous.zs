import mods.artisanworktables.builder.RecipeBuilder;

//Log To Plank
RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk1>])
.addOutput(<terraqueous:planks> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk1:1>])
.addOutput(<terraqueous:planks:1> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk1:2>])
.addOutput(<terraqueous:planks:2> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk1:3>])
.addOutput(<terraqueous:planks:3> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk1:4>])
.addOutput(<terraqueous:planks:4> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk2>])
.addOutput(<terraqueous:planks:5> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk2:1>])
.addOutput(<terraqueous:planks:6> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk2:2>])
.addOutput(<terraqueous:planks:7> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk2:3>])
.addOutput(<terraqueous:planks:8> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();

RecipeBuilder.get("carpenter")
.setShapeless([<terraqueous:trunk2:4>])
.addOutput(<terraqueous:planks:9> * 4)
.addTool(<ore:artisansHandsaw>, 10)
.setMaximumTier(1)
.create();


//Renaming "Lump Of Sandstone" to "Lump of Sand"
<terraqueous:item_main:214>.displayName = "Lump of Sand";
