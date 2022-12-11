import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.event.entity.player.MCPlayerEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.server.MCServer;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.world.MCServerWorld;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

/*
    Эти скрипты созданы и предназначены для использования в Select Mode и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

public function playerin_1() as void {

    var end_1 = <item:divinerpg:watching_eye>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §1The End\"" as string}});
    var end_2 = <item:divinerpg:legendary_ender_eye>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §1The End+\"" as string}});
    var nether_1 = <item:minecraft:blaze_powder>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Nether\"" as string}});
    var nether_2 = <item:divinerpg:purple_blaze>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Nether+\"" as string}});
    var abyss_1 = <item:aoa3:bloodstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Abyss\"" as string}});
    var abyss_2 = <item:aoa3:abyss_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §4The Abyss+\"" as string}});
    var creeponia_1 = <item:aoa3:jewelyte>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §2The Creeponia\"" as string}});
    var creeponia_2 = <item:aoa3:creeponia_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §2The Creeponia+\"" as string}});
    var precasia_1 = <item:aoa3:chestbone_fragment>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §aThe Precasia\"" as string}});
    var precasia_2 = <item:aoa3:precasia_realmstone>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth in §aThe Precasia+\"" as string}});

    var test = <item:minecraft:potion>.withTag({CustomPotionEffects: [{Duration: 40 as int, Id: 25 as int}], CustomPotionColor: 6811134 as int, display: {Lore: ["[{\"text\":\"Wings (3:00)\",\"color\":\"blue\",\"italic\":false}]" as string], Name: "[{\"text\":\"Potion of Flight\",\"italic\":false}]" as string}});
    var test2 = <item:minecraft:potion>.withTag({CustomPotionEffects: [{Duration: 40 as int, Id: 25 as int}], CustomPotionColor: 6811134 as int, display: {Lore: ["[{\"text\":\"Wings (8:00)\",\"color\":\"blue\",\"italic\":false}]" as string], Name: "[{\"text\":\"Potion of Flight\",\"italic\":false}]" as string}});
    val wingPotion1Min = <item:minecraft:potion>.withTag({CustomPotionEffects: [{Duration: 10 as int, Id: 105 as int}], CustomPotionColor: 6811134 as int, display: {Lore: ["[{\"text\":\"Wings (1:00)\",\"color\":\"blue\",\"italic\":false}]" as string], Name: "[{\"text\":\"Potion of Flight\",\"italic\":false}]" as string}});


    var random_complication = <item:divinerpg:quadrotic_lump>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Rebirth §kRandom\"" as string}});

    var giveitems as IItemStack[] = [
        <item:kubejs:easy>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Easy Mode\"" as string}}),
        <item:kubejs:medium>.withTag({RepairCost: 0 as int, Mode: 2 as int, display: {Name: "\"Medium Mode\"" as string}}),
        <item:kubejs:hard>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Hard Mode\"" as string}}),
        <item:kubejs:hard_>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Hard+ Mode\"" as string}}),
        <item:minecraft:book>.withTag({Info: 1 as int, display: {Name: "\"Info §6Multiplayer\"" as string}})
    ];

    CTEventManager.register<crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent>((event) => {
        var player = event.player;
        var world = player.world;
        var name = player.getName();
        var inventory = player.getInventory();

        var stage_1 = player.hasGameStage("easy_mode");
        var stage_2 = player.hasGameStage("medium_mode");
        var stage_3 = player.hasGameStage("hard_mode");
        var stage_4 = player.hasGameStage("hard+_mode");

        if(!stage_1 && !stage_2 && !stage_3 && !stage_4) {
            player.clearGameStages();
            player.addGameStage("ru_info");
            world.asServerWorld().server.executeCommand("clear " + name, true);
            world.asServerWorld().server.executeCommand("gamerule keepInventory true", true);
            world.asServerWorld().server.executeCommand("difficulty peaceful", true);
            player.sendStatusMessage("                 Информация/Information", false);
            player.sendStatusMessage("Выберите сложность предметами в вашем инвентаре !", false);
            player.sendStatusMessage("Наведите на предметы в инвентаре для подробной информации", false);
            player.sendStatusMessage("§cУбедительная прозьба, если вы только зашли в мир, то перезайдите !", false);
            player.sendStatusMessage("---------------------------------------------", false);
            player.sendStatusMessage("Choose the difficulty with the items in your inventory !", false);
            player.sendStatusMessage("Hover over items in the inventory for more information", false);
            player.sendStatusMessage("§cPlease, if you have just joined the world, then logout and log in again!", false);
            world.asServerWorld().server.executeCommand("clear " + name, true);
            world.asServerWorld().server.executeCommand("vdm deactivate fatigue", true);
            world.asServerWorld().server.executeCommand("vdm deactivate karmicjustice", true);
            world.asServerWorld().server.executeCommand("vdm deactivate vegetarian", true);

            player.sendStatusMessage("DEBUG MESSAGE !", false);
            player.sendStatusMessage("Pack: " + Version.PACK_VERSION, false);
            for item in giveitems {
                inventory.addIItemStackToInventory(item);
            }
            inventory.add(16, end_1);
            inventory.add(17, end_2);
            inventory.add(9, nether_1);
            inventory.add(10, nether_2);
            inventory.add(18, abyss_1);
            inventory.add(19, abyss_2);
            inventory.add(27, creeponia_1);
            inventory.add(28, creeponia_2);
            inventory.add(11, precasia_1);
            inventory.add(12, precasia_2);
            inventory.add(13, random_complication);
        }
    });
}

