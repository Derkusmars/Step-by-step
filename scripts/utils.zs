#priority 2000

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function squareNum(number as int, timesToSquare as int) as int {
	var returnNumber = number;

	for i in 0 to timesToSquare {
		returnNumber = returnNumber * 2;
	}

	return returnNumber;
}

//Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}

//Formats a bucket with liquid NBT
function formatBucket(bucket as IItemStack, liquidName as string) as IItemStack {
	var data as IData = null;

	if (bucket.matches(<foundry:fluidcontainer>)) {
		data = {
			FluidName: liquidName,
			Amount: 1000
		};
	} else if (bucket.matches(<primal:bucket_clay>)) {
		data = {
			Fluid: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else if (bucket.matches(<primal:bucket_terra>)) {
		data = {
			Fluid: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
  } else if (bucket.matches(<primal:bucket_cinis>)) {
		data = {
			Fluid: {
				FluidName: liquidName,
				Amount: 1000
			}
		};
	} else {
		data = {
			FluidName: liquidName,
			Amount: 1000
		};
	}

	//Minecraft unique buckets
	if (bucket.definition.owner == "forge") {
		if (liquidName == "lava") {
			return <minecraft:lava_bucket>;
		} else if (liquidName == "milk") {
			return <minecraft:milk_bucket>;
		} else if (liquidName == "water") {
			return <minecraft:water_bucket>;
		}
	}

	return bucket.withTag(data);
}

function formatBucketIngredient(bucket as IItemStack, liquidName as string) as IIngredient {
	return formatBucket(bucket, liquidName) as IIngredient;
}
