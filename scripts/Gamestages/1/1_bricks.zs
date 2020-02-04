import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [

	<primal:smelter:3>.withTag({type: "adobe"}),
	<primal:smelter:2>.withTag({type: "cinis"}),
	<primal:smelter:1>.withTag({type: "terra"}),
	<primal:smelter:0>.withTag({type: "mud"}),
	<primal:smelter_lid_mud>,
	<primal:smelter_lid_terra>,
	<primal:smelter_lid_cinis>,
	<primal:smelter_lid_adobe>,
	<primal:adobe_brick_dry>,
	<primal:cinis_brick_dry>,
	<primal:mud_brick_dry>,
	<primal:terra_brick_dry>,
	<primal:adobe_brick_wet>,
	<primal:cinis_brick_wet>,
	<primal:mud_brick_wet>,
	<primal:terra_brick_wet>,
	<primal:adobe_clump>,
	<primal:brick_mold>.withTag({type: "oak"}),
	<primal:brick_mold:1>.withTag({type: "spruce"}),
	<primal:brick_mold:2>.withTag({type: "birch"}),
	<primal:brick_mold:3>.withTag({type: "jungle"}),
	<primal:brick_mold:4>.withTag({type: "acacia"}),
	<primal:brick_mold:5>.withTag({type: "darkoak"}),
	<primal:brick_mold:6>.withTag({type: "ironwood"}),
	<primal:brick_mold:7>.withTag({type: "yew"}),
	<primal:brick_mold:8>.withTag({type: "lacquer"}),
	<primal:brick_mold:9>.withTag({type: "corypha"})


];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("bricks", item);
}
