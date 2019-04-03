import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.ItemStages.addItemStage;

var ItemsForStage as IIngredient[][string] = {
	stages.bot_flowers : [
		<ore:redstoneRoot>,																													//Redstone root
    <botania:fertilizer>,																												//Floral Ferilizer
		<botania:shinyflower:*>,																										//Glimmering flowers
		<botania:dye:*>,																														//Dye powder
		<botania:petal:*>,																													//Petal
		<botania:petalblock:*>,																											//Petal block
		<botania:mushroom:*>,																												//Shimmering mushrooms
		<botania:floatingspecialflower:*>,
		<botania:miniisland:*>,
		<botania:altar:*>,																													//Petal apothecary
		<botania:waterbowl>.withTag({Fluid: {FluidName: "water", Amount: 1000}})		//Bowl of water
  ],
	stages.bot_petal : [
		<ore:livingwood>,																														//Livingwood
		<botania:livingwood0slab>,																									//Livingwood slab
		<ore:livingrock>,																														//Livingrock
		<botania:livingrock0slab>,																									//Livingrock slab
		<botania:flowerbag>,																												//Flower punch
		<botania:lexicon>,																													//Lexica botania
    <botania:specialflower>.withTag({type: "puredaisy"})												//Puredaisy
  ],
	stages.bot_livingWood : [
    <ore:livingwoodTwig>,																												//Livingwood twig
		<botania:livingwood:1>,																											//Livingwood planks
		<botania:livingwood:2>,																											//Livingwood mossy planks
		<botania:livingwood:3>,																											//Livingwood framed
		<botania:livingwood:4>,																											//Livingwood pattern framed
		<botania:livingwood0stairs>,																								//Livingwood stair
		<botania:livingwood0wall>,																									//Livingwood wall
		<botania:livingwood1stairs>,																								//Livingwood plank stair
		<botania:livingwood1slab>,																									//Livingwood plank slab
		<botania:spreader>,																													//Mana spreader
		<botania:spreader:1>,																												//Mana spreader pulse
		<botania:turntable>																													//Spreader turntable
	],
	stages.bot_livingWoodTwig : [
		<botania:twigwand>.withTag({color1: 0, color2: 0})													//Wand of the forest
	],
	stages.bot_livingRock : [
		<botania:livingrock:1>,																											//Livingrock brick
		<botania:livingrock:2>,																											//Livingrock mossy brick
		<botania:livingrock:3>,																											//Livingrock cracked brick
		<botania:livingrock:4>,																											//Livingrock chiseled brick
		<botania:livingrock0stairs>,																								//Livingrock stair
		<botania:livingrock0wall>,																									//Livingrock wall
		<botania:livingrock1stairs>,																								//Livingrock stair brick
		<botania:livingrock1slab>,																									//Livingrock slab brick
		<botania:pool:2>,																														//Diluted manapool
		<botania:manavoid>,																													//Mana void
		<botania:manadetector>																											//Mana detector
  ],
	stages.bot_flowers_gen : [
		<botania:specialflower>.withTag({type: "endoflame"}),												//Endoflame
		<botania:pool>,																															//Manapool
		<botania:poolminecart>																											//Manapool minecart
	],
	stages.bot_mana_pool : [
		<ore:ingotManasteel>,																												//Manasteel
		<ore:nuggetManasteel>,																											//Manasteel nugget
		<ore:manaPearl>,																														//Mana pearl
		<ore:manaDiamond>,																													//Mana diamond
		<ore:manaString>,																														//Mana string
		<ore:quartzMana>,																														//Mana quartz
		<botania:managlass>,																												//Mana glass
		<botania:pistonrelay>,																											//Force relay
		<botania:manaresource:23>,																									//Mana powder
		<botania:grassseeds:*>,																											//Pasture seed (all)
		<botania:grasshorn:*>,																											//Horn of the wild/canopy/covering
		<botania:forestdrum>,																												//Drum of the wild
		<botania:forestdrum:2>,																											//Drum of the canopy
		<botania:animatedtorch>,																										//Animated torch
		<botania:obediencestick>,																										//Floral obedience stick
		<botania:manabottle>																												//Mana in a bottle
	],
	stages.bot_managlass : [
		<botania:managlasspane>,																										//Mana glass pane
		<botania:monocle>,       	                                                  //Manaseer monocle
		<botania:cacophonium>.withTag({})																						//Cacophonium
	],
	stages.bot_manaquartz : [
		<botania:quartztypemana>,										#TODO
		<botania:quartztypemana:1>,									#TODO
		<botania:quartztypemana:2>,									#TODO
		<botania:quartzslabmanahalf>,								#TODO
		<botania:quartzstairsmana>,									#TODO

		<ore:quartzDark>,
		<botania:quartztypedark>,
		<botania:quartztypedark:1>,
		<botania:quartztypedark:2>,
		<botania:quartzslabdarkhalf>,
		<botania:quartzstairsdark>,

		<ore:quartzBlaze>,
		<botania:quartztypeblaze>,
		<botania:quartztypeblaze:1>,
		<botania:quartztypeblaze:2>,
		<botania:quartzslabblazehalf>,
		<botania:quartzstairsblaze>,

		<ore:quartzLavender>,
		<botania:quartztypelavender>,
		<botania:quartztypelavender:1>,
		<botania:quartztypelavender:2>,
		<botania:quartzslablavenderhalf>,
		<botania:quartzstairslavender>,

		<ore:quartzRed>,
		<botania:quartztypered>,
		<botania:quartztypered:1>,
		<botania:quartztypered:2>,
		<botania:quartzslabredhalf>,
		<botania:quartzstairsred>,

		<ore:quartzSunny>,
		<botania:quartztypesunny>,
		<botania:quartztypesunny:1>,
		<botania:quartztypesunny:2>,
		<botania:quartzslabsunnyhalf>,
		<botania:quartzstairssunny>
	],
	stages.bot_manastring : [
		<ore:clothManaweave>,																												//Manaweave cloth
		<botania:manaweavehelm>,              																			//Manaweave cowl
		<botania:manaweavechest>,             																			//Manaweave robe top
		<botania:manaweavelegs>,              																			//Manaweave robe bottom
		<botania:manaweaveboots>,             																			//Manaweave boots
		<botania:cosmetic:*>,																												//Cosmetic petal
		<botania:teruterubozu>,																											//Teru teru bozo
		<botania:livingwoodbow>																											//Livingwood bow
	],
	stages.bot_manasteel : [
		<botania:storage>,																													//Manasteel block
		<botania:distributor>,																											//Mana splitter
		<botania:lens>.withTag({}),																									//Mana lens
		<botania:lens:10>.withTag({}),																							//Mana lens magnetizing
		<botania:lens:15>.withTag({}),																							//Mana lens kindle
		<botania:lens:16>.withTag({}),																							//Mana lens force
		<botania:lens:17>.withTag({}),																							//Mana lens flash
		<botania:lens:22>.withTag({}),																							//Mana lens messenger
		<botania:hourglass>,																												//Hovering hourglass
		<botania:endereyeblock>,																										//Ender overseer
		<botania:foresteye>,																												//Eye of the ancients
		<botania:pump>,																															//Mana pump
		<botania:itemfinder>.withTag({}),																						//The spectator
		<botania:baublebox>,																												//Bauble case
		<botania:sextant>,																													//Worldshaper's sextant
		<botania:magnetring>.withTag({}),																						//Ring of magnetization
		<botania:swapring>,																													//Ring of correction
	],
	stages.ms_armor : [
		<botania:manasteelhelm>,
		<botania:manasteelchest>,
		<botania:manasteellegs>,
		<botania:manasteelboots>,
		<contenttweaker:blankmanahelmet>,
		<contenttweaker:blankmanachestplate>,
		<contenttweaker:blankmanaleggings>,
		<contenttweaker:blankmanaboots>
	],
	stages.bot_ms_tools : [
		<botania:manasteelpick>,                                                    //Manasteel pickaxe
		<botania:manasteelshovel>,                                                  //Manasteel shovel
		<botania:manasteelaxe>,                                                     //Manasteel axe
		<botania:manasteelsword>,                                                   //Manasteel sword
		<botania:glasspick>,																												//Vitreous pickaxe
		<botania:manasteelshears>,																									//Mana shears
		<botania:enderdagger>	                                                      //Soulscriber
	],
	stages.bot_manapearl : [
		<botania:platform>,																													//Abstruse platform
		<botania:tinyplanet>,																												//Tiny planet bauble
		<botania:tinyplanetblock>,																									//Tiny planet block
		<botania:lens:9>.withTag({}),																								//Mana lens phantom
		<botania:invisibilitycloak>,																								//Cloak of invisibility
		<botania:travelbelt>,																												//Soujourner's sash
		<botania:knockbackbelt>,																										//Tectonic girdle
		<botania:spellcloth>,																												//Spellbinding cloth
		<botania:spark>																															//Spark
	],
	stages.bot_manadiamond : [
		<botania:storage:3>,																												//Mana diamond block
		<botania:phantomink>,																												//Phantom ink
		<botania:avatar>,																														//Livingwood avatar
		<botania:pylon>.withTag({}),																								//Mana pylon
		<botania:manatablet>.withTag({}),																						//Mana tablet
		<botania:manaring>.withTag({})																							//Band of mana
	],
	stages.bot_altar : [
		<botania:runealtar>,

	],
	stages.rune_tier1 : [
		<botania:rune>,																															//Rune of water
		<botania:rune:1>,																														//Rune of fire
		<botania:rune:2>,																														//Rune of earth
		<botania:rune:3>,																														//Rune of air

		<ore:blockBlaze>,																														//Blaze mesh
		<botania:bellows>,																													//Manatide bellows
		<botania:felpumpkin>,																												//Fel pumpkin
		<botania:thirdeye>,																													//Third eye
		<botania:waterring>.withTag({}),																						//Ring of chordata
		<botania:miningring>,																												//Ring of the mantle
		<botania:dodgering>,																												//Ring of dexterous motion

		<botania:dirtrod>,																													//Rod of the lands
		<botania:waterrod>,																													//Rod of the seas
		<botania:tornadorod>.withTag({}),																						//Rod of the skies
		<botania:cobblerod>,																												//Rod of the depths
		<botania:firerod>,																													//Rod of the hells
		<botania:diviningrod>,																											//Rod of the plentiful mantle
		<botania:vineball>,																													//Vine ball
		<botania:slingshot>,																												//Livingwood slingshot

		<botania:lens:1>.withTag({}),																								//Mana lens velocity
		<botania:lens:2>.withTag({}),																								//Mana lens potency
		<botania:lens:3>.withTag({}),																								//Mana lens resistance
		<botania:lens:4>.withTag({}),																								//Mana lens efficiency
		<botania:lens:12>.withTag({}),																							//Mana lens influence
		<botania:lens:13>.withTag({})																								//Mana lens weight
	],
	stages.rune_tier2 : [
		<botania:rune:4>,
		<botania:rune:5>,
		<botania:rune:6>,
		<botania:rune:7>,
		<botania:rune:8>,																														//Rune of mana

		<botania:lens:5>.withTag({}),																								//Mana lens bounce
		<botania:lens:6>.withTag({}),																								//Mana lens gravity
		<botania:lens:7>.withTag({}),																								//Mana lens bore
		<botania:alchemycatalyst>,																									//Alchemy catalyst
		<botania:terraplate>,																												//Terrestrial agglomeration plate
		<botania:managun>.withTag({}),																							//Mana blaster
		<botania:goddesscharm>,																											//Benevolent goddess' charm
		<botania:cloudpendant>,																											//Cirrus amulet
		<botania:auraring>,																													//Band of aura

		<botania:brewery>,																													//Botanical brewery
		<ore:bVial>,																																//Managlass vial
		<botania:incenseplate>,																											//Incense plate
		<botania:incensestick>.withTag({}),																					//Incense stick
		<botania:bloodpendant>.withTag({}),																					//Tainted blood pendant
		<botania:terraplate>																												//Terrestrial agglomeration plate
	],
	stages.rune_tier3 : [
		<botania:rune:9>,
		<botania:rune:10>,
		<botania:rune:11>,
		<botania:rune:12>,
		<botania:rune:13>,
		<botania:rune:14>,
		<botania:rune:15>,

		<botania:lens:8>.withTag({}),																								//Mana lens damaging
		<botania:lens:11>.withTag({})																								//Mana lens entropic
	],
	stages.elven_trade : [
		<ore:ingotElvenElementium>,																									//Elemetium ingot
		<ore:nuggetElvenElementium>,																								//Elemetium nugget
		<botania:storage:2>,																												//Elemetium block
		<ore:elvenDragonstone>,																											//Dragonstone
		<botania:storage:4>,																												//Dragonstone block
		<ore:elvenPixieDust>,																												//Pixie dust
		<botania:elfglass>,																													//Alfglass
		<ore:dreamwood>,																														//Dreamwood
		<botania:dreamwood0slab>,                                                   //Dreamwood slab
		<botania:manacookie>,																												//Biscuit of totality

		<ore:quartzElven>,																													//Elven quartz
		<botania:quartztypeelf>,
		<botania:quartztypeelf:1>,
		<botania:quartztypeelf:2>,
		<botania:quartzslabelfhalf>,
		<botania:quartzstairself>
	],
	stages.bot_alfglass : [
		<botania:elfglasspane>,																											//Alfglass pane
		<botania:vial:1>,																														//Alfglass flask
		<botania:slimebottle>,																											//Slime in a bottle
		<botania:lens:21>.withTag({}),																							//Mana lens flare
		<botania:bifrostperm>,																											//Bifrost block
		<botania:bifrostpermpane>,																									//Bifrost pane
		<botania:pool:3>,																														//Fabulous mana pool

		<botania:shimmerrock>,																											//Shimmerrock
		<botania:shimmerwoodplanks>,																								//Shimmerwood plank
		<botania:shimmerrock0slab>,																									//Shimmerrock slab
		<botania:shimmerrock0stairs>,																								//Shimmerrock stair
		<botania:shimmerwoodplanks0slab>,																						//Shimmerwood plank slab
		<botania:shimmerwoodplanks0stairs>																					//Shimmerwood plank stair
	],
	stages.bot_dragonstone : [
		<botania:worldseed>,
		<botania:crystalbow>																												//Crystal bow
	],
	stages.bot_dreamWood : [
		<botania:dreamwood:1>,                                                      //Dreamwood plank
		<botania:dreamwood:2>,                                                      //Dreamwood mossy plank
		<botania:dreamwood:3>,                                                      //Dreamwood framed
		<botania:dreamwood:4>,                                                      //Dreamwood pattern framed
		<botania:dreamwood:5>,                                                      //Dreamwood glimmering
		<botania:dreamwood0stairs>,                                                 //Dreamwood stair
		<botania:dreamwood0wall>,																										//Dreamwood wall
		<botania:dreamwood1stairs>,                                                 //Dreamwood plank stair
		<botania:dreamwood1slab>,	                                                  //Dreamwood plank slab
		<botania:clip>																															//Lens clip
	],
	stages.bot_dreamWoodTwig : [
		<ore:dreamwoodTwig>,
		<botania:rainbowrod>,																												//Rod of the bifrost
		<botania:gravityrod>.withTag({}),																						//Rod of the shaded mesa
		<botania:terraformrod>,																											//Rod of the terra firma
		<botania:smeltrod>																													//Rod of the molten core
	],
	stages.bot_element : [
		<botania:spreader:2>,																												//Elven mana spreader
		<botania:forestdrum:1>,																											//Drum of the gathering
		<botania:starfield>,																												//Starfield creator
		<botania:openbucket>,																												//Extrapolated bucket
		<botania:supertravelbelt>,																									//Globetrotter's sash
		<botania:reachring>,																												//Ring of far rich
		<botania:pixiering>,																												//Great fairy ring

		<botania:lens:14>.withTag({}),																							//Mana lens paintslinger
		<botania:lens:19>.withTag({}),																							//Mana lens redirective
		<botania:lens:20>.withTag({}),																							//Mana lens celebratory
		<botania:lens:23>.withTag({})																								//Mana lens tripwire
	],
	stages.element_armor : [
		<botania:elementiumhelm>,
		<botania:elementiumchest>,
		<botania:elementiumlegs>,
		<botania:elementiumboots>
	],
	stages.bot_elem_tools : [
		<botania:elementiumpick>,                                                   //Elementium pickaxe
	  <botania:elementiumshovel>,                                                 //Elementium shovel
	  <botania:elementiumaxe>,                                                    //Elementium axe
	  <botania:elementiumsword>,                                                  //Elementium sword
		<botania:elementiumshears>,																									//Elemetium shears
		<botania:exchangerod>.withTag({})																						//Rod of the shifting crust
	],
	stages.bot_pixie : [
		<botania:pylon:2>,																													//Gaia pylon
		<botania:platform:1>,																												//Spectral platform
		<botania:prism>,																														//Mana prism
		<botania:ghostrail>,																												//Spectral rail
		<botania:lens:18>.withTag({}),																							//Mana lens warp
		<botania:sparkupgrade:*>,																										//Spark augment all
		<botania:sparkchanger>,																											//Spark tinkerer
		<botania:cocoon>,																														//Cocoon of caprice
		<botania:thornchakram:1>,																										//Flare chakram
		<botania:skydirtrod>,																												//Rod of the highlands
		<botania:virus>,																														//Necodermal virus
		<botania:virus:1>,																													//Nullodermal virus
		//Gaia drop
		<ore:eternalLifeEssence>,																										//Gaia spirit
		<botania:infinitefruit>.withTag({}),
		<botania:kingkey>.withTag({}),
		<botania:flugeleye>.withTag({}),
		<botania:thorring>.withTag({}),
		<botania:odinring>.withTag({}),
		<botania:lokiring>.withTag({}),
		<botania:pinkinator>,
		<botania:dice>.withTag({}),
		<botania:ancientwill:*>,
		<botania:blacklotus:*>,
		<botania:recordgaia1>,
		<botania:recordgaia2>,
		<botania:overgrowthseed>,
		<botania:gaiahead>
	],
	stages.bot_endairbottle : [
		<ore:bRedString>,																														//Red string
		<botania:thundersword>,																											//Thundercaller
		<botania:starsword>,																												//Starcaller
		<botania:spawnerclaw>,																											//Life imbuer
		<botania:keepivy>,																													//Resolute ivy
		<botania:enderhand>																													//Hand of ender
	],
	stages.bot_gaia : [
		<botania:spawnermover>,																											//Life aggregator
		<ore:gaiaIngot>,																														//Gaia spirit ingot
		<botania:blackholetalisman>.withTag({}),																		//Black hole talisman
		<botania:flighttiara:*>,																										//Flugel tiara
		<botania:manabomb>,																													//Manastorm charge
		<botania:spreader:3>,																												//Gaia mana spreader
		<botania:holycloak>,																												//Cloak of virtue
		<botania:unholycloak>,																											//Cloak of sin
		<botania:balancecloak>,																											//Cloak of balance
		<botania:divacharm>,																												//Charm of the diva
		<botania:superlavapendant>,																									//Crimson pendant
		<botania:astrolabe>.withTag({}),																						//Worldshaper's astrolabe
		<botania:supercloudpendant>,																								//Nimbus amulet
		<botania:missilerod>																												//Rod of the unstable reservoir
	],
	stages.bot_terrasteel : [
		<botania:livingwood:5>,																											//Livingwood glimmering
		<botania:alfheimportal>,																										//Elven gateway core
		<ore:ingotTerrasteel>,
		<ore:nuggetTerrasteel>,
		<botania:storage:1>,
		<botania:terrasword>,
		<botania:terrapick>,
		<botania:terraaxe>,
		<botania:pylon:1>,																													//Natura pylon
		<botania:speedupbelt>,																											//Planestrider's sash
		<botania:temperancestone>,																									//Stone of temperance
		<botania:thornchakram>,																											//Thorn chakram
		<botania:manamirror>.withTag({}),																						//Mana mirror
		<botania:manaringgreater>.withTag({}),																			//Greater band of mana
		<botania:auraringgreater>,																									//Greater band of aura
		<botania:magnetringgreater>.withTag({})																			//Greater ring of magnetization
	],
	stages.terrasteel_armor : [
		<botania:terrasteelhelm>,
		<botania:terrasteelchest>,
		<botania:terrasteellegs>,
		<botania:terrasteelboots>
	],
	stages.bot_red_string : [
		<botania:redstringcontainer>,																								//Red stringed container
		<botania:redstringdispenser>,																								//Red stringed dispenser
		<botania:redstringfertilizer>,																							//Red stringed nulifier
		<botania:redstringcomparator>,																							//Red stringed comparator
		<botania:redstringrelay>,																										//Red stringed spoofer
		<botania:redstringinterceptor>,																							//Red stringed interceptor
		<botania:lightrelay:*>,																											//Luminizer
		<botania:lightlauncher>																											//Luminizer launcher
	],
	stages.bot_corporea : [
		<botania:corporeacrystalcube>,
		<botania:corporeaspark>,
		<botania:corporeaspark:1>,
		<botania:corporeaindex>,
		<botania:corporeafunnel>,
		<botania:corporeainterceptor>,
		<botania:corporearetainer>
	],
	stages.bot_incense : [
		<botania:incensestick>.withTag({brewKey: "speed"}),
		<botania:incensestick>.withTag({brewKey: "strength"}),
		<botania:incensestick>.withTag({brewKey: "haste"}),
		<botania:incensestick>.withTag({brewKey: "jumpBoost"}),
		<botania:incensestick>.withTag({brewKey: "regen"}),
		<botania:incensestick>.withTag({brewKey: "regenWeak"}),
		<botania:incensestick>.withTag({brewKey: "resistance"}),
		<botania:incensestick>.withTag({brewKey: "fireResistance"}),
		<botania:incensestick>.withTag({brewKey: "waterBreathing"}),
		<botania:incensestick>.withTag({brewKey: "invisibility"}),
		<botania:incensestick>.withTag({brewKey: "nightVision"}),
		<botania:incensestick>.withTag({brewKey: "soulCross"}),
		<botania:incensestick>.withTag({brewKey: "featherFeet"}),
		<botania:incensestick>.withTag({brewKey: "emptiness"}),
		<botania:incensestick>.withTag({brewKey: "bloodthirst"}),
		<botania:incensestick>.withTag({brewKey: "allure"}),
		<botania:incensestick>.withTag({brewKey: "immortality"}),
		<botania:incensestick>.withTag({brewKey: "drab"}),
		<botania:incensestick>.withTag({brewKey: "floating"})
	],
	stages.bot_pendant : [
		<botania:lavapendant>,																											//Pyroclast pendant
		<botania:icependant>,																												//Snowflake pendant
		<botania:bloodpendant>.withTag({brewKey: "speed"}),
		<botania:bloodpendant>.withTag({brewKey: "strength"}),
		<botania:bloodpendant>.withTag({brewKey: "haste"}),
		<botania:bloodpendant>.withTag({brewKey: "jumpBoost"}),
		<botania:bloodpendant>.withTag({brewKey: "regen"}),
		<botania:bloodpendant>.withTag({brewKey: "regenWeak"}),
		<botania:bloodpendant>.withTag({brewKey: "resistance"}),
		<botania:bloodpendant>.withTag({brewKey: "fireResistance"}),
		<botania:bloodpendant>.withTag({brewKey: "waterBreathing"}),
		<botania:bloodpendant>.withTag({brewKey: "nightVision"}),
		<botania:bloodpendant>.withTag({brewKey: "soulCross"}),
		<botania:bloodpendant>.withTag({brewKey: "featherFeet"}),
		<botania:bloodpendant>.withTag({brewKey: "emptiness"}),
		<botania:bloodpendant>.withTag({brewKey: "bloodthirst"}),
		<botania:bloodpendant>.withTag({brewKey: "allure"}),
		<botania:bloodpendant>.withTag({brewKey: "drab"}),
		<botania:bloodpendant>.withTag({brewKey: "floating"})
	],
	stages.bot_brewing_vial : [
		<botania:brewvial>.withTag({brewKey: "speed"}),
		<botania:brewvial>.withTag({brewKey: "strength"}),
		<botania:brewvial>.withTag({brewKey: "haste"}),
		<botania:brewvial>.withTag({brewKey: "healing"}),
		<botania:brewvial>.withTag({brewKey: "jumpBoost"}),
		<botania:brewvial>.withTag({brewKey: "regen"}),
		<botania:brewvial>.withTag({brewKey: "regenWeak"}),
		<botania:brewvial>.withTag({brewKey: "resistance"}),
		<botania:brewvial>.withTag({brewKey: "fireResistance"}),
		<botania:brewvial>.withTag({brewKey: "waterBreathing"}),
		<botania:brewvial>.withTag({brewKey: "invisibility"}),
		<botania:brewvial>.withTag({brewKey: "nightVision"}),
		<botania:brewvial>.withTag({brewKey: "absorption"}),
		<botania:brewvial>.withTag({brewKey: "overload"}),
		<botania:brewvial>.withTag({brewKey: "soulCross"}),
		<botania:brewvial>.withTag({brewKey: "featherFeet"}),
		<botania:brewvial>.withTag({brewKey: "emptiness"}),
		<botania:brewvial>.withTag({brewKey: "bloodthirst"}),
		<botania:brewvial>.withTag({brewKey: "allure"}),
		<botania:brewvial>.withTag({brewKey: "clear"}),
		<botania:brewvial>.withTag({brewKey: "immortality"}),
		<botania:brewvial>.withTag({brewKey: "drab"}),
		<botania:brewvial>.withTag({brewKey: "revolution"}),
		<botania:brewvial>.withTag({brewKey: "shell"}),
		<botania:brewvial>.withTag({brewKey: "oneforall"}),
		<botania:brewvial>.withTag({brewKey: "deadpool"}),
		<botania:brewvial>.withTag({brewKey: "floating"})
	],
	stages.bot_brewing_flask : [
		<botania:brewflask>.withTag({brewKey: "speed"}),
		<botania:brewflask>.withTag({brewKey: "strength"}),
		<botania:brewflask>.withTag({brewKey: "haste"}),
		<botania:brewflask>.withTag({brewKey: "healing"}),
		<botania:brewflask>.withTag({brewKey: "jumpBoost"}),
		<botania:brewflask>.withTag({brewKey: "regen"}),
		<botania:brewflask>.withTag({brewKey: "regenWeak"}),
		<botania:brewflask>.withTag({brewKey: "resistance"}),
		<botania:brewflask>.withTag({brewKey: "fireResistance"}),
		<botania:brewflask>.withTag({brewKey: "waterBreathing"}),
		<botania:brewflask>.withTag({brewKey: "invisibility"}),
		<botania:brewflask>.withTag({brewKey: "nightVision"}),
		<botania:brewflask>.withTag({brewKey: "absorption"}),
		<botania:brewflask>.withTag({brewKey: "overload"}),
		<botania:brewflask>.withTag({brewKey: "soulCross"}),
		<botania:brewflask>.withTag({brewKey: "featherFeet"}),
		<botania:brewflask>.withTag({brewKey: "emptiness"}),
		<botania:brewflask>.withTag({brewKey: "bloodthirst"}),
		<botania:brewflask>.withTag({brewKey: "allure"}),
		<botania:brewflask>.withTag({brewKey: "clear"}),
		<botania:brewflask>.withTag({brewKey: "immortality"}),
		<botania:brewflask>.withTag({brewKey: "drab"}),
		<botania:brewflask>.withTag({brewKey: "revolution"}),
		<botania:brewflask>.withTag({brewKey: "shell"}),
		<botania:brewflask>.withTag({brewKey: "oneforall"}),
		<botania:brewflask>.withTag({brewKey: "deadpool"}),
		<botania:brewflask>.withTag({brewKey: "floating"})
	],
	stages.bot_creative : [
		<botania:pool:1>,
		<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte})
	],
	stages.end_first : [
		<ore:bEnderAirBottle>,																											//Ender air bottle
	],
	stages.chisel_group : [
		<botania:pavement:*>,
		<botania:pavement0stairs>,
		<botania:pavement0slab>,
		<botania:pavement1stairs>,
		<botania:pavement1slab>,
		<botania:pavement2stairs>,
		<botania:pavement2slab>,
		<botania:pavement3stairs>,
		<botania:pavement3slab>,
		<botania:pavement4stairs>,
		<botania:pavement4slab>,
		<botania:pavement5stairs>,
		<botania:pavement5slab>,
		<botania:custombrick:*>
	]
};

for stage, Items in ItemsForStage {
	for Item in Items {
		addItemStage(stage, Item);
	}
}
