import mods.ResearchTable;

var cat = ResearchTable.addCategory(<minecraft:grass>);

  // Tutorial

  ResearchTable.builder("base", cat) 
  .setIcons(<researchtable:table>)
  .setTitle("Tutorial")
  .setDescription("Research rhis item for start you adventure!")
  .addCondition(<botania:cosmetic:30> * 1)
  .setRewardStages("base")
  .setRewardCommands("/say \"@s start adventure!\"")
  .build();

  // Base tools

  ResearchTable.builder("basetools", cat) 
  .setIcons(<primal:flint_hatchet>)
  .setTitle("You first tools")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .addCondition(<primal:flint_knapp> * 2)
  .addCondition(<primal:plant_fiber> * 8)
  .setRewardStages("basetools")
  .setRewardCommands("/say \"@s learn basetools!\"")
  .build();

  // Cartography

  ResearchTable.builder("cartography", cat) 
  .setIcons(<minecraft:grass>)
  .setTitle("Cartography")
  .setDescription("Add in you world points of death")
  .addCondition(<ore:ingotIron> * 8)
  .setRewardStages("cartography")
  .setRewardCommands("/say \"@s see deathpeople!\"")
  .build();

  // Advanced cartography

  ResearchTable.builder("advcartography", cat) 
  .setIcons(<minecraft:grass>)
  .setTitle("Advanced cartography")
  .setDescription("You will can mark the territory")
  .addCondition(<ore:ingotIron> * 8)
  .setRewardStages("waypoints")
  .setRewardStages("minimap")
  .setRewardCommands("/say \"@s have waypoints!\"")
  .build();

  // Deathpoints

  ResearchTable.builder("deathpoints", cat) 
  .setIcons(<minecraft:grass>)
  .setTitle("Deathpoints")
  .setDescription("Add in you world points of death")
  .addCondition(<ore:ingotIron> * 8)
  .setRewardStages("deathpoints")
  .setRewardCommands("/say \"@s see deathpeople!\"")
  .build();