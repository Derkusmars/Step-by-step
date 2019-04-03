import crafttweaker.liquid.ILiquidStack;

var liquidsForStage as ILiquidStack[][string] = {
  stages.oil : [
    <liquid:diesel>,                                                            //Diesel
    <liquid:gasoline>,                                                          //Gasoline
    <liquid:heavy_oil>,                                                         //Heavy Oil
    <liquid:hot_crude>,                                                         //Hot Crude
    <liquid:kerosene>,                                                          //Kerosene
    <liquid:light_oil>,                                                         //Light Oil
    <liquid:lpg>,                                                               //Liquid Petroleum Gas
    <liquid:lubricant>,                                                         //Lubricant
    <liquid:naphtha>,                                                           //Naphtha
    <liquid:natural_gas>,                                                       //Natural Gas
    <liquid:oil>,                                                               //Crude Oil
    <liquid:oil_residue>,                                                       //Oil Residue
    <liquid:plastic>,                                                           //Liquid Plastic
    <liquid:wood_gas>,                                                          //Wood Gas
    <liquid:fuel>                                                               //Fuel
  ]
};

for stage, liquidStacks in liquidsForStage {
	for liquidStack in liquidStacks {
		mods.ItemStages.stageLiquid(stage, liquidStack);
		//Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.craft_utils.getBucketIngredient(liquidStack));
	}
}
