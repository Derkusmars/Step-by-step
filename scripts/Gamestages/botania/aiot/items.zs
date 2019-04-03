import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var ItemsForStage as IIngredient[][string] = {
  stages.bot_ms_tools : [
    <aiotbotania:manasteelhoe>,                                                 //Manasteel hoe
    <aiotbotania:manasteelaiot>,                                                //Manasteel AIOT
  ],
  stages.bot_elem_tools : [
    <aiotbotania:elementiumhoe>,                                                //Elemetium hoe
    <aiotbotania:elementiumaiot>,                                               //Elemetium AIOT
  ],
};

for stage, Items in ItemsForStage {
	for Item in Items {
		addItemStage(stage, Item);
	}
}
