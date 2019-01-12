#Sariras Brick
mods.primal.Smelter.addRecipe(
    "brick",
    6,
    [<minecraft:clay_ball>],
    [<minecraft:brick>]
);

#Remove Brick From Hibachi
mods.primal.Hibachi.removeRecipe("primal:vanilla_brick");
