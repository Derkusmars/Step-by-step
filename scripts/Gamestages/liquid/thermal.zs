import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var liquidItemsForStage as IItemStack[][string] = {
	stages.thermal_item : [
    <thermalfoundation:fluid_crude_oil>,                                        //Crude Oil
    <thermalfoundation:fluid_redstone>,                                         //Destabilized Redstone
    <thermalfoundation:fluid_glowstone>,                                        //Energized Glowstone
    <thermalfoundation:fluid_ender>,                                            //Resonant Ender
    <thermalfoundation:fluid_pyrotheum>,                                        //Blazing Pyrotheum
    <thermalfoundation:fluid_cryotheum>,                                        //Gelid Cryotheum
    <thermalfoundation:fluid_aerotheum>,                                        //Zephyrean Aerotheum
    <thermalfoundation:fluid_petrotheum>,                                       //Tectonic Petrotheum
    <thermalfoundation:fluid_mana>                                              //Primal Mana
	]
};

for stage, liquidItems in liquidItemsForStage {
	for liquidItem in liquidItems {
		mods.ItemStages.addItemStage(stage, liquidItem);
	}
}

var liquidsForStage as ILiquidStack[][string] = {
  stages.thermal : [
    <liquid:aerotheum>,                                                         //Zephyrean Aerotheum
    <liquid:biocrude>,                                                          //Biocrude
    <liquid:creosote>,                                                          //Creosote Oil
    <liquid:crude_oil>,                                                         //Crude Oil
    <liquid:cryotheum>,                                                         //Gelid Cryotheum
    <liquid:coal>,                                                              //Liquifacted Coal
    <liquid:ender>,                                                             //Resonant Ender
    <liquid:experience>,                                                        //Essence of Knowledge
    <liquid:glowstone>,                                                         //Energized Glowstone
    <liquid:mana>,                                                              //Primal Mana
    <liquid:mushroom_stew>,                                                     //Mushroom Stew
    <liquid:petrotheum>,                                                        //Tectonic Petrotheum
    <liquid:potion>,                                                            //Potion
    <liquid:potion_lingering>,                                                  //Lingering Potion
    <liquid:potion_splash>,                                                     //Splash Potion
    <liquid:pyrotheum>,                                                         //Blazing Pyrotheum
    <liquid:redstone>,                                                          //Destabilized Redstone
    <liquid:refined_biofuel>,                                                   //Grassoline
    <liquid:refined_fuel>,                                                      //Refined Fuel
    <liquid:refined_oil>,                                                       //Naphtha
    <liquid:resin>,                                                             //Resin
    <liquid:sap>,                                                               //Sap
    <liquid:seed_oil>,                                                          //Seed Oil
    <liquid:syrup>,                                                             //Syrup
    <liquid:tree_oil>,                                                          //Tree Oil
    <liquid:steam>                                                              //Steam
  ]
};

for stage, liquidStacks in liquidsForStage {
	for liquidStack in liquidStacks {
		mods.ItemStages.stageLiquid(stage, liquidStack);
		//Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.craft_utils.getBucketIngredient(liquidStack));
	}
}
