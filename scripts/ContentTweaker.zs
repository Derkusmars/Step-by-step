#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;

// String Mesh ================================================================================
var string_mesh = VanillaFactory.createItem("string_mesh");
string_mesh.register();

// Compressed Cobblestone =====================================================================
var compressedcobble = VanillaFactory.createBlock("compressed_cob", <blockmaterial:rock>);
compressedcobble.setBlockHardness(5.0);
compressedcobble.setBlockResistance(8.0);
compressedcobble.setToolClass("pickaxe");
compressedcobble.setToolLevel(1);
compressedcobble.setBlockSoundType(<soundtype:stone>);
compressedcobble.register();

// Compressed Sand =====================================================================
var compressedsand = VanillaFactory.createBlock("compressed_sand", <blockmaterial:sand>);
compressedsand.setBlockHardness(3.0);
compressedsand.setBlockResistance(5.0);
compressedsand.setToolClass("shovel");
compressedsand.setToolLevel(1);
compressedsand.setBlockSoundType(<soundtype:sand>);
compressedsand.register();

// Compressed Sand =====================================================================
var compressedfdirt = VanillaFactory.createBlock("compressed_fert_dirt", <blockmaterial:ground>);
compressedfdirt.setBlockHardness(4.0);
compressedfdirt.setBlockResistance(5.0);
compressedfdirt.setToolClass("shovel");
compressedfdirt.setToolLevel(1);
compressedfdirt.setBlockSoundType(<soundtype:ground>);
compressedfdirt.register();

// Compressed Sand =====================================================================
var fertdirt = VanillaFactory.createBlock("fertilized_dirt", <blockmaterial:ground>);
fertdirt.setBlockHardness(3.0);
fertdirt.setBlockResistance(5.0);
fertdirt.setToolClass("shovel");
fertdirt.setToolLevel(1);
fertdirt.setBlockSoundType(<soundtype:ground>);
fertdirt.register();

//River Nuggets ================================================================================
var anugget = VanillaFactory.createItem("nugget_aluminum_river");
anugget.register();

var lnugget = VanillaFactory.createItem("nugget_lead_river");
lnugget.register();

var snugget = VanillaFactory.createItem("nugget_silver_river");
snugget.register();

var gnugget = VanillaFactory.createItem("nugget_gold_river");
gnugget.register();

var tnugget = VanillaFactory.createItem("nugget_tin_river");
tnugget.register();

//River Ingots ================================================================================
var aingot = VanillaFactory.createItem("river_aluminum");
aingot.register();

var lingot = VanillaFactory.createItem("river_lead");
lingot.register();

var singot = VanillaFactory.createItem("river_silver");
singot.register();

var gingot = VanillaFactory.createItem("river_gold");
gingot.register();

var tingot = VanillaFactory.createItem("river_tin");
tingot.register();
