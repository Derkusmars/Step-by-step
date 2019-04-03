import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var liquidItemsForStage as IItemStack[][string] = {
  stages.melting_ingot : [
    <foundry:liquidalumina>,                                                    //Liquid Alumina
    <foundry:liquidaluminium>,                                                  //Liquid Aluminium
    <foundry:liquidbrass>,                                                      //Liquid Brass
    <foundry:liquidbronze>,                                                     //Liquid Bronze
    <foundry:liquidcopper>,                                                     //Liquid Copper
    <foundry:liquidcupronickel>,                                                //Liquid Cupronickel
    <foundry:liquidelectrum>,                                                   //Liquid Electrum
    <foundry:liquidenderium>,                                                   //Liquid Enderium
    <foundry:liquidgold>,                                                       //Liquid Gold
    <foundry:liquidinvar>,                                                      //Liquid Invar
    <foundry:liquidiron>,                                                       //Liquid Iron
    <foundry:liquidlead>,                                                       //Liquid Lead
    <foundry:liquidlumium>,                                                     //Liquid Lumium
    <foundry:liquidnickel>,                                                     //Liquid Nickel
    <foundry:liquidosmium>,                                                     //Liquid Osmium
    <foundry:liquidplatinum>,                                                   //Liquid Platinum
    <foundry:liquidsignalum>,                                                   //Liquid Signalum
    <foundry:liquidsilver>,                                                     //Liquid Silver
    <foundry:liquidsteel>,                                                      //Liquid Steel
    <foundry:liquidtin>,                                                        //Liquid Tin
    <foundry:liquidzinc>                                                        //Liquid Zinc
  ],

  stages.melting_glass : [
    <foundry:liquidglass>,                                                      //Liquid Glass
    <foundry:liquidglassblack>,                                                 //Liquid Glass (Black)
    <foundry:liquidglassblue>,                                                  //Liquid Glass (Blue)
    <foundry:liquidglassbrown>,                                                 //Liquid Glass (Brown)
    <foundry:liquidglasscyan>,                                                  //Liquid Glass (Cyan)
    <foundry:liquidglassgray>,                                                  //Liquid Glass (Gray)
    <foundry:liquidglassgreen>,                                                 //Liquid Glass (Green)
    <foundry:liquidglasslight_blue>,                                            //Liquid Glass (Light Blue)
    <foundry:liquidglasslime>,                                                  //Liquid Glass (Lime)
    <foundry:liquidglassmagenta>,                                               //Liquid Glass (Magenta)
    <foundry:liquidglassorange>,                                                //Liquid Glass (Orange)
    <foundry:liquidglasspink>,                                                  //Liquid Glass (Pink)
    <foundry:liquidglasspurple>,                                                //Liquid Glass (Purple)
    <foundry:liquidglassred>,                                                   //Liquid Glass (Red)
    <foundry:liquidglasssilver>,                                                //Liquid Glass (Light Gray)
    <foundry:liquidglasswhite>,                                                 //Liquid Glass (White)
    <foundry:liquidglassyellow>,                                                //Liquid Glass (Yellow)
  ],

  stages.melting_botania : [
    <foundry:liquidelvenelementium>,                                            //Liquid Elementium
    <foundry:liquidmanasteel>,                                                  //Liquid Manasteel
    <foundry:liquidterrasteel>,                                                 //Liquid Terrasteel
  ]
};

for stage, liquidItems in liquidItemsForStage {
	for liquidItem in liquidItems {
		mods.ItemStages.addItemStage(stage, liquidItem);
	}
}

var liquidsForStage as ILiquidStack[][string] = {
  stages.melting_ingot : [
    <liquid:liquidalumina>,                                                     //Liquid Alumina
    <liquid:liquidaluminium>,                                                   //Liquid Aluminium
    <liquid:liquidbrass>,                                                       //Liquid Brass
    <liquid:liquidbronze>,                                                      //Liquid Bronze
    <liquid:liquidcopper>,                                                      //Liquid Copper
    <liquid:liquidcupronickel>,                                                 //Liquid Cupronickel
    <liquid:liquidelectrum>,                                                    //Liquid Electrum
    <liquid:liquidenderium>,                                                    //Liquid Enderium
    <liquid:liquidgold>,                                                        //Liquid Gold
    <liquid:liquidinvar>,                                                       //Liquid Invar
    <liquid:liquidiron>,                                                        //Liquid Iron
    <liquid:liquidlead>,                                                        //Liquid Lead
    <liquid:liquidlumium>,                                                      //Liquid Lumium
    <liquid:liquidnickel>,                                                      //Liquid Nickel
    <liquid:liquidosmium>,                                                      //Liquid Osmium
    <liquid:liquidplatinum>,                                                    //Liquid Platinum
    <liquid:liquidsignalum>,                                                    //Liquid Signalum
    <liquid:liquidsilver>,                                                      //Liquid Silver
    <liquid:liquidsteel>,                                                       //Liquid Steel
    <liquid:liquidtin>,                                                         //Liquid Tin
    <liquid:liquidzinc>                                                         //Liquid Zinc
  ],
  stages.melting_glass : [
    <liquid:liquidglass>,                                                       //Liquid Glass
    <liquid:liquidglassblack>,                                                  //Liquid Glass (Black)
    <liquid:liquidglassblue>,                                                   //Liquid Glass (Blue)
    <liquid:liquidglassbrown>,                                                  //Liquid Glass (Brown)
    <liquid:liquidglasscyan>,                                                   //Liquid Glass (Cyan)
    <liquid:liquidglassgray>,                                                   //Liquid Glass (Gray)
    <liquid:liquidglassgreen>,                                                  //Liquid Glass (Green)
    <liquid:liquidglasslight_blue>,                                             //Liquid Glass (Light Blue)
    <liquid:liquidglasslime>,                                                   //Liquid Glass (Lime)
    <liquid:liquidglassmagenta>,                                                //Liquid Glass (Magenta)
    <liquid:liquidglassorange>,                                                 //Liquid Glass (Orange)
    <liquid:liquidglasspink>,                                                   //Liquid Glass (Pink)
    <liquid:liquidglasspurple>,                                                 //Liquid Glass (Purple)
    <liquid:liquidglassred>,                                                    //Liquid Glass (Red)
    <liquid:liquidglasssilver>,                                                 //Liquid Glass (Light Gray)
    <liquid:liquidglasswhite>,                                                  //Liquid Glass (White)
    <liquid:liquidglassyellow>,                                                 //Liquid Glass (Yellow)
  ],
  stages.melting_botania : [
    <liquid:liquidelvenelementium>,                                             //Liquid Elementium
    <liquid:liquidmanasteel>,                                                   //Liquid Manasteel
    <liquid:liquidterrasteel>,                                                  //Liquid Terrasteel
  ]
};

for stage, liquidStacks in liquidsForStage {
  for liquidStack in liquidStacks {
    mods.ItemStages.stageLiquid(stage, liquidStack);
  //Stage buckets
		mods.ItemStages.addItemStage(stage, scripts.craft_utils.getBucketIngredient(liquidStack));
  }
}
