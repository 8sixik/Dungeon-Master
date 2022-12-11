/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.FurnaceManager;
import crafttweaker.api.BlastFurnaceManager;


var items as string[] = [
    "minecraft:chest","minecraft:furnace","minecraft:blast_furnace","minecraft:enchanting_table","minecraft:piston","minecraft:smoker",
	"minecraft:ender_chest", "minecraft:shulker_box","apotheosis:hellshelf","minecraft:fire_charge"
	
	];


for item in items {
    craftingTable.removeByName(item);
}

