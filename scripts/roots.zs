import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;


var Rootsbark as IItemStack[] = [
  <roots:bark_oak>,
  <roots:bark_spruce>,
  <roots:bark_birch>,
  <roots:bark_jungle>,
  <roots:bark_dark_oak>,
  <roots:bark_acacia>
];
for i in Rootsbark {
  <ore:rootsbark>.add(i);
}
