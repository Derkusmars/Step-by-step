import crafttweaker.item.IIngredient;

var allmods as string[] = [
    "minecraft",
"mcp",
"FML",
"forge",
"incorporeal_core",
"otgcore",
"botania_tweaks_core",
"baubles",
"botania_tweaks",
"crafttweaker",
"mtlib",
"modtweaker",
"jei",
"botania",
"aiotbotania",
"redstoneflux",
"cofhcore",
"craftstudioapi",
"openterraingenerator",
"harvestcraft",
"animania",
"applecore",
"appleskin",
"architecturecraft",
"athenaeum",
"bookshelf",
"gamestages",
"artisanworktables",
"base",
"betterquesting",
"bqt",
"biomebundle",
"hammercore",
"botanicadds",
"chameleon",
"ctm",
"chisel",
"chiselsandbits",
"codechickenlib",
"cofhworld",
"contenttweaker",
"controlling",
"cookingforblockheads",
"craftingtweaks",
"ctgui",
"crafttweakerjei",
"crypto",
"cucumber",
"custommainmenu",
"customnpcs",
"valkyrielib",
"environmentaltech",
"etlunar",
"morpheus",
"silentlib",
"extendeddays",
"theoneprobe",
"extrabotany",
"factorytech",
"farmingforblockheads",
"fastleafdecay",
"flatbedrockx",
"floralchemy",
"forgelin",
"placebo",
"thermalfoundation",
"foundry",
"holoinventory",
"horsepower",
"incorporeal",
"inventorytweaks",
"ironchest",
"ironjetpacks",
"itemscroller",
"itemstages",
"jeiintegration",
"journeymap",
"jmapstages",
"librarianlib",
"lttweaker",
"magneticraft",
"malisiscore",
"malisisdoors",
"mobinfo",
"modelloader",
"multimob",
"naturalpledge",
"reborncore",
"refinedstorage",
"rebornstorage",
"nevokacore",
"nmsot",
"nei",
"bq_npc_integration",
"nuclearcraft",
"orestages",
"pickletweaks",
"plumedbelt",
"primalchests",
"primal",
"primitivemobs",
"questbook",
"recipestages",
"additionalstructures",
"roots",
"scalinghealth",
"silentgear",
"bq_standard",
"storagedrawers",
"shetiphiancore",
"terraqueous",
"tombmanygraves2api",
"tombmanygraves",
"universalmodifiers",
"vanillafix",
"wanionlib",
"kiwi",
"morerefinedstorage",
"librarianliblate",
"unidict"
];

for id in allmods {
    for item in loadedMods[id].items {
        mods.ItemStages.addItemStage("remove", item);
    }
}