/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var air = ING.air;

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_chest_hard_", <item:minecraft:chest>,
	[[ING.logs, ING.logs, ING.logs],
	[ING.logs, ING.iron_ingot, ING.logs],
	[ING.logs, ING.logs, ING.logs]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_furnace_hard_", <item:minecraft:furnace>,
	[[ING.cobblestone, ING.cobblestone, ING.cobblestone],
	[ING.cobblestone, ING.cyclops_eye_shards, ING.cobblestone],
	[ING.cobblestone, ING.cobblestone, ING.cobblestone]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_blast_furnace_hard_", <item:minecraft:blast_furnace>,
	[[ING.iron_block, ING.cyclops_eye_shards, ING.iron_block],
	[ING.iron_block, ING.furnace, ING.iron_block],
	[ING.obsidian, ING.obsidian, ING.obsidian]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_enchanting_table_hard_", <item:minecraft:enchanting_table>,
	[[ING.rupee_block, ING.book, ING.rupee_block],
	[ING.hellstone_ingot, ING.altar_of_corruption, ING.hellstone_ingot],
	[ING.emberstone_ingot, ING.emberstone_ingot, ING.emberstone_ingot]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_minecraft_piston_hard_", <item:minecraft:piston>,
	[[ING.logs, ING.logs, ING.logs],
	[ING.cobblestone, ING.rupee_block, ING.cobblestone],
	[ING.limonite_ingot, ING.redstone, ING.limonite_ingot]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_minecraft_smoker_hard_", <item:minecraft:smoker>,
	[[ING.arlemite_ingot, ING.iron_ingot, ING.arlemite_ingot],
	[ING.scrap_metal, ING.furnace, ING.scrap_metal],
	[ING.arlemite_ingot, ING.iron_ingot, ING.arlemite_ingot]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_minecraft_ender_chest_hard_", <item:minecraft:ender_chest>,
	[[ING.obsidian, ING.baronyte_ingot, ING.obsidian],
	[ING.elecanium_ingot, ING.ender_eye, ING.elecanium_ingot],
	[ING.obsidian, ING.baronyte_ingot, ING.obsidian]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_minecraft_shulker_box_hard_", <item:minecraft:shulker_box>,
	[[ING.lunar_ingot, ING.shulker_shell, ING.lunar_ingot],
	[ING.shulker_shell, ING.shulker_heart, ING.shulker_shell],
	[ING.lunar_ingot, ING.shulker_shell, ING.lunar_ingot]]);

mods.recipestages.Recipes.addShaped("hard+_mode", "minecraft_minecraft_fire_charge_hard_", <item:minecraft:fire_charge>,
	[[ING.emberstone_ingot, ING.blaze_powder, ING.blaze_powder],
	[ING.coal, ING.gunpowder, ING.air],
	[ING.coal, ING.air, ING.power_core]]);