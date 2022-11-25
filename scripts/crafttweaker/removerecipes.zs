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
   
];

var recipesfurnace as IItemStack[] = [
    
];

var itemremove as IItemStack[] = [
    
];

var hide as IItemStack[] = [
    
];

for item in items {
    craftingTable.removeByName(item);
}

for item in hide {
    mods.jei.JEI.hideItem(item);
    craftingTable.removeRecipe(item);
}

for item in itemremove {
    craftingTable.removeRecipe(item);
}

for item in recipesfurnace {
    furnace.removeRecipe(item);
    blastFurnace.removeRecipe(item);
}