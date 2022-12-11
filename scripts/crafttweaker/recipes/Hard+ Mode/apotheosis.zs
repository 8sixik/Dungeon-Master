/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var air = ING.air;

mods.recipestages.Recipes.addShaped("hard+_mode", "apotheosis_hellshelf_hard_", <item:apotheosis:hellshelf>,
	[[ING.nether_bricks, ING.nether_bricks, ING.nether_bricks],
	[ING.emberstone_ingot, ING.bookshelf, ING.emberstone_ingot],
	[ING.nether_bricks, ING.nether_bricks, ING.nether_bricks]]);