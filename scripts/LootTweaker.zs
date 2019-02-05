import mods.ltt.LootTable;
import crafttweaker.entity.IEntityDefinition;

//Remove Loot From Villages and Dungeons
var chests as string[] = [
	"minecraft:chests/abandoned_mineshaft",
	"minecraft:chests/desert_pyramid",
	"minecraft:chests/end_city_treasure",
	"minecraft:chests/igloo_chest",
	"minecraft:chests/jungle_temple",
	"minecraft:chests/jungle_temple_dispenser",
	"minecraft:chests/nether_bridge",
	"minecraft:chests/simple_dungeon",
	"minecraft:chests/spawn_bonus_chest",
	"minecraft:chests/stronghold_corridor",
	"minecraft:chests/stronghold_crossing",
	"minecraft:chests/stronghold_library",
	"minecraft:chests/village_blacksmith",
	"minecraft:chests/woodland_mansion",
	"minecraft:gameplay/fishing/junk",
	"minecraft:gameplay/fishing/treasure"
];

for table in chests {
	LootTable.removeTable(table);
}

//Remove Loot From Haunted Tool

val entity = <entity:primitivemobs:haunted_tool>;

entity.clearDrops();

mods.ltt.LootTable.removeModEntry("biomebundle");
mods.ltt.LootTable.removeModEntry("openterraingenerator");
mods.ltt.LootTable.removeModEntry("additionalstructures");
mods.ltt.LootTable.removeModTable("additionalstructures");
