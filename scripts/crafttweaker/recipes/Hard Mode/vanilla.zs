/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var air = ING.air;

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_furnace_hard", <item:minecraft:furnace>,
	[[ING.cobblestone, ING.cobblestone, ING.cobblestone],
	[ING.cobblestone, ING.gunpowder, ING.cobblestone],
	[ING.cobblestone, ING.cobblestone, ING.cobblestone]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_blast_furnace_hard", <item:minecraft:blast_furnace>,
	[[ING.iron_block, ING.iron_block, ING.iron_block],
	[ING.iron_block, ING.furnace, ING.iron_block],
	[ING.smooth_stone, ING.smooth_stone, ING.smooth_stone]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_enchanting_table_hard", <item:minecraft:enchanting_table>,
	[[ING.realmite_ingot, ING.book , ING.realmite_ingot],
	[ING.arlemite_ingot, ING.scrap_metal, ING.arlemite_ingot],
	[ING.arlemite_ingot, ING.arlemite_ingot, ING.arlemite_ingot]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_chest_hard", <item:minecraft:chest>,
	[[ING.logs, ING.logs, ING.logs],
	[ING.logs, ING.iron_nugget, ING.logs],
	[ING.logs, ING.logs, ING.logs]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_minecraft_smoker_hard", <item:minecraft:smoker>,
	[[ING.air, ING.iron_ingot, ING.air],
	[ING.scrap_metal, ING.furnace, ING.scrap_metal],
	[ING.air, ING.iron_ingot, ING.air]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_minecraft_ender_chest_hard", <item:minecraft:ender_chest>,
	[[ING.obsidian, ING.baronyte_ingot, ING.obsidian],
	[ING.scrap_metal, ING.ender_eye, ING.scrap_metal],
	[ING.obsidian, ING.baronyte_ingot, ING.obsidian]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_minecraft_shulker_box_hard", <item:minecraft:shulker_box>,
	[[ING.air, ING.shulker_shell, ING.air],
	[ING.shulker_shell, ING.chest, ING.shulker_shell],
	[ING.air, ING.shulker_shell, ING.air]]);

mods.recipestages.Recipes.addShaped("hard_mode", "minecraft_minecraft_fire_charge_hard", <item:minecraft:fire_charge> * 2,
	[[ING.emberstone_ingot, ING.blaze_powder, ING.blaze_powder],
	[ING.coal, ING.gunpowder, ING.air],
	[ING.coal, ING.air, ING.air]]);