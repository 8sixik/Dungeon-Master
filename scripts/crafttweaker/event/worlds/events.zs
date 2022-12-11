import crafttweaker.api.event.entity.living.MCLivingEntityUseItemFinishEvent;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.tick.MCWorldTickEvent;
import crafttweaker.api.event.entity.MCEntityJoinWorldEvent;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.block.MCBlockBreakEvent;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

/*
    ☑ Готово
    ✘ Не готово
*/

public class VR{
/*---------------------------------------------------------
                    Координаты Блоков
----------------------------------------------------------*/

/*---------------------------------------------------------
                    Выдаваемые предметы
----------------------------------------------------------*/
public static var itemsGive as IItemStack[string] = {
   "1" : <item:minecraft:iron_sword>.withTag({AttributeModifiers: [{Amount: 12.0 as double, Slot: "mainhand" as string, AttributeName: "generic.attack_damage" as string, Operation: 0 as int, UUID: [-533374016, 1169116438, -1301764398, -883251018], Name: "ResourceKey[minecraft:attribute / minecraft:generic.attack_damage]" as string}], display: {Name: "{\"text\":\"§8§lЗаточенный §rЖелезный меч\"}" as string}}).withDamage(154),
   "2" : <item:minecraft:wooden_pickaxe>.withTag({Enchantments: [{lvl: 5 as int, id: "minecraft:efficiency" as string}, {lvl: 3 as int, id: "apotheosis:life_mending" as string}]}),
   "3" : <item:minecraft:wooden_pickaxe>.withTag({Unbreakable: 1 as byte}),
   "4" : <item:minecraft:golden_chestplate>.withTag({AttributeModifiers: [{Amount: 8.0 as double, Slot: "chest" as string, AttributeName: "generic.armor" as string, Operation: 0 as int, UUID: [1645990383, 1604862265, -2129760729, 629834087], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor]" as string}, {Amount: 4.0 as double, Slot: "chest" as string, AttributeName: "apotheosis:current_hp_damage" as string, Operation: 0 as int, UUID: [-302191637, 1005932494, -1151574961, 486104381], Name: "ResourceKey[minecraft:attribute / apotheosis:current_hp_damage]" as string}]}),
   "5" : <item:minecraft:golden_leggings>.withTag({AttributeModifiers: [{Amount: 3.0 as double, Slot: "legs" as string, AttributeName: "generic.max_health" as string, Operation: 0 as int, UUID: [-176195690, -950776117, -1833447769, -197962661], Name: "ResourceKey[minecraft:attribute / minecraft:generic.max_health]" as string}, {Amount: 5.0 as double, Slot: "legs" as string, AttributeName: "generic.armor" as string, Operation: 0 as int, UUID: [1641952942, 174476454, -2140899123, 1103899064], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor]" as string}]}),
   "6" : <item:divinerpg:storm_sword>.withTag({AttributeModifiers: [{Amount: 8.0 as double, Slot: "mainhand" as string, AttributeName: "generic.attack_damage" as string, Operation: 0 as int, UUID: [-1941809947, 146165316, -1076758211, -1921230424], Name: "ResourceKey[minecraft:attribute / minecraft:generic.attack_damage]" as string}]}),
   "7" : <item:divinerpg:realmite_pickaxe>.withTag({Enchantments: [{lvl: 1 as int, id: "minecraft:fortune" as string}, {lvl: 1 as int, id: "apotheosis:depth_miner" as string}]}),
   "8" : <item:minecraft:iron_pickaxe>,
   "9" : <item:minecraft:wooden_sword>.withTag({AttributeModifiers: [{Amount: 11.0 as double, Slot: "mainhand" as string, AttributeName: "generic.attack_damage" as string, Operation: 0 as int, UUID: [-2000463140, -252425342, -1081676536, 2125060822], Name: "ResourceKey[minecraft:attribute / minecraft:generic.attack_damage]" as string}]}),
   "10" : <item:minecraft:golden_apple> * 4,
   "11" : <item:minecraft:diamond_helmet>.withTag({AttributeModifiers: [{Amount: 5.0 as double, Slot: "head" as string, AttributeName: "generic.armor" as string, Operation: 0 as int, UUID: [-787548436, -1382987305, -1833561962, 458780985], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor]" as string}, {Amount: 5.0 as double, Slot: "head" as string, AttributeName: "generic.armor_toughness" as string, Operation: 0 as int, UUID: [2103653345, 94456974, -1999170873, -1580165156], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor_toughness]" as string}, {Amount: 5.0 as double, Slot: "head" as string, AttributeName: "apotheosis:life_steal" as string, Operation: 0 as int, UUID: [538845757, 1284261236, -1715910483, 1300551629], Name: "ResourceKey[minecraft:attribute / apotheosis:life_steal]" as string}, {Amount: 5.0 as double, Slot: "head" as string, AttributeName: "apotheosis:current_hp_damage" as string, Operation: 0 as int, UUID: [-756241249, -1271906039, -1398856505, 1311778828], Name: "ResourceKey[minecraft:attribute / apotheosis:current_hp_damage]" as string}]}),
   "12" : <item:minecraft:diamond_boots>.withTag({AttributeModifiers: [{Amount: 5.0 as double, Slot: "feet" as string, AttributeName: "apotheosis:reflection" as string, Operation: 0 as int, UUID: [-855619302, -362788115, -1234159354, -1236742314], Name: "ResourceKey[minecraft:attribute / apotheosis:reflection]" as string}, {Amount: 5.0 as double, Slot: "feet" as string, AttributeName: "generic.armor" as string, Operation: 0 as int, UUID: [159399362, 240272400, -1296690073, -1971077175], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor]" as string}, {Amount: 1.0 as double, Slot: "feet" as string, AttributeName: "generic.luck" as string, Operation: 0 as int, UUID: [1830487413, -558677651, -1801495310, -1610251049], Name: "ResourceKey[minecraft:attribute / minecraft:generic.luck]" as string}, {Amount: 2.0 as double, Slot: "feet" as string, AttributeName: "generic.armor_toughness" as string, Operation: 0 as int, UUID: [288189156, -582072749, -2024666178, 638501074], Name: "ResourceKey[minecraft:attribute / minecraft:generic.armor_toughness]" as string}]}),
   "13" : <item:minecraft:shield>.withTag({HideFlags: 127 as int, Enchantments: [{lvl: 4 as int, id: "shieldmechanics:block_damage_enchant" as string}, {lvl: 3 as int, id: "minecraft:unbreaking" as string}, {lvl: 2 as int, id: "apotheosis:shield_bash" as string}]}),
   "14" : <item:minecraft:crossbow>.withTag({HideFlags: 127 as int, Enchantments: [{lvl: 2 as int, id: "minecraft:unbreaking" as string}, {lvl: 3 as int, id: "minecraft:quick_charge" as string}, {lvl: 1 as int, id: "minecraft:piercing" as string}, {lvl: 1 as int, id: "enigmaticlegacy:sharpshooter" as string}]}),
   "15" : <item:potionbundles:potion_bundle>.withTag({Uses: 2 as int, Potion: "minecraft:strong_regeneration" as string}),
   "16" : <item:potionbundles:potion_bundle>.withTag({Uses: 3 as int, Potion: "minecraft:fire_resistance" as string}),
   "17" : <item:aoa3:amethyst_sword>.withTag({AttributeModifiers: [{Amount: 10.0 as double, Slot: "mainhand" as string, AttributeName: "generic.attack_damage" as string, Operation: 0 as int, UUID: [435978780, 1635271786, -1461407088, -631674638], Name: "ResourceKey[minecraft:attribute / minecraft:generic.attack_damage]" as string}], display: {Name: "{\"text\":\"§8§lОстрый §rАметистовый Мечь\"}" as string}}),
   "18" : <item:minecraft:diamond> * 6,
   "19" : <item:minecraft:netherite_hoe>,
   "20" : <item:minecraft:iron_axe>,
   "21" : <item:minecraft:netherite_axe>,
   "22" : <item:infinite_dungeons:skeletal_key>.withTag({dungeon: {}}),
   "23" : <item:infinite_dungeons:nether_key>.withTag({dungeon: {}}),
   "24" : <item:infinite_dungeons:void_key>.withTag({dungeon: {}}),
   "25" : <item:minecraft:diamond_pickaxe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 4.0 as float, "apotheosis:reach_distance": 1.8981184 as float, "apotheosis:enchantability": 8.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "26" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:radius_mining": 1.0 as float, "apotheosis:reach_distance": 1.0391692 as float, "apotheosis:enchantability": 27.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "27" : <item:minecraft:shield>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:eldritch_block": 1.0 as float, "apotheosis:shield_speed": 0.19688652 as float, "apotheosis:spiked_shield": 0.66354406 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:spiked_shield\",\"with\":[{\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:eldritch_block\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "28" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.30098653 as float, "apotheosis:current_hp_damage": 0.21690601 as float, "apotheosis:overheal": 0.16707984 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"affix.apotheosis:current_hp_damage\",\"with\":[{\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}]}" as string}}).mutable(),
   "29" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:snipe_damage": 8.48886 as float, "apotheosis:draw_speed": 1.5 as float, "apotheosis:enchantability": 25.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "30" : <item:minecraft:diamond_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 3.0 as float, "apotheosis:reach_distance": 1.993374 as float, "apotheosis:omnitool": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_shovel\"}]}]}]}]}" as string}}).mutable(),
   "31" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.139632 as float, "apotheosis:max_health": 8.0 as float, "apotheosis:enchantability": 20.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}]}" as string}}).mutable(),
   "32" : <item:minecraft:diamond_leggings>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.0354643 as float, "apotheosis:max_health": 4.1340814 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_leggings\"}]}]}]}]}" as string}}).mutable(),
   "33" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 1.4638891 as float, "apotheosis:max_health": 2.8329177 as float, "apotheosis:armor_toughness": 1.8153281 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "34" : <item:minecraft:diamond_leggings>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 6.0 as float, "apotheosis:max_health": 2.7253947 as float, "apotheosis:enchantability": 10.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_leggings\"}]}]}]}]}" as string}}).mutable(),
   "35" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.17820293 as float, "apotheosis:fire_damage": 4.5137243 as float, "apotheosis:crit_chance": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:fire_damage\",\"with\":[{\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"affix.apotheosis:crit_chance\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "36" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 6.0 as float, "apotheosis:max_health": 4.723234 as float, "apotheosis:enchantability": 7.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "37" : <item:minecraft:diamond_chestplate>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 6.0 as float, "apotheosis:max_health": 1.4961052 as float, "apotheosis:armor_toughness": 1.1554677 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_chestplate\"}]}]}]}]}" as string}}).mutable(),
   "38" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 1.5041008 as float, "apotheosis:max_health": 2.7900245 as float, "apotheosis:armor_toughness": 2.2041812 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "39" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:radius_mining": 2.0 as float, "apotheosis:reach_distance": 1.910033 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "40" : <item:minecraft:diamond_sword>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:attack_speed": 0.1035184 as float, "apotheosis:reach_distance": 1.5872302 as float, "apotheosis:enchantability": 20.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.diamond_sword\"}]}]}]}]}" as string}}).mutable(),
   "41" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:loot_pinata": 0.03 as float, "apotheosis:crit_damage": 0.38107923 as float, "apotheosis:reach_distance": 0.90380514 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:loot_pinata\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "42" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.3776178 as float, "apotheosis:max_health": 2.6232948 as float, "apotheosis:armor_toughness": 1.9686363 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "43" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.11329746 as float, "apotheosis:cleave": 7.9999 as float, "apotheosis:current_hp_damage": 0.07770614 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:cleave\",\"with\":[{\"translate\":\"affix.apotheosis:current_hp_damage\",\"with\":[{\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}]}" as string}}).mutable(),
   "44" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:crit_damage": 1.5 as float, "apotheosis:overheal": 0.25267014 as float, "apotheosis:piercing": 1.0 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}]}" as string}}).mutable(),
   "45" : <item:minecraft:diamond_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 5.0 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_shovel\"}]}]}]}]}" as string}}).mutable(),
   "46" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 5.3410764 as float, "apotheosis:max_health": 4.0912333 as float, "apotheosis:armor_toughness": 3.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}]}" as string}}).mutable(),
   "47" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 1.183381 as float, "apotheosis:max_health": 6.3760285 as float, "apotheosis:armor_toughness": 1.6065583 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "48" : <item:minecraft:turtle_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 2.0007627 as float, "apotheosis:max_health": 4.68345 as float, "apotheosis:armor_toughness": 2.0568528 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.turtle_helmet\"}]}]}]}]}" as string}}).mutable(),
   "49" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:radius_mining": 1.0 as float, "apotheosis:reach_distance": 1.4197111 as float, "apotheosis:enchantability": 13.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "50" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:crit_damage": 1.5 as float, "apotheosis:cleave": 10.615482 as float, "apotheosis:current_hp_damage": 0.25 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:cleave\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:current_hp_damage\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}]}" as string}}).mutable(),
   "51" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:radius_mining": 1.0 as float, "apotheosis:reach_distance": 1.9780031 as float, "apotheosis:enchantability": 19.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "52" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:cleave": 10.584617 as float, "apotheosis:execute": 0.076325506 as float, "apotheosis:overheal": 0.2429516 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:cleave\",\"with\":[{\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}]}" as string}}).mutable(),
   "53" : <item:minecraft:shield>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:shield_damage": 4.0 as float, "apotheosis:shield_speed": 0.23398888 as float, "apotheosis:enchantability": 30.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:shield_damage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "54" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.991169 as float, "apotheosis:max_health": 5.358202 as float, "apotheosis:armor_toughness": 2.0902824 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}]}" as string}}).mutable(),
   "55" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 6.0 as float, "apotheosis:armor_toughness": 1.4484346 as float, "apotheosis:enchantability": 22.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "56" : <item:minecraft:diamond_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:reach_distance": 0.86614376 as float, "apotheosis:omnitool": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_shovel\"}]}]}]}]}" as string}}).mutable(),
   "57" : <item:minecraft:diamond_shovel>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:radius_mining": 2.0 as float, "apotheosis:enchantability": 5.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_shovel\"}]}]}]}]}" as string}}).mutable(),
   "58" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 1.2844648 as float, "apotheosis:max_health": 3.4805522 as float, "apotheosis:armor_toughness": 1.5770255 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "59" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.2874534 as float, "apotheosis:armor_toughness": 1.4548333 as float, "apotheosis:enchantability": 8.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "60" : <item:minecraft:diamond_sword>.withTag({"apoth.rarity": "ANCIENT" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:cold_damage": 6.14619 as float, "apotheosis:damage_chain": 5.173629 as float, "apotheosis:attack_speed": 1.1345145 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"rainbow\",\"translate\":\"rarity.apoth.ancient\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"rainbow\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"affix.apotheosis:damage_chain\",\"with\":[{\"translate\":\"item.minecraft.diamond_sword\"}]}]}]}]}" as string}}).mutable(),
   "61" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 4.229888 as float, "apotheosis:max_health": 6.830147 as float, "apotheosis:enchantability": 5.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "62" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:max_health": 1.4321785 as float, "apotheosis:armor_toughness": 1.02005 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}]}" as string}}).mutable(),
   "63" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 5.01816 as float, "apotheosis:max_health": 4.1715546 as float, "apotheosis:armor_toughness": 0.7245506 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "64" : <item:minecraft:diamond_pickaxe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:torch_placement": 2.0 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 18.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "65" : <item:minecraft:diamond_sword>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:cold_damage": 5.005988 as float, "apotheosis:attack_speed": 0.19427305 as float, "apotheosis:fire_damage": 4.0527515 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:fire_damage\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.diamond_sword\"}]}]}]}]}" as string}}).mutable(),
   "66" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 1.5467663 as float, "apotheosis:armor_toughness": 1.1199249 as float, "apotheosis:enchantability": 19.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}]}]}" as string}}).mutable(),
   "67" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:draw_speed": 1.1 as float, "apotheosis:movement_speed": 0.72823924 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "68" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:radius_mining": 2.0 as float, "apotheosis:reach_distance": 1.4052516 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "69" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:draw_speed": 1.25 as float, "apotheosis:spectral_shot": 0.82681966 as float, "apotheosis:snare_hit": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "70" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:max_health": 5.02594 as float, "apotheosis:armor_toughness": 0.6253766 as float, "apotheosis:enchantability": 13.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "71" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:teleport_drops": 7.0 as float, "apotheosis:snipe_damage": 8.249644 as float, "apotheosis:snare_hit": 3.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "72" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:cleave": 2.4236503 as float, "apotheosis:current_hp_damage": 0.17261311 as float, "apotheosis:piercing": 1.0 as float, "apotheosis:enchantability": 10.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:cleave\",\"with\":[{\"translate\":\"affix.apotheosis:current_hp_damage\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}]}" as string}}).mutable(),
   "73" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:crit_damage": 0.74633145 as float, "apotheosis:max_crit": 1.0 as float, "apotheosis:overheal": 0.1966249 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_crit\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}]}" as string}}).mutable(),
   "74" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:torch_placement": 3.0 as float, "apotheosis:reach_distance": 0.83002925 as float, "apotheosis:enchantability": 8.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "75" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:radius_mining": 2.0 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 27.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "76" : <item:minecraft:shield>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:shield_speed": 0.25647336 as float, "apotheosis:arrow_catcher": 2.0 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:arrow_catcher\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "77" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 3.930078 as float, "apotheosis:armor_toughness": 1.215943 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "78" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 1.964218 as float, "apotheosis:max_health": 2.6097345 as float, "apotheosis:armor_toughness": 1.9807967 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "79" : <item:minecraft:shield>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:eldritch_block": 1.0 as float, "apotheosis:disengage": 1.0 as float, "apotheosis:shield_speed": 0.21834399 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:disengage\",\"with\":[{\"translate\":\"affix.apotheosis:eldritch_block\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "80" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 2.4428306 as float, "apotheosis:max_health": 2.1406522 as float, "apotheosis:armor_toughness": 1.3213761 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "81" : <item:minecraft:netherite_pickaxe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:radius_mining": 2.0 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.netherite_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "82" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:torch_placement": 4.0 as float, "apotheosis:reach_distance": 1.0522375 as float, "apotheosis:enchantability": 9.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "83" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 5.459371 as float, "apotheosis:armor_toughness": 1.0792854 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "84" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:radius_mining": 1.0 as float, "apotheosis:enchantability": 7.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "85" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:magic_arrow": 1.0 as float, "apotheosis:snipe_damage": 15.0 as float, "apotheosis:spectral_shot": 0.53452414 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"affix.apotheosis:magic_arrow\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "86" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:teleport_drops": 7.0 as float, "apotheosis:snipe_damage": 3.879023 as float, "apotheosis:snare_hit": 4.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "87" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:teleport_drops": 2.0 as float, "apotheosis:snipe_damage": 3.2186627 as float, "apotheosis:movement_speed": 0.48630884 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "88" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:snipe_damage": 9.784258 as float, "apotheosis:draw_speed": 0.1 as float, "apotheosis:spectral_shot": 0.7584402 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "89" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 1.6960295 as float, "apotheosis:max_health": 4.681821 as float, "apotheosis:armor_toughness": 1.2415612 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "90" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:magic_arrow": 1.0 as float, "apotheosis:draw_speed": 0.5 as float, "apotheosis:movement_speed": 0.31225714 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:magic_arrow\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "91" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:max_health": 3.3518667 as float, "apotheosis:armor_toughness": 0.90811753 as float, "apotheosis:enchantability": 28.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "92" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:radius_mining": 2.0 as float, "apotheosis:reach_distance": 0.59164095 as float, "apotheosis:enchantability": 30.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "93" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:cold_damage": 5.7267323 as float, "apotheosis:attack_speed": 1.028844 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "94" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 5.9504747 as float, "apotheosis:max_health": 3.4578617 as float, "apotheosis:armor_toughness": 1.2895564 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}]}" as string}}).mutable(),
   "95" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:armor": 1.7857256 as float, "apotheosis:max_health": 4.801754 as float, "apotheosis:armor_toughness": 1.0493835 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}]}" as string}}).mutable(),
   "96" : <item:minecraft:bow>.withTag({"apoth.rarity": "EPIC" as string, Affixes: {"apotheosis:teleport_drops": 3.0 as float, "apotheosis:snipe_damage": 4.181433 as float, "apotheosis:draw_speed": 0.1 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#BB00BB\",\"translate\":\"rarity.apoth.epic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#BB00BB\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "101" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 1.9721413 as float, "apotheosis:armor_toughness": 0.8227586 as float, "apotheosis:enchantability": 5.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "102" : <item:minecraft:bow>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:snipe_damage": 7.4155045 as float, "apotheosis:movement_speed": 0.65805227 as float, "apotheosis:snare_hit": 2.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "103" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:max_health": 4.7173038 as float, "apotheosis:armor_toughness": 2.1198254 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}]}" as string}}).mutable(),
   "104" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:max_health": 2.8852546 as float, "apotheosis:armor_toughness": 3.0 as float, "apotheosis:enchantability": 12.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "105" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:max_health": 2.1794937 as float, "apotheosis:armor_toughness": 1.7731262 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}]}" as string}}).mutable(),
   "106" : <item:minecraft:diamond_leggings>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:max_health": 1.3181376 as float, "apotheosis:armor_toughness": 1.3067515 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_leggings\"}]}]}]}]}" as string}}).mutable(),
   "107" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 2.0685663 as float, "apotheosis:max_health": 8.0 as float, "apotheosis:armor_toughness": 2.4652288 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}]}]}" as string}}).mutable(),
   "108" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 3.8345668 as float, "apotheosis:max_health": 3.9941206 as float, "apotheosis:enchantability": 14.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}]}" as string}}).mutable(),
   "109" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 2.0480812 as float, "apotheosis:max_health": 2.757983 as float, "apotheosis:enchantability": 14.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}]}" as string}}).mutable(),
   "110" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:reach_distance": 1.3474922 as float, "apotheosis:enchantability": 30.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "111" : <item:minecraft:shield>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:shield_damage": 4.0 as float, "apotheosis:shield_speed": 0.29902032 as float, "apotheosis:armor_toughness": 1.1161227 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:shield_damage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "112" : <item:minecraft:diamond_pickaxe>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 2.0 as float, "apotheosis:radius_mining": 2.0 as float, "apotheosis:reach_distance": 1.697412 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "113" : <item:minecraft:turtle_helmet>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 0.8542481 as float, "apotheosis:max_health": 7.2384686 as float, "apotheosis:enchantability": 26.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.turtle_helmet\"}]}]}]}]}" as string}}).mutable(),
   "114" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:draw_speed": 1.5 as float, "apotheosis:movement_speed": 0.8194307 as float, "apotheosis:snare_hit": 3.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "115" : <item:minecraft:bow>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:draw_speed": 1.2 as float, "apotheosis:movement_speed": 0.3122895 as float, "apotheosis:spectral_shot": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "116" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 3.0 as float, "apotheosis:radius_mining": 1.0 as float, "apotheosis:enchantability": 11.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}]}" as string}}).mutable(),
   "117" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.3567462 as float, "apotheosis:execute": 0.11338115 as float, "apotheosis:current_hp_damage": 0.19120109 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:current_hp_damage\",\"with\":[{\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}]}" as string}}).mutable(),
   "118" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 2.7184033 as float, "apotheosis:max_health": 8.0 as float, "apotheosis:armor_toughness": 2.197256 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "119" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:cold_damage": 3.763103 as float, "apotheosis:reach_distance": 1.6884583 as float, "apotheosis:crit_chance": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:crit_chance\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "120" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 2.7711134 as float, "apotheosis:max_health": 8.0 as float, "apotheosis:armor_toughness": 2.8349264 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "121" : <item:minecraft:shield>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:disengage": 1.0 as float, "apotheosis:shield_speed": 0.31222773 as float, "apotheosis:arrow_catcher": 2.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:arrow_catcher\",\"with\":[{\"translate\":\"affix.apotheosis:disengage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "122" : <item:minecraft:diamond_shovel>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:reach_distance": 1.3952994 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_shovel\"}]}]}]}]}" as string}}).mutable(),
   "123" : <item:minecraft:diamond_pickaxe>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:torch_placement": 5.0 as float, "apotheosis:omnitool": 1.0 as float, "apotheosis:enchantability": 20.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_pickaxe\"}]}]}]}]}" as string}}).mutable(),
   "124" : <item:minecraft:netherite_helmet>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 4.4656935 as float, "apotheosis:max_health": 1.256027 as float, "apotheosis:enchantability": 14.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.netherite_helmet\"}]}]}]}]}" as string}}).mutable(),
   "125" : <item:minecraft:shield>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:shield_damage": 3.078129 as float, "apotheosis:armor_toughness": 0.54723966 as float, "apotheosis:spiked_shield": 0.77496237 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:spiked_shield\",\"with\":[{\"translate\":\"affix.apotheosis:shield_damage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}]}" as string}}).mutable(),
   "126" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 4.932081 as float, "apotheosis:max_health": 2.8797789 as float, "apotheosis:enchantability": 18.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}]}" as string}}).mutable(),
   "127" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:armor": 0.76153505 as float, "apotheosis:max_health": 2.7534518 as float, "apotheosis:armor_toughness": 2.1031442 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}]}" as string}}).mutable(),
   "128" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:draw_speed": 1.0 as float, "apotheosis:movement_speed": 0.6010542 as float, "apotheosis:spectral_shot": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}]}" as string}}).mutable(),
   "129" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:reach_distance": 0.64570236 as float, "apotheosis:fire_damage": 8.847809 as float, "apotheosis:enchantability": 18.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:fire_damage\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "130" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.15145423 as float, "apotheosis:reach_distance": 1.5548546 as float, "apotheosis:enchantability": 17.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "131" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:loot_pinata": 0.012850449 as float, "apotheosis:attack_speed": 1.5 as float, "apotheosis:crit_damage": 0.6427905 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:loot_pinata\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "132" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:cold_damage": 9.516112 as float, "apotheosis:attack_speed": 0.8683598 as float, "apotheosis:crit_damage": 0.77243924 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "133" : <item:minecraft:netherite_helmet>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:max_health": 4.6551247 as float, "apotheosis:armor_toughness": 0.57396317 as float, "apotheosis:enchantability": 17.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.netherite_helmet\"}]}]}]}]}" as string}}).mutable(),
   "134" : <item:minecraft:bow>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:teleport_drops": 2.0 as float, "apotheosis:snipe_damage": 4.444787 as float, "apotheosis:spectral_shot": 0.2869806 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:spectral_shot\",\"with\":[{\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}]}" as string}}).mutable(),
   "135" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:life_steal": 0.31002158 as float, "apotheosis:crit_damage": 0.36605778 as float, "apotheosis:enchantability": 17.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}]}" as string}}).mutable(),
   "136" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "MYTHIC" as string, Unbreakable: 1 as byte, Affixes: {"apotheosis:crit_damage": 1.1565244 as float, "apotheosis:execute": 0.09271452 as float, "apotheosis:piercing": 1.0 as float, "apotheosis:enchantability": 7.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#ED7014\",\"translate\":\"rarity.apoth.mythic\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#ED7014\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}]}" as string}}).mutable(),
   "137" : <item:minecraft:turtle_helmet>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:armor_toughness": 1.4536859 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"item.minecraft.turtle_helmet\"}]}]}" as string}}).mutable(),
   "138" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:reach_distance": 1.9580358 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}" as string}}).mutable(),
   "139" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:enchantability": 17.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}" as string}}).mutable(),
   "140" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:execute": 0.08734 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}" as string}}).mutable(),
   "141" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:enchantability": 19.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}" as string}}).mutable(),
   "142" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:armor_toughness": 0.9417455 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}" as string}}).mutable(),
   "143" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:enchantability": 8.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}" as string}}).mutable(),
   "144" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:armor": 3.638311 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}" as string}}).mutable(),
   "145" : <item:minecraft:shield>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:armor_toughness": 1.8699368 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}" as string}}).mutable(),
   "146" : <item:minecraft:diamond_pickaxe>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:radius_mining": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"item.minecraft.diamond_pickaxe\"}]}]}" as string}}).mutable(),
   "147" : <item:minecraft:bow>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:movement_speed": 0.566169 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}" as string}}).mutable(),
   "148" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "UNCOMMON" as string, Affixes: {"apotheosis:max_health": 3.576007 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#33FF33\",\"translate\":\"rarity.apoth.uncommon\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#33FF33\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}" as string}}).mutable(),
   "149" : <item:minecraft:bow>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:draw_speed": 1.33 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:draw_speed\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}" as string}}).mutable(),
   "150" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:life_steal": 0.115517065 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:life_steal\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}" as string}}).mutable(),
   "151" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:execute": 0.033470653 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}" as string}}).mutable(),
   "152" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:max_health": 1.8012205 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}" as string}}).mutable(),
   "153" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:enchantability": 5.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}" as string}}).mutable(),
   "154" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:armor": 1.9766213 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}" as string}}).mutable(),
   "155" : <item:minecraft:shield>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:armor_toughness": 0.9887408 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}" as string}}).mutable(),
   "156" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:max_health": 1.1170056 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}" as string}}).mutable(),
   "157" : <item:minecraft:shield>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:disengage": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:disengage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}" as string}}).mutable(),
   "158" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:overheal": 0.10710876 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}" as string}}).mutable(),
   "159" : <item:minecraft:netherite_shovel>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:reach_distance": 0.79913765 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.netherite_shovel\"}]}]}" as string}}).mutable(),
   "160" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:piercing": 1.0 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}" as string}}).mutable(),
   "161" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:armor": 1.8921361 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}" as string}}).mutable(),
   "162" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:max_health": 2.4480462 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}" as string}}).mutable(),
   "163" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:max_health": 2.4255037 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}" as string}}).mutable(),
   "164" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "COMMON" as string, Affixes: {"apotheosis:enchantability": 8.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#808080\",\"translate\":\"rarity.apoth.common\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#808080\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}" as string}}).mutable(),
   "165" : <item:minecraft:diamond_chestplate>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:max_health": 1.6294985 as float, "apotheosis:enchantability": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_chestplate\"}]}]}]}" as string}}).mutable(),
   "166" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 1.2353035 as float, "apotheosis:armor": 3.3912914 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}" as string}}).mutable(),
   "167" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:cold_damage": 6.5020146 as float, "apotheosis:crit_damage": 0.6453363 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:cold_damage\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}" as string}}).mutable(),
   "168" : <item:minecraft:diamond_sword>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:reach_distance": 1.443546 as float, "apotheosis:enchantability": 16.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.diamond_sword\"}]}]}]}" as string}}).mutable(),
   "169" : <item:minecraft:netherite_sword>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:loot_pinata": 0.016093459 as float, "apotheosis:enchantability": 7.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:loot_pinata\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.netherite_sword\"}]}]}]}" as string}}).mutable(),
   "170" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:torch_placement": 3.0 as float, "apotheosis:enchantability": 9.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}" as string}}).mutable(),
   "171" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor": 3.9817352 as float, "apotheosis:enchantability": 7.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}" as string}}).mutable(),
   "172" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:torch_placement": 1.0 as float, "apotheosis:reach_distance": 1.8404273 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}" as string}}).mutable(),
   "173" : <item:minecraft:iron_chestplate>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:max_health": 4.3122897 as float, "apotheosis:enchantability": 12.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_chestplate\"}]}]}]}" as string}}).mutable(),
   "174" : <item:minecraft:diamond_axe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:overheal": 0.1387271 as float, "apotheosis:piercing": 1.0 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_axe\"}]}]}]}" as string}}).mutable(),
   "175" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:crit_damage": 1.1665385 as float, "apotheosis:execute": 0.083262 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}" as string}}).mutable(),
   "176" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:attack_speed": 0.78339 as float, "apotheosis:reach_distance": 1.1022243 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"affix.apotheosis:attack_speed\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}" as string}}).mutable(),
   "177" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:crit_damage": 0.8884467 as float, "apotheosis:cleave": 3.9998999 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:cleave\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}" as string}}).mutable(),
   "178" : <item:minecraft:iron_pickaxe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:torch_placement": 4.0 as float, "apotheosis:omnitool": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:torch_placement\",\"with\":[{\"translate\":\"item.minecraft.iron_pickaxe\"}]}]}]}" as string}}).mutable(),
   "179" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:snare_hit": 6.0 as float, "apotheosis:enchantability": 18.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}" as string}}).mutable(),
   "180" : <item:minecraft:netherite_axe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:execute": 0.09587704 as float, "apotheosis:overheal": 0.21908441 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:overheal\",\"with\":[{\"translate\":\"affix.apotheosis:execute\",\"with\":[{\"translate\":\"item.minecraft.netherite_axe\"}]}]}]}" as string}}).mutable(),
   "181" : <item:minecraft:shield>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:disengage": 1.0 as float, "apotheosis:spiked_shield": 0.657356 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:spiked_shield\",\"with\":[{\"translate\":\"affix.apotheosis:disengage\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}" as string}}).mutable(),
   "182" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor": 3.666127 as float, "apotheosis:max_health": 3.0370862 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}" as string}}).mutable(),
   "183" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:radius_mining": 2.0 as float, "apotheosis:reach_distance": 0.5158355 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:radius_mining\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}" as string}}).mutable(),
   "184" : <item:minecraft:iron_sword>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:fire_damage": 5.9361687 as float, "apotheosis:enchantability": 14.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:fire_damage\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_sword\"}]}]}]}" as string}}).mutable(),
   "185" : <item:minecraft:iron_helmet>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 1.5319713 as float, "apotheosis:enchantability": 18.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_helmet\"}]}]}]}" as string}}).mutable(),
   "186" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 0.89916205 as float, "apotheosis:max_health": 1.6840289 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}" as string}}).mutable(),
   "187" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 1.8523926 as float, "apotheosis:armor": 0.7111161 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}" as string}}).mutable(),
   "188" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 1.8514819 as float, "apotheosis:enchantability": 9.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}" as string}}).mutable(),
   "189" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:movement_speed": 0.30623308 as float, "apotheosis:snare_hit": 6.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"affix.apotheosis:movement_speed\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}" as string}}).mutable(),
   "190" : <item:minecraft:diamond_chestplate>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 1.5737543 as float, "apotheosis:armor": 2.5713573 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_chestplate\"}]}]}]}" as string}}).mutable(),
   "191" : <item:minecraft:bow>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:teleport_drops": 2.0 as float, "apotheosis:enchantability": 15.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:teleport_drops\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.bow\"}]}]}]}" as string}}).mutable(),
   "192" : <item:minecraft:shield>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:shield_speed": 0.33925802 as float, "apotheosis:arrow_catcher": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:shield_speed\",\"with\":[{\"translate\":\"affix.apotheosis:arrow_catcher\",\"with\":[{\"translate\":\"item.minecraft.shield\"}]}]}]}" as string}}).mutable(),
   "193" : <item:minecraft:iron_axe>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:crit_damage": 0.7499638 as float, "apotheosis:max_crit": 1.0 as float, "apotheosis:piercing": 1.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_crit\",\"with\":[{\"translate\":\"affix.apotheosis:crit_damage\",\"with\":[{\"translate\":\"item.minecraft.iron_axe\"}]}]}]}" as string}}).mutable(),
   "194" : <item:minecraft:crossbow>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:snipe_damage": 8.857021 as float, "apotheosis:snare_hit": 2.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:snipe_damage\",\"with\":[{\"translate\":\"affix.apotheosis:snare_hit\",\"with\":[{\"translate\":\"item.minecraft.crossbow\"}]}]}]}" as string}}).mutable(),
   "195" : <item:minecraft:iron_shovel>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:omnitool": 1.0 as float, "apotheosis:reach_distance": 1.359916 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:omnitool\",\"with\":[{\"translate\":\"affix.apotheosis:reach_distance\",\"with\":[{\"translate\":\"item.minecraft.iron_shovel\"}]}]}]}" as string}}).mutable(),
   "196" : <item:minecraft:turtle_helmet>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor_toughness": 0.63167906 as float, "apotheosis:armor": 3.785066 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor_toughness\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.turtle_helmet\"}]}]}]}" as string}}).mutable(),
   "197" : <item:minecraft:diamond_helmet>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor": 3.4172955 as float, "apotheosis:max_health": 2.6102364 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"item.minecraft.diamond_helmet\"}]}]}]}" as string}}).mutable(),
   "198" : <item:minecraft:iron_leggings>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:max_health": 4.790837 as float, "apotheosis:enchantability": 12.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_leggings\"}]}]}]}" as string}}).mutable(),
   "199" : <item:minecraft:diamond_boots>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:max_health": 3.6090896 as float, "apotheosis:enchantability": 13.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:max_health\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.diamond_boots\"}]}]}]}" as string}}).mutable(),
   "200" : <item:minecraft:iron_boots>.withTag({"apoth.rarity": "RARE" as string, Affixes: {"apotheosis:armor": 0.8011113 as float, "apotheosis:enchantability": 17.0 as float}, display: {Lore: ["{\"italic\":true,\"color\":\"#5555FF\",\"translate\":\"rarity.apoth.rare\"}" as string], Name: "{\"translate\":\"%s\",\"with\":[{\"italic\":false,\"color\":\"#5555FF\",\"translate\":\"affix.apotheosis:armor\",\"with\":[{\"translate\":\"affix.apotheosis:enchantability\",\"with\":[{\"translate\":\"item.minecraft.iron_boots\"}]}]}]}" as string}}).mutable(),
   "201" : <item:bountifulbaubles:mixed_dragon_scale>.mutable(),
   "202" : <item:bountifulbaubles:ankh_charm>.mutable(),
   "203" : <item:bountifulbaubles:obsidian_skull>.mutable(),
   "204" : <item:bountifulbaubles:amulet_sin_gluttony>.mutable(),
   "205" : <item:bountifulbaubles:amulet_sin_empty>.mutable(),
   "206" : <item:bountifulbaubles:amulet_sin_pride>.mutable(),
   "207" : <item:bountifulbaubles:amulet_cross>.mutable(),
   "208" : <item:bountifulbaubles:phylactery_charm>.mutable(),
   "209" : <item:bountifulbaubles:amulet_sin_wrath>.mutable(),
   "210" : <item:endrem:black_eye>.withTag({Damage: 0 as int}).mutable(),
   "211" : <item:endrem:corrupted_eye>.withTag({Damage: 0 as int}).mutable(),
   "212" : <item:endrem:cold_eye>.withTag({Damage: 0 as int}).mutable(),
   "213" : <item:endrem:nether_eye>.withTag({Damage: 0 as int}).mutable(),
   "214" : <item:endrem:rogue_eye>.withTag({Damage: 0 as int}).mutable(),
   "215" : <item:endrem:old_eye>.withTag({Damage: 0 as int}).mutable(),
   "216" : <item:endrem:guardian_eye>.withTag({Damage: 0 as int}).mutable(),
   "217" : <item:endrem:wither_eye>.withTag({Damage: 0 as int}).mutable(),
   "218" : <item:endrem:magical_eye>.withTag({Damage: 0 as int}).mutable(),
   "219" : <item:endrem:witch_eye>.withTag({Damage: 0 as int}).mutable(),
   "220" : <item:endrem:end_crystal_eye>.withTag({Damage: 0 as int}).mutable(),
   "221" : <item:endrem:lost_eye>.withTag({Damage: 0 as int}).mutable(),
   "222" : <item:bountifulbaubles:broken_black_dragon_scale>.mutable(),
   "223" : <item:bountifulbaubles:ender_dragon_scale>.mutable(),
   "224" : <item:bountifulbaubles:bezoar>.mutable(),
   "225" : <item:bountifulbaubles:ring_free_action>.mutable(),
   "226" : <item:bountifulbaubles:shulker_heart>.mutable(),
   "227" : <item:bountifulbaubles:ring_overclocking>.mutable(),
   "228" : <item:bountifulbaubles:vitamins>.mutable(),
   "229" : <item:bountifulbaubles:apple>.mutable(),
   "230" : <item:bountifulbaubles:sunglasses>.mutable(),
   "231" : <item:bountifulbaubles:horseshoe_balloon>.mutable(),
   "232" : <item:bountifulbaubles:lucky_horseshoe>.mutable(),
   "233" : <item:bountifulbaubles:balloon>.mutable(),
   "234" : <item:bountifulbaubles:shield_ankh>.withTag({HideFlags: 2 as int}).mutable(),
   "235" : <item:bountifulbaubles:shield_obsidian>.withTag({HideFlags: 2 as int}).mutable(),
   "236" : <item:bountifulbaubles:shield_cobalt>.withTag({HideFlags: 2 as int}).mutable(),
   "237" : <item:artifacts:running_shoes>.mutable(),
   "238" : <item:artifacts:steadfast_spikes>.mutable(),
   "239" : <item:artifacts:whoopee_cushion>.mutable(),
   "240" : <item:artifacts:flippers>.mutable(),
   "241" : <item:kubejs:katana_v1>.mutable(),
   "242" : <item:apotheosis:potion_charm>.withTag({Potion: "apotheosis:strong_haste" as string}).mutable(),
   "243" : <item:apotheosis:potion_charm>.withTag({Potion: "apotheosis:strong_absorption" as string}).mutable(),
   "244" : <item:apotheosis:potion_charm>.withTag({Potion: "apotheosis:knowledge" as string}).mutable(),
   "245" : <item:apotheosis:potion_charm>.withTag({Potion: "minecraft:water_breathing" as string}).mutable(),
   "246" : <item:artifacts:panic_necklace>.mutable(),
   "247" : <item:bhc:blue_heart_canister>.mutable(),
   "248" : <item:bhc:green_heart_canister>.mutable(),
   "249" : <item:bhc:red_heart_canister>.mutable(),
   "250" : <item:bhc:yellow_heart_canister>.mutable(),
   "251" : <item:bhc:heart_amulet>.mutable(),
   "252" : <item:artifacts:eternal_steak>.mutable(),
   "253" : <item:artifacts:lucky_scarf>.mutable(),
   "254" : <item:artifacts:cross_necklace>.mutable(),
   "255" : <item:artifacts:universal_attractor>.mutable(),
   "256" : <item:artifacts:crystal_heart>.mutable(),
   "257" : <item:artifacts:antidote_vessel>.mutable(),
   "258" : <item:artifacts:obsidian_skull>.mutable(),
   "259" : <item:artifacts:cloud_in_a_bottle>.mutable(),
   "260" : <item:artifacts:charm_of_sinking>.mutable(),
   "261" : <item:artifacts:thorn_pendant>.mutable(),
   "262" : <item:artifacts:flame_pendant>.mutable(),
   "263" : <item:artifacts:shock_pendant>.mutable(),
   "264" : <item:artifacts:bunny_hoppers>.mutable(),
   "265" : <item:artifacts:kitty_slippers>.mutable(),
   "266" : <item:artifacts:golden_hook>.mutable(),
   "267" : <item:artifacts:vampiric_glove>.mutable(),
   "268" : <item:artifacts:fire_gauntlet>.mutable(),
   "269" : <item:artifacts:power_glove>.mutable(),
   "270" : <item:artifacts:feral_claws>.mutable(),
   "271" : <item:artifacts:digging_claws>.mutable(),
   "272" : <item:artifacts:helium_flamingo>.mutable()

};
/*---------------------------------------------------------
                        Атрибуты
----------------------------------------------------------*/

/*---------------------------------------------------------
                        Комманды
----------------------------------------------------------*/
public static var lunar_blood as string = "enhancedcelestials setLunarEvent enhancedcelestials-blood_moon" as string;
public static var lunar_blue as string = "enhancedcelestials setLunarEvent enhancedcelestials-blue_moon" as string;
public static var lunar_harvest as string = "enhancedcelestials setLunarEvent enhancedcelestials-harvest_moon" as string;
public static var lunar_super_blood as string = "enhancedcelestials setLunarEvent enhancedcelestials-super_blood_moon" as string;
public static var lunar_super_blue as string = "enhancedcelestials setLunarEvent enhancedcelestials-super_blue_moon" as string;
public static var lunar_super_harvest as string = "enhancedcelestials setLunarEvent enhancedcelestials-super_harvest_moon" as string;
/*---------------------------------------------------------
                        Звуки
----------------------------------------------------------*/

/*---------------------------------------------------------
                        Переменные
----------------------------------------------------------*/

/*---------------------------------------------------------
                         Этапы
----------------------------------------------------------*/
public static var easy as string = "easy_mode" as string;
public static var medium as string = "medium_mode" as string;
public static var hard as string = "hard_mode" as string;
public static var hard_ as string = "hard+_mode" as string;
/*---------------------------------------------------------
                         Ивенты
----------------------------------------------------------*/
public static var blood_moon as string = "blood_moon" as string;
public static var blue_moon as string = "blue_moon" as string;
public static var harvest_moon as string = "harvest_moon" as string;
public static var SuperBlood_moon as string = "super_blood_moon" as string;
public static var SuperBlue_moon as string = "super_blue_moon" as string;
public static var SuperHarvest_moon as string = "super_harvest_moon" as string;

/*---------------------------------------------------------
                     Ивенты Сложность
----------------------------------------------------------*/
public static var IVEasy as string = "iveasy" as string;
public static var IVMedium as string = "ivmedium" as string;
public static var IVGard as string = "ivhard" as string;
public static var IVNot as string = "ivnot" as string;
/*---------------------------------------------------------
                        Эффекты
----------------------------------------------------------*/
public static var effect1 = <effect:minecraft:weakness>.newInstance(50, 9);
public static var effect2 = <effect:minecraft:slowness>.newInstance(50, 9);
public static var effect3 = <effect:minecraft:blindness>.newInstance(50, 9);
}

/*------------------------------------------------------------------------------------------------*/

//Всё что с тиками (Эфекты время и т.д)
CTEventManager.register<crafttweaker.api.event.tick.MCPlayerTickEvent>((event) => {
    var player = event.player;
    var world = player.world;

    if(world.timeOfDay == 13500) {
        sobitie.selectMode(player);
        println("StartSWB");
    }
    if(world.timeOfDay == 1000) {
        player.removeGameStage("startEvent");
        player.removeGameStage("giveitem");
        player.removeGameStage("chestspawn");
        player.removeGameStage("summonMob");
        player.removeGameStage("summonMobs");
        player.removeGameStage("ordazombie");
        player.removeGameStage(VR.blood_moon);
        player.removeGameStage(VR.blue_moon);
        player.removeGameStage(VR.harvest_moon);
        player.removeGameStage(VR.SuperBlood_moon);
        player.removeGameStage(VR.SuperBlue_moon);
        player.removeGameStage(VR.SuperHarvest_moon);
        println("CanEvent");
    }
    if(world.timeOfDay == 1500) {

    }

    if(player.hasGameStage("debaf_on_event_1")){

    }

});

/*------------------------------------------------------------------------------------------------*/

//Инициализирует события для определённой сложности
public class sobitie {
    private static var player as MCPlayerEntity;
    private static var world as MCWorld;

    public static selectMode(player as MCPlayerEntity) as void {
        if(player.hasGameStage("easy_mode")){
            println("Easy mode События отключены");
        }
        if(player.hasGameStage("medium_mode")){
            println("Medium Mode События слабое");
            typeEvent.GoodOrBadOrNot(player);
        }
        if(player.hasGameStage("hard_mode")){
            println("Hard Mode События");
            typeEvent.GoodOrBadOrNot(player);
        }
        if(player.hasGameStage("hard+_mode")){
            println("Hard Mode+ События");
            typeEvent.GoodOrBadOrNot(player);
        }
    }
}

/*------------------------------------------------------------------------------------------------*/

//Таймер событий, отказался на не определённый срок
public class timer {
    private static var endTime as long = 0;
    private static var player as MCPlayerEntity;
    private static var world as MCWorld;

    public static giveWings(time as int, player as MCPlayerEntity) as void {
        world = player.getWorld();
        var startTime = world.gameTime;
        endTime = time*20 + startTime;
    }

    public static nullTimer() as void {
        endTime = 0;
    }
    public static getEndTime() as long {
        return endTime;
    }
    public static setEndTime(l as long) as void {
        endTime = l;
    }
}

/*------------------------------------------------------------------------------------------------*/

//Выбирает тип события
public class typeEvent {
    private static var player as MCPlayerEntity;
    private static var world as MCWorld;

    public static GoodOrBadOrNot(player as MCPlayerEntity) as void{
        var world = player.world;

        var canEvent = world.random.nextBoolean();
        var R_1 = world.random.nextInt(1, 3);
        var R_2 = world.random.nextInt(1, 9);

        var R_GoodOrBadOrNot = world.random.nextInt(1, 1);

        var R_3_easy = world.random.nextInt(1, 3);
        var R_3_medium = world.random.nextInt(1, 6);
        var R_3_hard = world.random.nextInt(1, 6);

        // Блокатор (block_event)

        //if(canEvent){
            //Good
            if!(player.hasGameStage("startEvent")){
                //if(R_GoodOrBadOrNot == 1){
                    var ranGood = world.random.nextInt(1, 6);

                    if(ranGood == 1){
                        eventTypes.giveItems(player);
                        player.addGameStage("startEvent");
                        println("1");
                    }
                    if(ranGood == 2){
                        eventTypes.spawnChest(player);
                        player.addGameStage("startEvent");
                        println("2");
                    }
                    if(ranGood == 3) {
                        eventTypes.luneStage(player);
                        player.addGameStage("startEvent");
                        println("3");
                    }
                    if(ranGood == 4) {
                        eventTypes.entitySummon(player);
                        player.addGameStage("startEvent");
                        println("4");
                    }
                    if(ranGood == 5) {
                        if(player.hasGameStage("hard+_mode")){
                            eventTypes.luneStage(player);
                            player.addGameStage("startEvent");
                        }
                        else{
                            player.addGameStage("startEvent");
                        }
                        println("5");
                    }
                    if(ranGood == 6) {
                        eventTypes.entitySummons(player);
                        player.addGameStage("startEvent");
                        println("6");
                    }
                //}
                println(canEvent);
            }
            println("DADA");
       //}



    }
}

/*------------------------------------------------------------------------------------------------*/

//Выбирает случайное событие
public class eventTypes {
    private static var player as MCPlayerEntity;
    private static var world as MCWorld;

    //☑
    //Событие луны
    public static luneStage(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;

        var i1 = 6;

        //Рандомайзер
        if(player.hasGameStage("medium_mode")){
            i1 = 3;
        } else {
            i1 = 6;
        }
        var inde = 0;
        inde = world.random.nextInt(1, i1);

        //Непосредственно выбор
        if(inde == 1){
            player.addGameStage(VR.blood_moon);
        }
        if(inde == 2){
            player.addGameStage(VR.blue_moon);
        }
        if(inde == 3){
            player.addGameStage(VR.harvest_moon);
        }
        if(inde == 4){
            player.addGameStage(VR.SuperBlood_moon);
        }
        if(inde == 5){
            player.addGameStage(VR.SuperBlue_moon);
        }
        if(inde == 6){
            player.addGameStage(VR.SuperHarvest_moon);
        }
    }

    //☑
    //Выдача рандомного предмета
    public static giveItems(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

        player.addGameStage("giveitem");
        println("dada");
    }

    //☑
    //Спавнит сундук в рандомном месте
    public static spawnChest(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

        player.addGameStage("chestspawn");
        println("dada");
    }

    //✘
    //В проработке
    //Проклятие игрока
    public static cursePlayer(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

    }

    //☑
    //Призыв Монстра
    public static entitySummon(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

        player.addGameStage("summonMob");
        println("dada");

    }

    //☑
    //Призыв Монстров
    public static entitySummons(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;

        player.addGameStage("summonMobs");
        println("dada");
    }

    //✘
    //В проработке
    //Спавн Данжа
    public static dungeonSpawn(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;
    }

    //✘
    //Разрушение теретории
    public static blockDestroy(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;
    }

    //✘
    //Издевательство над игроком
    public static bullyingPlayer(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;

        player.addGameStage("izdev");
    }

    //☑
    //Призыв орды
    public static ordaZombie(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;

        player.addGameStage("ordazombie");
        println("dada");
    }

}

/*------------------------------------------------------------------------------------------------*/

// (Режим богов, события и т.д)
CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.world;
    var dim = world.dimension;
    var name = player.getName();
    var playerX = player.getPosition().x;
    var playerZ = player.getPosition().z;
    var playerY = player.getPosition().y;
    var x = player.position.x;
    var y = player.position.y;
    var z = player.position.z;

    var ran = world.random.nextInt(1, 9);

    if(player.hasGameStage("hard_mode+")) {
        if (event.stage == VR.blood_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_blood, true);
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bloodmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage("startEvent");
            player.removeGameStage(VR.blood_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == VR.blue_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_blue, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bluemoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.blue_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == VR.harvest_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_harvest, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_harvestmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.harvest_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == VR.SuperBlood_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_super_blood, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bloodmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.SuperBlood_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == VR.SuperBlue_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_super_blue, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bluemoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.SuperBlue_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == VR.SuperHarvest_moon) {
            if(player.hasGameStage("smash_dead") || player.hasGameStage("corallus_dead") || player.hasGameStage("ancient_dead") || player.hasGameStage("king_of_scorchers_dead")) {
                if(dim == "minecraft:overworld"){
                    if(ran == 1){
                        player.addGameStage("debaf_on_event_1");
                    }
                    if(ran == 2){
                        player.addGameStage("debaf_on_event_2");
                    }
                    if(ran == 3){
                        player.addGameStage("debaf_on_event_3");
                    }
                    if(ran == 4){
                        player.addGameStage("debaf_on_event_4");
                    }
                    if(ran == 5){
                        player.addGameStage("debaf_on_event_5");
                    }
                    if(ran == 6){
                        player.addGameStage("debaf_on_event_6");
                    }
                    if(ran == 7){
                        player.addGameStage("debaf_on_event_7");
                    }
                    if(ran == 8){
                        player.addGameStage("debaf_on_event_8");
                    }
                    if(ran == 9){
                        player.addGameStage("debaf_on_event_9");
                    }
                }
            }
            world.asServerWorld().server.executeCommand(VR.lunar_super_harvest, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_harvestmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.SuperHarvest_moon);
            println("Событие луны HARD+");
        }
        if (event.stage == "summonMobs") {
            var mobX = playerX + world.random.nextInt(-30, 30);
            var mobZ = playerZ + world.random.nextInt(-30, 30);
            var mobY = playerY;
            var ranMobs = world.random.nextInt(2, 11);
            for k in 1 .. ranMobs {
                world.asServerWorld().server.executeCommand("summon minecraft:vex " + mobX + " " +  mobY + " " + mobZ, true);
            }
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_vex master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage("summonMobs");
            player.removeGameStage("startEvent");
            println("Призыв монстров HARD+");
        }
        if (event.stage == "summonMob") {
            var mobX = playerX + world.random.nextInt(-15, 15);
            var mobZ = playerZ + world.random.nextInt(-15, 15);
            var mobY = playerY;
            var ranMobs = world.random.nextInt(2, 7);
            for k in 1 .. ranMobs {
                world.asServerWorld().server.executeCommand("apothboss " + mobX + " " +  mobY + " " + mobZ, true);
            }
            player.removeGameStage("summonMob");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_undeadarmy master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage("startEvent");
            println("Призыв монстра HARD+");
        }
        if (event.stage == "ordazombie") {
            var ranHorde = world.random.nextInt(1, 24);
            var ranZombie = world.random.nextInt(10, 100);
            if(ranHorde = 1){
                world.asServerWorld().server.executeCommand("spawnHordeWave " + ranZombie, true);
            }
            player.removeGameStage("ordazombie");
            player.removeGameStage("startEvent");
            println("Призыв орды HARD+");
        }
        if (event.stage == "giveitem") {
            var ranitem = world.random.nextInt(1, 272);
            player.give(VR.itemsGive[ranitem]);
            player.sendStatusMessage("Тебе повезло и ты получил " + VR.itemsGive[ranitem].displayName, false);
            player.removeGameStage("giveitem");
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_gift master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Выдача предмета HARD+");
        }
        if (event.stage == "chestspawn") {
            var ranX = playerX + world.random.nextInt(-80, 80);
            var ranZ = playerZ + world.random.nextInt(-80, 80);
            var ranY = world.random.nextInt(12, 50);
            world.asServerWorld().server.executeCommand("setblock " + ranX + " " + ranY + " " + ranZ + " minecraft:chest{LootTable:\"minecraft:chests/simple_dungeon\"} replace", true);
            player.sendStatusMessage("Тебе повезло и в мире пояаился сундук с лутом, по координатам X:" + ranX + " Y:" + ranY + " Z:" + ranZ, false);
            player.removeGameStage("chestspawn");
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_chest master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Спавн сундука HARD+");
        }
    }
    else {
        if (event.stage == VR.blood_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_blood, true);
            player.removeGameStage("startEvent");
            player.removeGameStage(VR.blood_moon);
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bloodmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Событие луны");
        }
        if (event.stage == VR.blue_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_blue, true);
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_bluemoon master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage(VR.blue_moon);
            println("Событие луны");
        }
        if (event.stage == VR.harvest_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_harvest, true);
            player.removeGameStage("startEvent");
            player.removeGameStage(VR.harvest_moon);
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_harvestmoon master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Событие луны");
        }
        if (event.stage == "izdev") {

        }
        if (event.stage == "summonMobs") {
            var mobX = playerX + world.random.nextInt(-40, 40);
            var mobZ = playerZ + world.random.nextInt(-40, 40);
            var mobY = playerY;
            var ranMobs = world.random.nextInt(2, 11);
            for k in 1 .. ranMobs {
                world.asServerWorld().server.executeCommand("summon minecraft:vex " + mobX + " " +  mobY + " " + mobZ, true);
            }
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_vex master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage("summonMobs");
            player.removeGameStage("startEvent");
            println("Призыв монстров");
        }
        if (event.stage == "summonMob") {
            var mobX = playerX + world.random.nextInt(-15, 15);
            var mobZ = playerZ + world.random.nextInt(-15, 15);
            var mobY = playerY;
            var ranMobs = world.random.nextInt(2, 4);
            for k in 1 .. ranMobs {
                world.asServerWorld().server.executeCommand("apothboss " + mobX + " " +  mobY + " " + mobZ, true);
            }

            player.removeGameStage("summonMob");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_undeadarmy master " + name + " " + x + " " + " " + y + " " + z, true);
            player.removeGameStage("startEvent");
            println("Призыв монстра");
        }
        if (event.stage == "ordazombie") {
            var ranHorde = world.random.nextInt(1, 24);
            var ranZombie = world.random.nextInt(10, 100);
            if(ranHorde = 1){
                world.asServerWorld().server.executeCommand("spawnHordeWave " + ranZombie, true);
            }
            player.removeGameStage("ordazombie");
            player.removeGameStage("startEvent");
            println("Призыв орды");
        }
        if (event.stage == "giveitem") {
            var ranitem = world.random.nextInt(1, 272);
            player.give(VR.itemsGive[ranitem]);
            player.sendStatusMessage("Тебе повезло и ты получил " + VR.itemsGive[ranitem].registryName.getNamespace(), false);
            player.removeGameStage("giveitem");
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_gift master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Выдача предмета");
        }
        if (event.stage == "chestspawn") {
            var ranX = playerX + world.random.nextInt(-80, 80);
            var ranZ = playerZ + world.random.nextInt(-80, 80);
            var ranY = world.random.nextInt(12, 50);
            world.asServerWorld().server.executeCommand("setblock " + ranX + " " + ranY + " " + ranZ + " minecraft:chest{LootTable:\"minecraft:chests/simple_dungeon\"} replace", true);
            player.sendStatusMessage("Тебе повезло и в мире пояаился сундук с лутом, по координатам X:" + ranX + " Y:" + ranY + " Z:" + ranZ, false);
            player.removeGameStage("chestspawn");
            player.removeGameStage("startEvent");
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_chest master " + name + " " + x + " " + " " + y + " " + z, true);
            println("Спавн Сундука");
        }
    }
});

/*------------------------------------------------------------------------------------------------*/


//Убийство древних
CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.world;
    var dim = world.dimension;
    var name = player.getName();
    var playerX = player.getPosition().x;
    var playerZ = player.getPosition().z;
    var playerY = player.getPosition().y;
    var x = player.position.x;
    var y = player.position.y;
    var z = player.position.z;
    var mobX = playerX + world.random.nextInt(-40, 40);
    var mobZ = playerZ + world.random.nextInt(-40, 40);
    var mobY = playerY;

    var entit1 = event.stage == "smash_dead";
    var entit2 = event.stage == "corallus_dead";
    var entit3 = event.stage == "ancient_dead";
    var entit4 = event.stage == "king_of_scorchers_dead";

    var en1 = event.stage == "dead1";
    var en2 = event.stage == "dead2";
    var en3 = event.stage == "dead3";
    var en4 = event.stage == "dead4";

    if (entit1) && !(en1) {
        var ranMobs = world.random.nextInt(4, 11);
        //if(entit1) && !(entit2) && !(entit3) && !(entit4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_ensdeath2 master " + name + " " + x + " " + " " + y + " " + z, true);
        //}
        player.addGameStage("dead1");
        for k in 3 .. ranMobs {
            world.asServerWorld().server.executeCommand("summon minecraft:phantom " + mobX + " " +  mobY + " " + mobZ, true);
        }
    }
    if (entit2) && !(en2) {
        var ranMobs = world.random.nextInt(4, 6);
        var ranMobss = world.random.nextInt(3, 5);
        var mbY = mobY + 10;
        world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_ensdeath1 master " + name + " " + x + " " + " " + y + " " + z, true);
        player.addGameStage("dead2");
        for k in 3 .. ranMobs {
            world.asServerWorld().server.executeCommand("summon minecraft:ghast " + mobX + " " +  mbY + " " + mobZ, true);
        }
        for i in 2 .. ranMobss {
            world.asServerWorld().server.executeCommand("apothboss " + mobX + " " +  mbY + " " + mobZ, true);
        }
    }
    if (entit3) && !(en3) {
        var ranMobs = world.random.nextInt(6, 16);
        var ranMobss = world.random.nextInt(6, 8);
        world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_ensdeath3 master " + name + " " + x + " " + " " + y + " " + z, true);
        player.addGameStage("dead3");
        for k in 1 .. ranMobs {
            world.asServerWorld().server.executeCommand("summon minecraft:vex " + mobX + " " +  mobY + " " + mobZ, true);
        }
        for k in 1 .. ranMobss {
            world.asServerWorld().server.executeCommand("summon minecraft:pillager " + mobX + " " +  mobY + " " + mobZ, true);
        }
    }
    if (entit4) && !(en4) {
        var lightBolt = world.random.nextInt(4, 9);
        var ranMobs = world.random.nextInt(4, 11);
        var ranMobss = world.random.nextInt(7, 11);
        world.asServerWorld().server.executeCommand("playsound pickableorbs:blood_god_ensdeath4 master " + name + " " + x + " " + " " + y + " " + z, true);
        player.addGameStage("dead4");
        for k in 3 .. lightBolt {
            world.asServerWorld().server.executeCommand("summon minecraft:lightning_bolt " + x + " " +  y + " " + z, true);
        }
        for k in 3 .. ranMobs {
            world.asServerWorld().server.executeCommand("summon minecraft:vex " + mobX + " " +  mobY + " " + mobZ, true);
        }
        for k in 6 .. ranMobss {
            world.asServerWorld().server.executeCommand("summon minecraft:vex " + mobX + " " +  mobY + " " + mobZ, true);
        }
    }
});

/*
Время 24000 тик --> Проверяет Какая сложность --> Выдаёт Этап --> 2x random --> True --> Событие --> Забрать этап
*/