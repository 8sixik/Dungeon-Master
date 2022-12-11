/*
    Эти скрипты созданы и предназначены для использования в Затмении и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

public class IT {
    public static var iron as IItemStack = <item:minecraft:iron_ingot>;
    public static var mode_1 as IItemStack = <item:kubejs:easy>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Easy Mode\"" as string}});
    public static var mode_2 as IItemStack = <item:kubejs:medium>.withTag({RepairCost: 0 as int, Mode: 2 as int, display: {Name: "\"Medium Mode\"" as string}});
    public static var mode_3 as IItemStack = <item:kubejs:hard>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Hard Mode\"" as string}});
    public static var mode_4 as IItemStack = <item:kubejs:hard_>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Hard+ Mode\"" as string}});

    public static var dim_1 as IItemStack = <item:divinerpg:watching_eye>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §1The End\"" as string}});
    public static var dim_2 as IItemStack = <item:divinerpg:legendary_ender_eye>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §1The End+\"" as string}});
    public static var dim_3 as IItemStack = <item:minecraft:blaze_powder>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Nether\"" as string}});
    public static var dim_4 as IItemStack = <item:divinerpg:purple_blaze>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Nether+\"" as string}});
    public static var dim_5 as IItemStack = <item:aoa3:bloodstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Abyss\"" as string}});
    public static var dim_6 as IItemStack = <item:aoa3:abyss_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Abyss+\"" as string}});
    public static var dim_7 as IItemStack = <item:aoa3:jewelyte>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §2The Creeponia\"" as string}});
    public static var dim_8 as IItemStack = <item:aoa3:creeponia_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §2The Creeponia+\"" as string}});
    public static var dim_9 as IItemStack = <item:aoa3:chestbone_fragment>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §aThe Precasia\"" as string}});
    public static var dim_10 as IItemStack = <item:aoa3:precasia_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §aThe Precasia+\"" as string}});

    public static var random_dim as IItemStack = <item:divinerpg:quadrotic_lump>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth §kRandom\"" as string}});

    public static var en as IItemStack = <item:minecraft:heart_of_the_sea>.withTag({RepairCost: 0 as int, display: {Name: "\"English Language\"" as string}});
    public static var ru as IItemStack = <item:minecraft:heart_of_the_sea>.withTag({RepairCost: 0 as int, display: {Name: "\"Русский Язык\"" as string}});
}