// Horse power
import crafttweaker.item.IItemStack;

var removehorsepowerRecipes as IItemStack[] = [
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 1 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 2 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 3 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 4 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 5 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 7 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 0 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:corypha_stalk", Count: 1 as byte, Damage: 0 as short}})
];

for item in removehorsepowerRecipes {
	mods.ItemStages.addItemStage("recipehide", item);
}
