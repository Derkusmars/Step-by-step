import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.item.IItemStack;
// Chopping


function createChoppingBlock(base as IItemStack, baseDamage as short, type as string ) {
    recipes.remove(<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}}));
    RecipeBuilder.get("carpenter")
    .setShapeless([base])
    .addOutput(
        <horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}}) * 2)
    .addTool(<ore:artisansHandsaw>, 10)
    .setMaximumTier(1)
    .create();
    mods.jei.JEI.addItem(<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}}));
}

createChoppingBlock(<minecraft:log>, 0,"minecraft:log");
createChoppingBlock(<minecraft:log:1>, 1,"minecraft:log");
createChoppingBlock(<minecraft:log:2>, 2,"minecraft:log");
createChoppingBlock(<minecraft:log:3>, 3,"minecraft:log");
createChoppingBlock(<minecraft:log2>, 0,"minecraft:log2");
createChoppingBlock(<minecraft:log2:1>, 1,"minecraft:log2");
createChoppingBlock(<primal:logs>, 0,"primal:logs");
createChoppingBlock(<primal:logs:1> , 1,"primal:logs");
createChoppingBlock(<integrateddynamics:menril_log> , 0,"integrateddynamics:menril_log");
createChoppingBlock(<integrateddynamics:menril_log_filled> , 0,"integrateddynamics:menril_log_filled");
createChoppingBlock(<naturalpledge:iris_log0:*> , 0,"naturalpledge:iris_log0");
createChoppingBlock(<naturalpledge:rainbow_log> , 0,"naturalpledge:rainbow_log");
createChoppingBlock(<naturalpledge:alt_log0> , 0,"customnpcs:itemscripteddata");
createChoppingBlock(<naturalpledge:alt_log0:1>, 1,"naturalpledge:alt_log0");
createChoppingBlock(<naturalpledge:alt_log0:2>, 2,"naturalpledge:alt_log0");
createChoppingBlock(<naturalpledge:alt_log0:3>, 3,"naturalpledge:alt_log0");
createChoppingBlock(<naturalpledge:alt_log1>, 0,"naturalpledge:alt_log1");
createChoppingBlock(<naturalpledge:alt_log1:1>, 1,"naturalpledge:alt_log1");
createChoppingBlock(<naturalpledge:seal_log>, 0,"naturalpledge:seal_log");
createChoppingBlock(<naturalpledge:thunder_log>, 0,"naturalpledge:thunder_log");
createChoppingBlock(<naturalpledge:circuit_log>, 0,"naturalpledge:circuit_log");
createChoppingBlock(<naturalpledge:calico_log>, 0,"naturalpledge:calico_log");
createChoppingBlock(<naturalpledge:calico_log>, 0,"naturalpledge:calico_log");
createChoppingBlock(<gregtech:log>, 0,"gregtech:log");
createChoppingBlock(<terraqueous:trunk1>, 0,"terraqueous:trunk1");
createChoppingBlock(<terraqueous:trunk2>, 0,"terraqueous:trunk2");
createChoppingBlock(<silentgear:netherwood_log>, 0,"silentgear:netherwood_log");


function createChopper(base as IItemStack, baseDamage as short, type as string ) {
    recipes.remove(<horsepower:chopper>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}}));
    RecipeBuilder.get("carpenter")
    .setShaped([
        [<ore:logSplit>,<minecraft:lead>,<ore:logSplit>],
        [<ore:logSplit>,<primal:flint_point>,<ore:logSplit>],
        [base,base,base]]
    )
    .addOutput(
        <horsepower:chopper>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}})
    )
    .addTool(<ore:artisansHandsaw>, 25)
    .setMaximumTier(1)
    .create();
    mods.jei.JEI.addItem(<horsepower:chopper>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: type, Count: 1 as byte, Damage: baseDamage}}));
}

createChopper(<minecraft:log>, 0,"minecraft:log");
createChopper(<minecraft:log:1>, 1,"minecraft:log");
createChopper(<minecraft:log:2>, 2,"minecraft:log");
createChopper(<minecraft:log:3>, 3,"minecraft:log");
createChopper(<minecraft:log2>, 0,"minecraft:log2");
createChopper(<minecraft:log2:1>, 1,"minecraft:log2");
createChopper(<primal:logs>, 0,"primal:logs");
createChopper(<primal:logs:1> , 1,"primal:logs");
createChopper(<integrateddynamics:menril_log> , 0,"integrateddynamics:menril_log");
createChopper(<integrateddynamics:menril_log_filled> , 0,"integrateddynamics:menril_log_filled");
createChopper(<naturalpledge:iris_log0:*> , 0,"naturalpledge:iris_log0");
createChopper(<naturalpledge:rainbow_log> , 0,"naturalpledge:rainbow_log");
createChopper(<naturalpledge:alt_log0> , 0,"customnpcs:itemscripteddata");
createChopper(<naturalpledge:alt_log0:1>, 1,"naturalpledge:alt_log0");
createChopper(<naturalpledge:alt_log0:2>, 2,"naturalpledge:alt_log0");
createChopper(<naturalpledge:alt_log0:3>, 3,"naturalpledge:alt_log0");
createChopper(<naturalpledge:alt_log1>, 0,"naturalpledge:alt_log1");
createChopper(<naturalpledge:alt_log1:1>, 1,"naturalpledge:alt_log1");
createChopper(<naturalpledge:seal_log>, 0,"naturalpledge:seal_log");
createChopper(<naturalpledge:thunder_log>, 0,"naturalpledge:thunder_log");
createChopper(<naturalpledge:circuit_log>, 0,"naturalpledge:circuit_log");
createChopper(<naturalpledge:calico_log>, 0,"naturalpledge:calico_log");
createChopper(<naturalpledge:calico_log>, 0,"naturalpledge:calico_log");
createChopper(<gregtech:log>, 0,"gregtech:log");
createChopper(<terraqueous:trunk1>, 0,"terraqueous:trunk1");
createChopper(<terraqueous:trunk2>, 0,"terraqueous:trunk2");
createChopper(<silentgear:netherwood_log>, 0,"silentgear:netherwood_log");




// Horse Press
recipes.remove(<horsepower:press>);
RecipeBuilder.get("carpenter")
.setShaped([
    [<minecraft:lead>,<ore:logSplit>,<minecraft:lead>],
    [<ore:plankWood>,<ore:logWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]
)
.addOutput(<horsepower:press>)
.addTool(<ore:artisansHandsaw>, 25)
.setMaximumTier(1)
.create();
mods.jei.JEI.addItem(<horsepower:press>);

 
