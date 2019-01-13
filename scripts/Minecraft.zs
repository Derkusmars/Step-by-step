import mods.artisanworktables.builder.RecipeBuilder;

#Chest [Minecraft]
RecipeBuilder.get("carpenter")
.setShaped([
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
[<ore:plankWood>, null, <ore:plankWood>],
[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]])
.addOutput(<minecraft:chest>)
.addTool(<ore:artisansHandsaw>, 10)
.create();