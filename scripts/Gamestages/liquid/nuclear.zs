import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var liquidItemsForStage as IItemStack[][string] = {
	stages.nuclear : [
    <nuclearcraft:fluid_oxygen>,
    <nuclearcraft:fluid_hydrogen>,
    <nuclearcraft:fluid_deuterium>,
    <nuclearcraft:fluid_tritium>,
    <nuclearcraft:fluid_helium3>,
    <nuclearcraft:fluid_helium>,
    <nuclearcraft:fluid_boron>,
    <nuclearcraft:fluid_boron10>,
    <nuclearcraft:fluid_boron11>,
    <nuclearcraft:fluid_lithium>,
    <nuclearcraft:fluid_lithium6>,
    <nuclearcraft:fluid_lithium7>,
    <nuclearcraft:fluid_ferroboron>,
    <nuclearcraft:fluid_tough>,
    <nuclearcraft:fluid_hard_carbon>,
    <nuclearcraft:fluid_coal>,
    <nuclearcraft:fluid_beryllium>,
    <nuclearcraft:fluid_manganese>,
    <nuclearcraft:fluid_manganese_dioxide>,
    <nuclearcraft:fluid_sulfur>,
    <nuclearcraft:fluid_arsenic>,
    <nuclearcraft:fluid_liquidhelium>,
    <nuclearcraft:fluid_plasma>,
    <nuclearcraft:fluid_neutron>,
    <nuclearcraft:fluid_ethanol>,
    <nuclearcraft:fluid_methanol>,
    <nuclearcraft:fluid_radaway>,
    <nuclearcraft:fluid_nitrogen>,
    <nuclearcraft:fluid_fluorine>,
    <nuclearcraft:fluid_carbon_dioxide>,
    <nuclearcraft:fluid_carbon_monoxide>,
    <nuclearcraft:fluid_ethene>,
    <nuclearcraft:fluid_fluoromethane>,
    <nuclearcraft:fluid_ammonia>,
    <nuclearcraft:fluid_oxygen_difluoride>,
    <nuclearcraft:fluid_diborane>,
    <nuclearcraft:fluid_sulfur_dioxide>,
    <nuclearcraft:fluid_sulfur_trioxide>,
    <nuclearcraft:fluid_hydrofluoric_acid>,
    <nuclearcraft:fluid_boric_acid>,
    <nuclearcraft:fluid_sulfuric_acid>,
    <nuclearcraft:fluid_boron_nitride_solution>,
    <nuclearcraft:fluid_fluorite_water>,
    <nuclearcraft:fluid_calcium_sulfate_solution>,
    <nuclearcraft:fluid_sodium_fluoride_solution>,
    <nuclearcraft:fluid_potassium_fluoride_solution>,
    <nuclearcraft:fluid_sodium_hydroxide_solution>,
    <nuclearcraft:fluid_potassium_hydroxide_solution>,
    <nuclearcraft:fluid_borax_solution>,
    <nuclearcraft:fluid_corium>,
    <nuclearcraft:fluid_chocolate_liquor>,
    <nuclearcraft:fluid_cocoa_butter>,
    <nuclearcraft:fluid_unsweetened_chocolate>,
    <nuclearcraft:fluid_dark_chocolate>,
    <nuclearcraft:fluid_milk_chocolate>,
    <nuclearcraft:fluid_sugar>,
    <nuclearcraft:fluid_gelatin>,
    <nuclearcraft:fluid_hydrated_gelatin>,
    <nuclearcraft:fluid_marshmallow>,
    <nuclearcraft:fluid_milk>,
    <nuclearcraft:fluid_lif>,
    <nuclearcraft:fluid_bef2>,
    <nuclearcraft:fluid_flibe>,
    <nuclearcraft:fluid_naoh>,
    <nuclearcraft:fluid_koh>,
    <nuclearcraft:fluid_steam>,
    <nuclearcraft:fluid_high_pressure_steam>,
    <nuclearcraft:fluid_exhaust_steam>,
    <nuclearcraft:fluid_low_pressure_steam>,
    <nuclearcraft:fluid_low_quality_steam>,
    <nuclearcraft:fluid_preheated_water>,
    <nuclearcraft:fluid_condensate_water>,
    <nuclearcraft:fluid_sodium>,
    <nuclearcraft:fluid_potassium>,
    <nuclearcraft:fluid_nak>,
    <nuclearcraft:fluid_nak_hot>,
    <nuclearcraft:fluid_bas>,
    <nuclearcraft:fluid_sic_vapor>,
    <nuclearcraft:fluid_alugentum>,
    <nuclearcraft:fluid_alumina>,
    <nuclearcraft:fluid_aluminum>,
    <nuclearcraft:fluid_silver>
  ]
};

for stage, liquidItems in liquidItemsForStage {
  for liquidItem in liquidItems {
    mods.ItemStages.addItemStage(stage, liquidItem);
  }
}

var liquidsForStage as ILiquidStack[][string] = {
  stages.nuclear : [
    <liquid:alugentum>,                               //Molten Alugentum
    <liquid:alumina>,                                 //Molten Alumina
    <liquid:aluminum>,                                //Molten Aluminum
    <liquid:americium_241>,                           //Molten Americium-241
    <liquid:americium_241_fluoride>,                  //Molten Americium-241 Fluoride
    <liquid:americium_241_fluoride_flibe>,            //Molten FLiBe Salt Solution of Americium-241 Fluoride
    <liquid:americium_242>,                           //Molten Americium-242
    <liquid:americium_242_fluoride>,                  //Molten Americium-242 Fluoride
    <liquid:americium_242_fluoride_flibe>,            //Molten FLiBe Salt Solution of Americium-242 Fluoride
    <liquid:americium_243>,                           //Molten Americium-243
    <liquid:americium_243_fluoride>,                  //Molten Americium-243 Fluoride
    <liquid:americium_243_fluoride_flibe>,            //Molten FLiBe Salt Solution of Americium-243 Fluoride
    <liquid:ammonia>,                                 //Ammonia
    <liquid:arsenic>,                                 //Molten Arsenic
    <liquid:bas>,                                     //Molten Boron Arsenide
    <liquid:bef2>,                                    //Molten Beryllium Fluoride
    <liquid:berkelium_247>,                           //Molten Berkelium-247
    <liquid:berkelium_247_fluoride>,                  //Molten Berkelium-247 Fluoride
    <liquid:berkelium_247_fluoride_flibe>,            //Molten FLiBe Salt Solution of Berkelium-247 Fluoride
    <liquid:berkelium_248>,                           //Molten Berkelium-248
    <liquid:berkelium_248_fluoride>,                  //Molten Berkelium-248 Fluoride
    <liquid:berkelium_248_fluoride_flibe>,            //Molten FLiBe Salt Solution of Berkelium-248 Fluoride
    <liquid:beryllium>,                               //Molten Beryllium
    <liquid:borax_solution>,                          //Borax Solution
    <liquid:boric_acid>,                              //Boric Acid
    <liquid:boron>,                                   //Molten Boron
    <liquid:boron10>,                                 //Molten Boron-10
    <liquid:boron11>,                                 //Molten Boron-11
    <liquid:boron_nitride_solution>,                  //Boron Nitride Solution
    <liquid:calcium_sulfate_solution>,                //Calcium Sulfate Solution
    <liquid:californium_249>,                         //Molten Californium-249
    <liquid:californium_249_fluoride>,                //Molten Californium-249 Fluoride
    <liquid:californium_249_fluoride_flibe>,          //Molten FLiBe Salt Solution of Californium-249 Fluoride
    <liquid:californium_250>,                         //Molten Californium-250
    <liquid:californium_250_fluoride>,                //Molten Californium-250 Fluoride
    <liquid:californium_250_fluoride_flibe>,          //Molten FLiBe Salt Solution of Californium-250 Fluoride
    <liquid:californium_251>,                         //Molten Californium-251
    <liquid:californium_251_fluoride>,                //Molten Californium-251 Fluoride
    <liquid:californium_251_fluoride_flibe>,          //Molten FLiBe Salt Solution of Californium-251 Fluoride
    <liquid:californium_252>,                         //Molten Californium-252
    <liquid:californium_252_fluoride>,                //Molten Californium-252 Fluoride
    <liquid:californium_252_fluoride_flibe>,          //Molten FLiBe Salt Solution of Californium-252 Fluoride
    <liquid:carbon_dioxide>,                          //Carbon Dioxide
    <liquid:carbon_monoxide>,                         //Carbon Monoxide

    <liquid:chocolate_liquor>,                        //Chocolate Liquor // еда
    <liquid:cocoa_butter>,                            //Cocoa Butter         // еда

    <liquid:condensate_water>,                        //Condensate Water
    <liquid:copper>,                                  //Molten Copper
    <liquid:copper_nak>,                              //Eutectic NaK-Copper Mixture
    <liquid:copper_nak_hot>,                          //Hot Eutectic NaK-Copper Mixture
    <liquid:corium>,                                  //Corium
    <liquid:cryotheum_nak>,                           //Eutectic NaK-Cryotheum Mixture
    <liquid:cryotheum_nak_hot>,                       //Hot Eutectic NaK-Cryotheum Mixture
    <liquid:curium_243>,                              //Molten Curium-243
    <liquid:curium_243_fluoride>,                     //Molten Curium-243 Fluoride
    <liquid:curium_243_fluoride_flibe>,               //Molten FLiBe Salt Solution of Curium-243 Fluoride
    <liquid:curium_245>,                              //Molten Curium-245
    <liquid:curium_245_fluoride>,                     //Molten Curium-245 Fluoride
    <liquid:curium_245_fluoride_flibe>,               //Molten FLiBe Salt Solution of Curium-245 Fluoride
    <liquid:curium_246>,                              //Molten Curium-246
    <liquid:curium_246_fluoride>,                     //Molten Curium-246 Fluoride
    <liquid:curium_246_fluoride_flibe>,               //Molten FLiBe Salt Solution of Curium-246 Fluoride
    <liquid:curium_247>,                              //Molten Curium-247
    <liquid:curium_247_fluoride>,                     //Molten Curium-247 Fluoride
    <liquid:curium_247_fluoride_flibe>,               //Molten FLiBe Salt Solution of Curium-247 Fluoride

    <liquid:dark_chocolate>,                          //Molten Dark Chocolate // еда

    <liquid:depleted_fuel_hea_242>,                   //Molten Depleted HEA-242 Fuel
    <liquid:depleted_fuel_hea_242_fluoride>,          //Molten Depleted HEA-242 Fluoride Fuel
    <liquid:depleted_fuel_hea_242_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEA-242 Fluoride Fuel
    <liquid:depleted_fuel_heb_248>,                   //Molten Depleted HEB-248 Fuel
    <liquid:depleted_fuel_heb_248_fluoride>,          //Molten Depleted HEB-248 Fluoride Fuel
    <liquid:depleted_fuel_heb_248_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEB-248 Fluoride Fuel
    <liquid:depleted_fuel_hecf_249>,                  //Molten Depleted HECf-249 Fuel
    <liquid:depleted_fuel_hecf_249_fluoride>,         //Molten Depleted HECf-249 Fluoride Fuel
    <liquid:depleted_fuel_hecf_249_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted HECf-249 Fluoride Fuel
    <liquid:depleted_fuel_hecf_251>,                  //Molten Depleted HECf-251 Fuel
    <liquid:depleted_fuel_hecf_251_fluoride>,         //Molten Depleted HECf-251 Fluoride Fuel
    <liquid:depleted_fuel_hecf_251_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted HECf-251 Fluoride Fuel
    <liquid:depleted_fuel_hecm_243>,                  //Molten Depleted HECm-243 Fuel
    <liquid:depleted_fuel_hecm_243_fluoride>,         //Molten Depleted HECm-243 Fluoride Fuel
    <liquid:depleted_fuel_hecm_243_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted HECm-243 Fluoride Fuel
    <liquid:depleted_fuel_hecm_245>,                  //Molten Depleted HECm-245 Fuel
    <liquid:depleted_fuel_hecm_245_fluoride>,         //Molten Depleted HECm-245 Fluoride Fuel
    <liquid:depleted_fuel_hecm_245_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted HECm-245 Fluoride Fuel
    <liquid:depleted_fuel_hecm_247>,                  //Molten Depleted HECm-247 Fuel
    <liquid:depleted_fuel_hecm_247_fluoride>,         //Molten Depleted HECm-247 Fluoride Fuel
    <liquid:depleted_fuel_hecm_247_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted HECm-247 Fluoride Fuel
    <liquid:depleted_fuel_hen_236>,                   //Molten Depleted HEN-236 Fuel
    <liquid:depleted_fuel_hen_236_fluoride>,          //Molten Depleted HEN-236 Fluoride Fuel
    <liquid:depleted_fuel_hen_236_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEN-236 Fluoride Fuel
    <liquid:depleted_fuel_hep_239>,                   //Molten Depleted HEP-239 Fuel
    <liquid:depleted_fuel_hep_239_fluoride>,          //Molten Depleted HEP-239 Fluoride Fuel
    <liquid:depleted_fuel_hep_239_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEP-239 Fluoride Fuel
    <liquid:depleted_fuel_hep_241>,                   //Molten Depleted HEP-241 Fuel
    <liquid:depleted_fuel_hep_241_fluoride>,          //Molten Depleted HEP-241 Fluoride Fuel
    <liquid:depleted_fuel_hep_241_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEP-241 Fluoride Fuel
    <liquid:depleted_fuel_heu_233>,                   //Molten Depleted HEU-233 Fuel
    <liquid:depleted_fuel_heu_233_fluoride>,          //Molten Depleted HEU-233 Fluoride Fuel
    <liquid:depleted_fuel_heu_233_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEU-233 Fluoride Fuel
    <liquid:depleted_fuel_heu_235>,                   //Molten Depleted HEU-235 Fuel
    <liquid:depleted_fuel_heu_235_fluoride>,          //Molten Depleted HEU-235 Fluoride Fuel
    <liquid:depleted_fuel_heu_235_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted HEU-235 Fluoride Fuel
    <liquid:depleted_fuel_lea_242>,                   //Molten Depleted LEA-242 Fuel
    <liquid:depleted_fuel_lea_242_fluoride>,          //Molten Depleted LEA-242 Fluoride Fuel
    <liquid:depleted_fuel_lea_242_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEA-242 Fluoride Fuel
    <liquid:depleted_fuel_leb_248>,                   //Molten Depleted LEB-248 Fuel
    <liquid:depleted_fuel_leb_248_fluoride>,          //Molten Depleted LEB-248 Fluoride Fuel
    <liquid:depleted_fuel_leb_248_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEB-248 Fluoride Fuel
    <liquid:depleted_fuel_lecf_249>,                  //Molten Depleted LECf-249 Fuel
    <liquid:depleted_fuel_lecf_249_fluoride>,         //Molten Depleted LECf-249 Fluoride Fuel
    <liquid:depleted_fuel_lecf_249_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted LECf-249 Fluoride Fuel
    <liquid:depleted_fuel_lecf_251>,                  //Molten Depleted LECf-251 Fuel
    <liquid:depleted_fuel_lecf_251_fluoride>,         //Molten Depleted LECf-251 Fluoride Fuel
    <liquid:depleted_fuel_lecf_251_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted LECf-251 Fluoride Fuel
    <liquid:depleted_fuel_lecm_243>,                  //Molten Depleted LECm-243 Fuel
    <liquid:depleted_fuel_lecm_243_fluoride>,         //Molten Depleted LECm-243 Fluoride Fuel
    <liquid:depleted_fuel_lecm_243_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted LECm-243 Fluoride Fuel
    <liquid:depleted_fuel_lecm_245>,                  //Molten Depleted LECm-245 Fuel
    <liquid:depleted_fuel_lecm_245_fluoride>,         //Molten Depleted LECm-245 Fluoride Fuel
    <liquid:depleted_fuel_lecm_245_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted LECm-245 Fluoride Fuel
    <liquid:depleted_fuel_lecm_247>,                  //Molten Depleted LECm-247 Fuel
    <liquid:depleted_fuel_lecm_247_fluoride>,         //Molten Depleted LECm-247 Fluoride Fuel
    <liquid:depleted_fuel_lecm_247_fluoride_flibe>,   //Molten FLiBe Salt Solution of Depleted LECm-247 Fluoride Fuel
    <liquid:depleted_fuel_len_236>,                   //Molten Depleted LEN-236 Fuel
    <liquid:depleted_fuel_len_236_fluoride>,          //Molten Depleted LEN-236 Fluoride Fuel
    <liquid:depleted_fuel_len_236_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEN-236 Fluoride Fuel
    <liquid:depleted_fuel_lep_239>,                   //Molten Depleted LEP-239 Fuel
    <liquid:depleted_fuel_lep_239_fluoride>,          //Molten Depleted LEP-239 Fluoride Fuel
    <liquid:depleted_fuel_lep_239_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEP-239 Fluoride Fuel
    <liquid:depleted_fuel_lep_241>,                   //Molten Depleted LEP-241 Fuel
    <liquid:depleted_fuel_lep_241_fluoride>,          //Molten Depleted LEP-241 Fluoride Fuel
    <liquid:depleted_fuel_lep_241_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEP-241 Fluoride Fuel
    <liquid:depleted_fuel_leu_233>,                   //Molten Depleted LEU-233 Fuel
    <liquid:depleted_fuel_leu_233_fluoride>,          //Molten Depleted LEU-233 Fluoride Fuel
    <liquid:depleted_fuel_leu_233_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEU-233 Fluoride Fuel
    <liquid:depleted_fuel_leu_235>,                   //Molten Depleted LEU-235 Fuel
    <liquid:depleted_fuel_leu_235_fluoride>,          //Molten Depleted LEU-235 Fluoride Fuel
    <liquid:depleted_fuel_leu_235_fluoride_flibe>,    //Molten FLiBe Salt Solution of Depleted LEU-235 Fluoride Fuel
    <liquid:depleted_fuel_tbu>,                       //Molten Depleted TBU Fuel
    <liquid:depleted_fuel_tbu_fluoride>,              //Molten Depleted TBU Fluoride Fuel
    <liquid:depleted_fuel_tbu_fluoride_flibe>,        //Molten FLiBe Salt Solution of Depleted TBU Fluoride Fuel
    <liquid:deuterium>,                               //Deuterium
    <liquid:diamond>,                                 //Molten Diamond
    <liquid:diamond_nak>,                             //Eutectic NaK-Diamond Mixture
    <liquid:diamond_nak_hot>,                         //Hot Eutectic NaK-Diamond Mixture
    <liquid:diborane>,                                //Diborane
    <liquid:emerald>,                                 //Molten Emerald
    <liquid:emerald_nak>,                             //Eutectic NaK-Emerald Mixture
    <liquid:emerald_nak_hot>,                         //Hot Eutectic NaK-Emerald Mixture
    <liquid:ender_nak>,                               //Eutectic NaK-Ender Mixture
    <liquid:ender_nak_hot>,                           //Hot Eutectic NaK-Ender Mixture
    <liquid:ethanol>,                                 //Ethanol
    <liquid:ethene>,                                  //Ethylene
    <liquid:exhaust_steam>,                           //Exhaust Steam
    <liquid:ferroboron>,                              //Molten Ferroboron
    <liquid:flibe>,                                   //Molten FLiBe Salt Mixture
    <liquid:fluorine>,                                //Fluorine
    <liquid:fluorite_water>,                          //Fluorite Water
    <liquid:fluoromethane>,                           //Fluoromethane
    <liquid:fuel_hea_242>,                            //Molten HEA-242 Fuel
    <liquid:fuel_hea_242_fluoride>,                   //Molten HEA-242 Fluoride Fuel
    <liquid:fuel_hea_242_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEA-242 Fluoride Fuel
    <liquid:fuel_heb_248>,                            //Molten HEB-248 Fuel
    <liquid:fuel_heb_248_fluoride>,                   //Molten HEB-248 Fluoride Fuel
    <liquid:fuel_heb_248_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEB-248 Fluoride Fuel
    <liquid:fuel_hecf_249>,                           //Molten HECf-249 Fuel
    <liquid:fuel_hecf_249_fluoride>,                  //Molten HECf-249 Fluoride Fuel
    <liquid:fuel_hecf_249_fluoride_flibe>,            //Molten FLiBe Salt Solution of HECf-249 Fluoride Fuel
    <liquid:fuel_hecf_251>,                           //Molten HECf-251 Fuel
    <liquid:fuel_hecf_251_fluoride>,                  //Molten HECf-251 Fluoride Fuel
    <liquid:fuel_hecf_251_fluoride_flibe>,            //Molten FLiBe Salt Solution of HECf-251 Fluoride Fuel
    <liquid:fuel_hecm_243>,                           //Molten HECm-243 Fuel
    <liquid:fuel_hecm_243_fluoride>,                  //Molten HECm-243 Fluoride Fuel
    <liquid:fuel_hecm_243_fluoride_flibe>,            //Molten FLiBe Salt Solution of HECm-243 Fluoride Fuel
    <liquid:fuel_hecm_245>,                           //Molten HECm-245 Fuel
    <liquid:fuel_hecm_245_fluoride>,                  //Molten HECm-245 Fluoride Fuel
    <liquid:fuel_hecm_245_fluoride_flibe>,            //Molten FLiBe Salt Solution of HECm-245 Fluoride Fuel
    <liquid:fuel_hecm_247>,                           //Molten HECm-247 Fuel
    <liquid:fuel_hecm_247_fluoride>,                  //Molten HECm-247 Fluoride Fuel
    <liquid:fuel_hecm_247_fluoride_flibe>,            //Molten FLiBe Salt Solution of HECm-247 Fluoride Fuel
    <liquid:fuel_hen_236>,                            //Molten HEN-236 Fuel
    <liquid:fuel_hen_236_fluoride>,                   //Molten HEN-236 Fluoride Fuel
    <liquid:fuel_hen_236_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEN-236 Fluoride Fuel
    <liquid:fuel_hep_239>,                            //Molten HEP-239 Fuel
    <liquid:fuel_hep_239_fluoride>,                   //Molten HEP-239 Fluoride Fuel
    <liquid:fuel_hep_239_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEP-239 Fluoride Fuel
    <liquid:fuel_hep_241>,                            //Molten HEP-241 Fuel
    <liquid:fuel_hep_241_fluoride>,                   //Molten HEP-241 Fluoride Fuel
    <liquid:fuel_hep_241_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEP-241 Fluoride Fuel
    <liquid:fuel_heu_233>,                            //Molten HEU-233 Fuel
    <liquid:fuel_heu_233_fluoride>,                   //Molten HEU-233 Fluoride Fuel
    <liquid:fuel_heu_233_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEU-233 Fluoride Fuel
    <liquid:fuel_heu_235>,                            //Molten HEU-235 Fuel
    <liquid:fuel_heu_235_fluoride>,                   //Molten HEU-235 Fluoride Fuel
    <liquid:fuel_heu_235_fluoride_flibe>,             //Molten FLiBe Salt Solution of HEU-235 Fluoride Fuel
    <liquid:fuel_lea_242>,                            //Molten LEA-242 Fuel
    <liquid:fuel_lea_242_fluoride>,                   //Molten LEA-242 Fluoride Fuel
    <liquid:fuel_lea_242_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEA-242 Fluoride Fuel
    <liquid:fuel_leb_248>,                            //Molten LEB-248 Fuel
    <liquid:fuel_leb_248_fluoride>,                   //Molten LEB-248 Fluoride Fuel
    <liquid:fuel_leb_248_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEB-248 Fluoride Fuel
    <liquid:fuel_lecf_249>,                           //Molten LECf-249 Fuel
    <liquid:fuel_lecf_249_fluoride>,                  //Molten LECf-249 Fluoride Fuel
    <liquid:fuel_lecf_249_fluoride_flibe>,            //Molten FLiBe Salt Solution of LECf-249 Fluoride Fuel
    <liquid:fuel_lecf_251>,                           //Molten LECf-251 Fuel
    <liquid:fuel_lecf_251_fluoride>,                  //Molten LECf-251 Fluoride Fuel
    <liquid:fuel_lecf_251_fluoride_flibe>,            //Molten FLiBe Salt Solution of LECf-251 Fluoride Fuel
    <liquid:fuel_lecm_243>,                           //Molten LECm-243 Fuel
    <liquid:fuel_lecm_243_fluoride>,                  //Molten LECm-243 Fluoride Fuel
    <liquid:fuel_lecm_243_fluoride_flibe>,            //Molten FLiBe Salt Solution of LECm-243 Fluoride Fuel
    <liquid:fuel_lecm_245>,                           //Molten LECm-245 Fuel
    <liquid:fuel_lecm_245_fluoride>,                  //Molten LECm-245 Fluoride Fuel
    <liquid:fuel_lecm_245_fluoride_flibe>,            //Molten FLiBe Salt Solution of LECm-245 Fluoride Fuel
    <liquid:fuel_lecm_247>,                           //Molten LECm-247 Fuel
    <liquid:fuel_lecm_247_fluoride>,                  //Molten LECm-247 Fluoride Fuel
    <liquid:fuel_lecm_247_fluoride_flibe>,            //Molten FLiBe Salt Solution of LECm-247 Fluoride Fuel
    <liquid:fuel_len_236>,                            //Molten LEN-236 Fuel
    <liquid:fuel_len_236_fluoride>,                   //Molten LEN-236 Fluoride Fuel
    <liquid:fuel_len_236_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEN-236 Fluoride Fuel
    <liquid:fuel_lep_239>,                            //Molten LEP-239 Fuel
    <liquid:fuel_lep_239_fluoride>,                   //Molten LEP-239 Fluoride Fuel
    <liquid:fuel_lep_239_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEP-239 Fluoride Fuel
    <liquid:fuel_lep_241>,                            //Molten LEP-241 Fuel
    <liquid:fuel_lep_241_fluoride>,                   //Molten LEP-241 Fluoride Fuel
    <liquid:fuel_lep_241_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEP-241 Fluoride Fuel
    <liquid:fuel_leu_233>,                            //Molten LEU-233 Fuel
    <liquid:fuel_leu_233_fluoride>,                   //Molten LEU-233 Fluoride Fuel
    <liquid:fuel_leu_233_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEU-233 Fluoride Fuel
    <liquid:fuel_leu_235>,                            //Molten LEU-235 Fuel
    <liquid:fuel_leu_235_fluoride>,                   //Molten LEU-235 Fluoride Fuel
    <liquid:fuel_leu_235_fluoride_flibe>,             //Molten FLiBe Salt Solution of LEU-235 Fluoride Fuel
    <liquid:fuel_tbu>,                                //Molten TBU Fuel
    <liquid:fuel_tbu_fluoride>,                       //Molten TBU Fluoride Fuel
    <liquid:fuel_tbu_fluoride_flibe>,                 //Molten FLiBe Salt Solution of TBU Fluoride Fuel

    <liquid:gelatin>,                                 //Molten Gelatin        //еда

    <liquid:glowstone_nak>,                           //Eutectic NaK-Glowstone Mixture
    <liquid:glowstone_nak_hot>,                       //Hot Eutectic NaK-Glowstone Mixture
    <liquid:gold>,                                    //Molten Gold
    <liquid:gold_nak>,                                //Eutectic NaK-Gold Mixture
    <liquid:gold_nak_hot>,                            //Hot Eutectic NaK-Gold Mixture
    <liquid:h2so4>,                                   //Sulphuric Acid
    <liquid:hard_carbon>,                             //Molten Hard Carbon
    <liquid:helium>,                                  //Helium
    <liquid:helium3>,                                 //Helium-3
    <liquid:high_pressure_steam>,                     //High Pressure Steam

    <liquid:hydrated_gelatin>,                        //Hydrated Gelatin   //еда

    <liquid:hydrofluoric_acid>,                       //Hydrofluoric Acid
    <liquid:hydrogen>,                                //Hydrogen
    <liquid:iron>,                                    //Molten Iron
    <liquid:iron_nak>,                                //Eutectic NaK-Iron Mixture
    <liquid:iron_nak_hot>,                            //Hot Eutectic NaK-Iron Mixture
    <liquid:koh>,                                     //Molten Potassium Hydroxide
    <liquid:lapis>,                                   //Molten Lapis
    <liquid:lapis_nak>,                               //Eutectic NaK-Lapis Mixture
    <liquid:lapis_nak_hot>,                           //Hot Eutectic NaK-Lapis Mixture
    <liquid:lif>,                                     //Molten Lithium Fluoride
    <liquid:liquidhelium>,                            //Liquid Helium
    <liquid:liquidhelium_nak>,                        //Eutectic NaK-Helium Mixture
    <liquid:liquidhelium_nak_hot>,                    //Hot Eutectic NaK-Helium Mixture
    <liquid:lithium>,                                 //Molten Lithium
    <liquid:lithium6>,                                //Molten Lithium-6
    <liquid:lithium7>,                                //Molten Lithium-7
    <liquid:low_pressure_steam>,                      //Low Pressure Steam
    <liquid:low_quality_steam>,                       //Low Quality Steam
    <liquid:magnesium>,                               //Molten Magnesium
    <liquid:magnesium_nak>,                           //Eutectic NaK-Magnesium Mixture
    <liquid:magnesium_nak_hot>,                       //Hot Eutectic NaK-Magnesium Mixture
    <liquid:manganese>,                               //Molten Manganese
    <liquid:manganese_dioxide>,                       //Molten Manganese Dioxide

    <liquid:marshmallow>,                             //Liquid Marshmallow    //еда

    <liquid:methanol>,                                //Methanol

    <liquid:milk_chocolate>,                          //Molten Milk Chocolate  //еда

    <liquid:nak>,                                     //Eutectic NaK Alloy
    <liquid:nak_hot>,                                 //Hot Eutectic NaK Alloy
    <liquid:naoh>,                                    //Molten Sodium Hydroxide
    <liquid:neptunium_236>,                           //Molten Neptunium-236
    <liquid:neptunium_236_fluoride>,                  //Molten Neptunium-236 Fluoride
    <liquid:neptunium_236_fluoride_flibe>,            //Molten FLiBe Salt Solution of Neptunium-236 Fluoride
    <liquid:neptunium_237>,                           //Molten Neptunium-237
    <liquid:neptunium_237_fluoride>,                  //Molten Neptunium-237 Fluoride
    <liquid:neptunium_237_fluoride_flibe>,            //Molten FLiBe Salt Solution of Neptunium-237
    <liquid:neutron>,                                 //Neutron Fluid
    <liquid:nitrogen>,                                //Nitrogen
    <liquid:oxygen>,                                  //Oxygen
    <liquid:oxygen_difluoride>,                       //Oxygen Difluoride
    <liquid:plasma>,                                  //Plasma
    <liquid:plutonium>,                               //Molten Plutonium
    <liquid:plutonium_238>,                           //Molten Plutonium-238
    <liquid:plutonium_238_fluoride>,                  //Molten Plutonium-238 Fluoride
    <liquid:plutonium_238_fluoride_flibe>,            //Molten FLiBe Salt Solution of Plutonium-238 Fluoride
    <liquid:plutonium_239>,                           //Molten Plutonium-239
    <liquid:plutonium_239_fluoride>,                  //Molten Plutonium-239 Fluoride
    <liquid:plutonium_239_fluoride_flibe>,            //Molten FLiBe Salt Solution of Plutonium-239 Fluoride
    <liquid:plutonium_241>,                           //Molten Plutonium-241
    <liquid:plutonium_241_fluoride>,                  //Molten Plutonium-241 Fluoride
    <liquid:plutonium_241_fluoride_flibe>,            //Molten FLiBe Salt Solution of Plutonium-241 Fluoride
    <liquid:plutonium_242>,                           //Molten Plutonium-242
    <liquid:plutonium_242_fluoride>,                  //Molten Plutonium-242 Fluoride
    <liquid:plutonium_242_fluoride_flibe>,            //Molten FLiBe Salt Solution of Plutonium-242 Fluoride
    <liquid:plutonium_fluoride>,                      //Molten Plutonium Fluoride
    <liquid:plutonium_fluoride_flibe>,                //Molten FLiBe Salt Solution of Plutonium Fluoride
    <liquid:potassium>,                               //Molten Potassium
    <liquid:potassium_fluoride_solution>,             //Potassium Fluoride Solution
    <liquid:potassium_hydroxide_solution>,            //Potassium Hydroxide Solution
    <liquid:preheated_water>,                         //Preheated Water
    <liquid:quartz>,                                  //Molten Quartz
    <liquid:quartz_nak>,                              //Eutectic NaK-Quartz Mixture
    <liquid:quartz_nak_hot>,                          //Hot Eutectic NaK-Quartz Mixture
    <liquid:radaway>,                                 //RadAway Fluid
    <liquid:redstone_nak>,                            //Eutectic NaK-Redstone Mixture
    <liquid:redstone_nak_hot>,                        //Hot Eutectic NaK-Redstone Mixture
    <liquid:sic_vapor>,                               //Silicon Carbide Vapor
    <liquid:silver>,                                  //Molten Silver
    <liquid:sodium>,                                  //Molten Sodium
    <liquid:sodium_fluoride_solution>,                //Sodium Fluoride Solution
    <liquid:sodium_hydroxide_solution>,               //Sodium Hydroxide Solution

    <liquid:sugar>,                                   //Molten Sugar  //еда?

    <liquid:sulfur>,                                  //Molten Sulfur
    <liquid:sulfur_dioxide>,                          //Sulfur Dioxide
    <liquid:sulfur_trioxide>,                         //Sulfur Trioxide
    <liquid:sulfuric_acid>,                           //Sulfuric Acid
    <liquid:thorium>,                                 //Molten Thorium
    <liquid:thorium_230>,                             //Molten Thorium-230
    <liquid:thorium_230_fluoride>,                    //Molten Thorium-230 Fluoride
    <liquid:thorium_230_fluoride_flibe>,              //Molten FLiBe Salt Solution of Thorium-230 Fluoride
    <liquid:thorium_232>,                             //Molten Thorium-232
    <liquid:thorium_232_fluoride>,                    //Molten Thorium-232 Fluoride
    <liquid:thorium_232_fluoride_flibe>,              //Molten FLiBe Salt Solution of Thorium-232 Fluoride
    <liquid:thorium_fluoride>,                        //Molten Thorium Fluoride
    <liquid:thorium_fluoride_flibe>,                  //Molten FLiBe Salt Solution of Thorium Fluoride
    <liquid:tin>,                                     //Molten Tin
    <liquid:tin_nak>,                                 //Eutectic NaK-Tin Mixture
    <liquid:tin_nak_hot>,                             //Hot Eutectic NaK-Tin Mixture
    <liquid:tough>,                                   //Molten Tough Alloy
    <liquid:tritium>,                                 //Tritium

    <liquid:unsweetened_chocolate>,                   //Molten Unsweetened Chocolate //еда

    <liquid:uranium>,                                 //Molten Uranium
    <liquid:uranium_233>,                             //Molten Uranium-233
    <liquid:uranium_233_fluoride>,                    //Molten Uranium-233 Fluoride
    <liquid:uranium_233_fluoride_flibe>,              //Molten FLiBe Salt Solution of Uranium-233 Fluoride
    <liquid:uranium_235>,                             //Molten Uranium-235
    <liquid:uranium_235_fluoride>,                    //Molten Uranium-235 Fluoride
    <liquid:uranium_235_fluoride_flibe>,              //Molten FLiBe Salt Solution of Uranium-235 Fluoride
    <liquid:uranium_238>,                             //Molten Uranium-238
    <liquid:uranium_238_fluoride>,                    //Molten Uranium-238 Fluoride
    <liquid:uranium_238_fluoride_flibe>,              //Molten FLiBe Salt Solution of Uranium-238 Fluoride
    <liquid:uranium_fluoride>,                        //Molten Uranium Fluoride
    <liquid:uranium_fluoride_flibe>                   //Molten FLiBe Salt Solution of Uranium Fluoride
  ]
};

for stage, liquidStacks in liquidsForStage {
	for liquidStack in liquidStacks {
		mods.ItemStages.stageLiquid(stage, liquidStack);
		//Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.craft_utils.getBucketIngredient(liquidStack));
	}
}
