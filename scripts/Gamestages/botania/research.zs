
import mods.ResearchTable;

var cat = ResearchTable.addCategory(<minecraft:grass>);

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
