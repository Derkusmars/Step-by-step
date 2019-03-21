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
  .addCondition(<primal:flint_knapp> * 32)
  .setRewardStages("cartography")
  .setRewardCommands("/say \"@s see deathpeople!\"")
  .build();

  // Advanced cartography

  ResearchTable.builder("advcartography", cat) 
  .setIcons(<minecraft:grass>)
  .setTitle("Advanced cartography")
  .setDescription("You will can mark the territory")
  .addCondition(<primal:flint_knapp> * 32)
  .setRewardStages("waypoints")
  .setRewardStages("minimap")
  .setRewardCommands("/say \"@s have waypoints!\"")
  .build();

  // Deathpoints

  ResearchTable.builder("deathpoints", cat) 
  .setIcons(<minecraft:grass>)
  .setTitle("Deathpoints")
  .setDescription("Add in you world points of death")
  .addCondition(<primal:flint_knapp> * 32)
  .setRewardStages("deathpoints")
  .setRewardCommands("/say \"@s see deathpeople!\"")
  .build();


  // Tools

  ResearchTable.builder("tools", cat) 
  .setIcons(<artisanworktables:artisans_hammer_flint>)
  .setTitle("Tools")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 6)
  .addCondition(<primal:flint_knapp> * 8)
  .addCondition(<primal:plant_fiber> * 12)
  .setRewardStages("tools")
  .setRewardCommands("/say \"@s learn tools!\"")
  .build();


  // Carpenter

  ResearchTable.builder("carpenter", cat) 
  .setIcons(<artisanworktables:workstation:1>)
  .setTitle("Carpenter")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("carpenter")
  .setRewardCommands("/say \"@s learn carpenter!\"")
  .build();


  // Light

  ResearchTable.builder("light", cat) 
  .setIcons(<minecraft:torch>)
  .setTitle("Light")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("light")
  .setRewardCommands("/say \"@s learn light!\"")
  .build();


  // Gardener

  ResearchTable.builder("gardener", cat) 
  .setIcons(<artisanworktables:workstation:10>)
  .setTitle("Gardener")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("gardener")
  .setRewardCommands("/say \"@s learn gardener!\"")
  .build();

  
  // Mortar

  ResearchTable.builder("mortar", cat) 
  .setIcons(<primal:flint_hatchet>)
  .setTitle("Mortar")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("mortar")
  .setRewardCommands("/say \"@s learn mortar!\"")
  .build();

  // Tanner

  ResearchTable.builder("tanner", cat) 
  .setIcons(<primal:flint_hatchet>)
  .setTitle("Tanner")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("tanner")
  .setRewardCommands("/say \"@s learn tanner!\"")
  .build();

  // Horse power
  ResearchTable.builder("horsepower", cat) 
  .setIcons(<minecraft:lead>)
  .setTitle("Horse power")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("horsepower")
  .setRewardCommands("/say \"@s learn horsepower!\"")
  .build();

  // Cooking

  ResearchTable.builder("cooking", cat) 
  .setIcons(<artisanworktables:workstation:11>)
  .setTitle("Cooking")
  .setDescription("empty")
  .addCondition(<minecraft:stick> * 2)
  .setRewardStages("cooking")
  .setRewardCommands("/say \"@s learn cooking!\"")
  .build();
