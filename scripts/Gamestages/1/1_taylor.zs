import crafttweaker.item.IIngredient;

var stage = stages.base;

var stagetannerItems as IIngredient[] = [


	//Artisan
	<artisanworktables:workstation:0>,

	//contentTweaker
	<contenttweaker:string_mesh>
];

for item in stagetannerItems {
	mods.ItemStages.addItemStage("taylor", item);
}
