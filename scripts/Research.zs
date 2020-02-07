import mods.ResearchTable;

var cat = ResearchTable.addCategory(<minecraft:grass>);

  // Tutorial

  ResearchTable.builder("base", cat)
  .setIcons(<researchtable:table>)
  .setTitle("Put your potato here!")
  .setDescription("Faster! It will begin your journey")
  .addCondition(<botania:tinypotato> * 1)
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
  .setIcons(<minecraft:map>)
  .setTitle("Cartography")
  .setDescription("Base minimap")
  .addCondition(<minecraft:map> * 6)
  .addCondition(<gregtech:meta_item_2:32429> * 1)
  .setRewardStages("cartography")
  .setRewardCommands("/say \"@s give basic cartography!\"")
  .build();

  // Advanced cartography

//  ResearchTable.builder("advcartography", cat)
//  .setIcons(<minecraft:grass>)
//  .setTitle("Advanced cartography")
//  .setDescription("You will can mark the territory")
//  .addCondition(<primal:flint_knapp> * 32)
//  .setRewardStages("waypoints")
//  .setRewardStages("minimap")
//  .setRewardCommands("/say \"@s have waypoints!\"")
//  .build();

  // Deathpoints

  ResearchTable.builder("deathpoints", cat)
  .setIcons(<minecraft:skull>)
  .setTitle("Deathpoints")
  .setDescription("Add in you world points of death")
  .addCondition(<minecraft:bone> * 4)
  .setRewardStages("deathpoints")
  .setRewardCommands("/say \"@s see deathpeople!\"")
  .build();

  // First bricks

  ResearchTable.builder("bricks", cat)
  .setIcons(<primal:mud_clump>)
  .setTitle("Adobe")
  .setDescription("empty")
  .addCondition(<primal:mud_clump> * 1)
  .addCondition(<minecraft:tallgrass:1> * 1)
  .setRewardStages("bricks")
  .setRewardCommands("/say \"@s learn adobe!\"")
  .build();

  // Storage

  ResearchTable.builder("storage", cat)
  .setIcons(<minecraft:chest>)
  .setTitle("More storage")
  .setDescription("empty")
  .addCondition(<minecraft:chest> * 1)
  .setRewardStages("storage")
  .setRewardCommands("/say \"@s learn more storage!\"")
  .build();

  // Taylor

  ResearchTable.builder("taylor", cat)
  .setIcons(<minecraft:string>)
  .setTitle("Taylor")
  .setDescription("empty")
  .addCondition(<ore:string> * 1)
  .addCondition(<minecraft:wool:*> * 1)
  .setRewardStages("taylor")
  .setRewardCommands("/say \"@s learn taylor!\"")
  .build();

  // Scribe

  ResearchTable.builder("scribe", cat)
  .setIcons(<primal:plant_papyrus>)
  .setTitle("Scribe")
  .setDescription("empty")
  .addCondition(<primal:plant_papyrus> * 1)
  .addCondition(<gregtech:meta_item_2:32429> * 1)
  .setRewardStages("scribe")
  .setRewardCommands("/say \"@s learn scribe!\"")
  .build();

  // Potter

  ResearchTable.builder("potter", cat)
  .setIcons(<minecraft:clay_ball>)
  .setTitle("Potter")
  .setDescription("empty")
  .addCondition(<minecraft:clay_ball> * 1)
  .addCondition(<minecraft:coal:*> * 1)
  .setRewardStages("potter")
  .setRewardCommands("/say \"@s learn potter!\"")
  .build();

  // Mason

  ResearchTable.builder("mason", cat)
  .setIcons(<minecraft:stone>)
  .setTitle("Mason")
  .setDescription("empty")
  .addCondition(<minecraft:stone> * 1)
  .setRewardStages("mason")
  .setRewardCommands("/say \"@s learn mason!\"")
  .build();

  // glass

  ResearchTable.builder("glass", cat)
  .setIcons(<minecraft:sand>)
  .setTitle("glass")
  .setDescription("empty")
  .addCondition(<minecraft:sand> * 1)
  .addCondition(<minecraft:coal:*> * 1)
  .setRewardStages("glass")
  .setRewardCommands("/say \"@s learn glass!\"")
  .build();

  ResearchTable.builder("botania1", cat)
    .setTitle("Apothecary")
    .setIcons(<botania:altar>)
  //.setRequiredStages("stage", "stageYouWillNeverGet") #TODO
    .setDescription("А нука давай посмотрим, что эти лепесточки могут...")
      .addCondition(<ore:botaniaPetal> * 16)
    .setRewardStages("bot_petal")
    .setRewardCommands("/say \"Фигусики, @s одолел эти цветочки!\"")
    .build();

  ResearchTable.builder("botania2", cat)
    .setTitle("Живое деревяшко")
    .setIcons(<botania:livingwood>)
  //.setRequiredStages("stage", "stageYouWillNeverGet") #TODO
    .setDescription("Ух...сейчас наделаем деревяшек то, ух наделаем...")
      .addCondition(<botania:livingwood> * 16)
    .setRewardStages("bot_livingWood")
    .setRewardCommands("/say \"Ну что теперь ваять то из этого будем?!\"")
    .build();

  ResearchTable.builder("botania3", cat)
    .setTitle("Палочки какие-то")
    .setIcons(<botania:manaresource:3>)
  //.setRequiredStages("stage", "stageYouWillNeverGet") #TODO
    .setDescription("Так-с, а это что за палочки?")
      .addCondition(<ore:livingwoodTwig> * 16)
    .setRewardStages("bot_livingWoodTwig")
    .setRewardCommands("/say \"Интересненько...будет чем заняться\"")
    .build();

  ResearchTable.builder("botania4", cat)
    .setTitle("Не менее живой камушек")
    .setIcons(<botania:livingrock>)
  //.setRequiredStages("stage", "stageYouWillNeverGet") #TODO
    .setDescription("Настоящий живой камень PogChamp")
      .addCondition(<botania:livingrock> * 16)
    .setRewardStages("bot_livingRock")
    .setRewardCommands("/say \"Ух ты...сейчас ведерок для манны наделаем\"")
    .build();
