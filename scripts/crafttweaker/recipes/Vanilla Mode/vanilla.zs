/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var air = ING.air;

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_chest", <item:minecraft:chest>,
	[[ING.logs, ING.logs, ING.logs],
	[ING.logs, ING.air, ING.logs],
	[ING.logs, ING.logs, ING.logs]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_furnace", <item:minecraft:furnace>,
	[[ING.cobblestone, ING.cobblestone, ING.cobblestone],
	[ING.cobblestone, ING.air, ING.cobblestone],
	[ING.cobblestone, ING.cobblestone, ING.cobblestone]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_shulker_box", <item:minecraft:shulker_box>,
	[[ING.air, ING.shulker_shell, ING.air],
	[ING.air, ING.chest, ING.air],
	[ING.air, ING.shulker_shell, ING.air]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_ender_chest", <item:minecraft:ender_chest>,
	[[ING.obsidian, ING.obsidian, ING.obsidian],
	[ING.obsidian, ING.ender_eye, ING.obsidian],
	[ING.obsidian, ING.obsidian, ING.obsidian]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_piston", <item:minecraft:piston>,
	[[ING.logs, ING.logs, ING.logs],
	[ING.cobblestone, ING.iron_ingot, ING.cobblestone],
	[ING.cobblestone, ING.redstone, ING.cobblestone]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_ench_table", <item:minecraft:enchanting_table>,
	[[ING.air, ING.book, ING.air],
	[ING.diamond, ING.obsidian, ING.diamond],
	[ING.obsidian, ING.obsidian, ING.obsidian]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_smoker", <item:minecraft:smoker>,
	[[ING.air, ING.logs, ING.air],
	[ING.logs, ING.furnace, ING.logs],
	[ING.air, ING.logs, ING.air]]);

mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_blast_furnace", <item:minecraft:blast_furnace>,
	[[ING.iron_ingot, ING.iron_ingot, ING.iron_ingot],
	[ING.iron_ingot, ING.furnace, ING.iron_ingot],
	[ING.smooth_stone, ING.smooth_stone, ING.smooth_stone]]);

mods.recipestages.Recipes.addShapeless("vanilla_mode", "vanilla_fire_charge", <item:minecraft:fire_charge> * 3,
	[ING.blaze_powder, ING.coal, ING.gunpowder]);

/*
mods.recipestages.Recipes.addShaped("vanilla_mode", "vanilla_", ,
	[[ING., ING., ING.],
	[ING., ING., ING.],
	[ING., ING., ING.]]);


*/