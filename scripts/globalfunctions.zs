import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
#priority 90
/*
* item - the item you want to disable
*/
function disableItem(item as IItemStack){
  //any operation on a disabled item happends here
  item.addTooltip(format.darkRed("Disabled!"));
  mods.jei.JEI.removeAndHide(item);
}

/*
* items - the items you want to disable, they will be disabled one by one
* using the function scripts.functions.disableItem(item as IItemStack)
* if you want them to undergo additional operations, add them to that function
*/
function disableItems(items as IItemStack[]){
  for item in items {
    disableItem(item);
  }
}

function disableCrafting(item as IItemStack){
  //any operation on a disabled crafting happends here
  recipes.removeShapeless(item);
  recipes.removeShaped(item);
}


function disableCraftings(items as IItemStack[]){
  for item in items {
    disableCrafting(item);
  }
}
