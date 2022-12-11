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
   "minecraft:smithing_table",
   "aoa3:shaped_craft_infusion_table",
   "betterendforge:smithing_table_from_terminite_ingot"
];

var recipesfurnace as IItemStack[] = [
    
];

var itemremove as IItemStack[] = [
    <item:advancedcombat:advanced_wood_sword>.mutable(),
    <item:advancedcombat:advanced_stone_sword>.mutable(),
    <item:advancedcombat:advanced_iron_sword>.mutable(),
    <item:advancedcombat:advanced_gold_sword>.mutable(),
    <item:advancedcombat:advanced_emerald_sword>.mutable(),
    <item:advancedcombat:advanced_diamond_sword>.mutable(),
    <item:advancedcombat:emerald_sword>.mutable(),
    <item:minecraft:iron_sword>,
    <item:minecraft:diamond_sword>,
    <item:minecraft:golden_sword>,
    <item:advancedcombat:nether_star_sword>.mutable(),
    <item:advancedcombat:advanced_nether_star_sword>.mutable()
];

var hide as IItemStack[] = [
    <item:advancedcombat:elite_punch_upgrade>.mutable(),
    <item:advancedcombat:punch_upgrade>.mutable(),
    <item:advancedcombat:elite_power_upgrade>.mutable(),
    <item:advancedcombat:power_upgrade>.mutable(),
    <item:advancedcombat:elite_fortune_upgrade>.mutable(),
    <item:advancedcombat:fortune_upgrade>.mutable(),
    <item:advancedcombat:elite_efficiency_upgrade>.mutable(),
    <item:advancedcombat:efficiency_upgrade>.mutable(),
    <item:advancedcombat:elite_frost_upgrade>.mutable(),
    <item:advancedcombat:sharpness_upgrade>.mutable(),
    <item:advancedcombat:elite_sharpness_upgrade>.mutable(),
    <item:advancedcombat:smite_upgrade>.mutable(),
    <item:advancedcombat:elite_smite_upgrade>.mutable(),
    <item:advancedcombat:bane_upgrade>.mutable(),
    <item:advancedcombat:elite_bane_upgrade>.mutable(),
    <item:advancedcombat:elite_knockback_upgrade>.mutable(),
    <item:advancedcombat:knockback_upgrade>.mutable(),
    <item:advancedcombat:fire_upgrade>.mutable(),
    <item:advancedcombat:fire_protection_upgrade>.mutable(),
    <item:advancedcombat:elite_fire_protection_upgrade>.mutable(),
    <item:advancedcombat:elite_protection_upgrade>.mutable(),
    <item:advancedcombat:protection_upgrade>.mutable(),
    <item:advancedcombat:elite_unbreaking_upgrade>.mutable(),
    <item:advancedcombat:unbreaking_upgrade>.mutable(),
    <item:advancedcombat:looting_upgrade>.mutable(),
    <item:advancedcombat:elite_looting_upgrade>.mutable(),
    <item:advancedcombat:elite_fire_upgrade>.mutable(),
    <item:advancedcombat:frost_upgrade>.mutable(),
    <item:advancedcombat:elite_thorns_upgrade>.mutable(),
    <item:advancedcombat:thorns_upgrade>.mutable(),
    <item:advancedcombat:elite_feather_falling_upgrade>.mutable(),
    <item:advancedcombat:feather_falling_upgrade>.mutable(),
    <item:advancedcombat:proj_protection_upgrade>.mutable(),
    <item:advancedcombat:elite_proj_protection_upgrade>.mutable(),
    <item:advancedcombat:elite_blast_protection_upgrade>.mutable(),
    <item:advancedcombat:blast_protection_upgrade>.mutable(),
    <item:advancedcombat:infinity_upgrade>.mutable(),
    <item:advancedcombat:lure_upgrade>.mutable(),
    <item:advancedcombat:mending_upgrade>.mutable(),
    <item:advancedcombat:elite_lots_upgrade>.mutable(),
    <item:advancedcombat:flame_upgrade>.mutable(),
    <item:advancedcombat:elite_lure_upgrade>.mutable(),
    <item:advancedcombat:respiration_upgrade>.mutable(),
    <item:advancedcombat:lots_upgrade>.mutable(),
    <item:advancedcombat:depth_upgrade>.mutable(),
    <item:advancedcombat:silk_upgrade>.mutable(),
    <item:advancedcombat:aqua_upgrade>.mutable()
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