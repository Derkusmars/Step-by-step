import crafttweaker.liquid.ILiquidStack;

var liquidsForStage as ILiquidStack[][string] = {
  stages.liquid_animania : [
    <liquid:animania_honey>,                                                    //Honey
    <liquid:milk_friesian>,                                                     //Friesian Milk
    <liquid:milk_goat>,                                                         //Goat Milk
    <liquid:milk_holstein>,                                                     //Holstein Milk
    <liquid:milk_jersey>,                                                       //Jersey Milk
    <liquid:milk_sheep>,                                                        //Sheep Milk
    <liquid:slop>                                                               //Slop
  ],

  stages.liquid_primal : [
    <liquid:bitumen>,                                                           //Bitumen
    <liquid:bitumen_boiling>,                                                   //Boiling Bitumen
    <liquid:brine_netjry>,                                                      //Brine
    <liquid:magma_basaltic>,                                                    //Basaltic Magma
    <liquid:ovis_atre_milk>,                                                    //Ovis Atre Milk
    <liquid:paraffin>,                                                          //Paraffin
    <liquid:smoke>,                                                             //Smoke
    <liquid:tannin>,                                                            //Tannin
    <liquid:urushi>,                                                            //Urushi
    <liquid:waste>                                                              //Waste Water
  ],
  
  stages.liquid_factorytech : [
    <liquid:energite>,                                                          //Energite
    <liquid:ftglowstone>,                                                       //Liquefied Glowstone
    <liquid:ftoreslurry>,                                                       //fluid.ftoreslurry
    <liquid:propane>,                                                           //Propane
    <liquid:sulphur>                                                            //Liquid Sulphur
  ],
};

/*                                                                      Unsorted
<liquid:fluidedmana>, Fluided Mana

<liquid:lava>, Lava
<liquid:milk>, Milk
<liquid:water>, Water
*/

for stage, liquidStacks in liquidsForStage {
	for liquidStack in liquidStacks {
		mods.ItemStages.stageLiquid(stage, liquidStack);
		//Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.craft_utils.getBucketIngredient(liquidStack));
	}
}
