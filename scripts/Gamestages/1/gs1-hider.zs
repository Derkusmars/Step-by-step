import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [


	<extendedcrafting:handheld_table>,
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
	<extendedcrafting:table_basic>,
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

];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("hider", item);
}
