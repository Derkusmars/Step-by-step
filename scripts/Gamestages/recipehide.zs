// Horse power
import crafttweaker.item.IItemStack;

var removerecipehideRecipes as IItemStack[] = [
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 1 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 2 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 3 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 4 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 5 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 7 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs_stripped", Count: 1 as byte, Damage: 0 as short}}),
<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:corypha_stalk", Count: 1 as byte, Damage: 0 as short}})
];

for item in removerecipehideRecipes {
	mods.ItemStages.addItemStage("recipehide", item);
}


val itemToDisable = [
  <minecraft:crafting_table>,
  <silentgear:crafting_station>,
  <primal:worktable_shelf>.withTag({type: "oak"}),
  <primal:worktable_shelf:1>.withTag({type: "spruce"}),
  <primal:worktable_shelf:2>.withTag({type: "birch"}),
  <primal:worktable_shelf:3>.withTag({type: "jungle"}),
  <primal:worktable_shelf:4>.withTag({type: "acacia"}),
  <primal:worktable_shelf:5>.withTag({type: "dark_oak"}),
  <primal:worktable_shelf:6>.withTag({type: "ironwood"}),
  <primal:worktable_shelf:7>.withTag({type: "yew"}),
  <primal:worktable_shelf:8>.withTag({type: "lacquer"}),
  <primal:worktable_shelf:9>.withTag({type: "corypha"}),
  
  <primal:worktable_slab>.withTag({type: "oak"}),
  <primal:worktable_slab:1>.withTag({type: "spruce"}),
  <primal:worktable_slab:2>.withTag({type: "birch"}),
  <primal:worktable_slab:3>.withTag({type: "jungle"}),
  <primal:worktable_slab:4>.withTag({type: "acacia"}),
  <primal:worktable_slab:5>.withTag({type: "dark_oak"}),
  <primal:worktable_slab:6>.withTag({type: "ironwood"}),
  <primal:worktable_slab:7>.withTag({type: "yew"}),
  <primal:worktable_slab:8>.withTag({type: "lacquer"}),
  <primal:worktable_slab:9>.withTag({type: "corypha"})
] as IItemStack[];

scripts.globalfunctions.disableItems(itemToDisable);
