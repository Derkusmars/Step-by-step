import mods.ResearchTable;

var cat = ResearchTable.addCategory(<minecraft:grass>);


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