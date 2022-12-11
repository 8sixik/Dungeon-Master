/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var air = ING.air;

mods.recipestages.Recipes.addShaped("hard_mode", "apotheosis_hellshelf_hard", <item:apotheosis:hellshelf>,
	[[ING.nether_bricks, ING.nether_bricks, ING.nether_bricks],
	[ING.blaze_rod, ING.bookshelf, ING.ghastly_ingot],
	[ING.nether_bricks, ING.nether_bricks, ING.nether_bricks]]);