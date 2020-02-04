import crafttweaker.item.IIngredient;

var stagetoolsItems as IIngredient[] = [

	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 1 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 2 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 3 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log2", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log2", Count: 1 as byte, Damage: 1 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "primal:logs", Count: 1 as byte, Damage: 1 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "integrateddynamics:menril_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "integrateddynamics:menril_log_filled", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:iris_log0", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:rainbow_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "customnpcs:itemscripteddata", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:alt_log0", Count: 1 as byte, Damage: 1 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:alt_log0", Count: 1 as byte, Damage: 2 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:alt_log0", Count: 1 as byte, Damage: 3 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:alt_log1", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:alt_log1", Count: 1 as byte, Damage: 1 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:seal_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:thunder_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:circuit_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "naturalpledge:calico_log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "gregtech:log", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "terraqueous:trunk1", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "terraqueous:trunk2", Count: 1 as byte, Damage: 0 as short}}),
	<horsepower:chopping_block>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "silentgear:netherwood_log", Count: 1 as byte, Damage: 0 as short}})

];

for item in stagetoolsItems {
	mods.ItemStages.addItemStage("saw", item);
}
