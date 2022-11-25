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

    if(player.hasGameStage("debaf_on_event_1")){

    }

});

/*------------------------------------------------------------------------------------------------*/

// (Режим богов, события и т.д)
CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.world;
    var dim = world.dimension;
    var playerX = player.getPosition().x;
    var playerZ = player.getPosition().z;

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
        }
        if (event.stage == "giveitem") {
            var ranitem = world.random.nextInt(1, 24);
            player.give(VR.itemsGive[ranitem]);
            player.sendStatusMessage("Тебе повезло и ты получил " + VR.itemsGive[ranitem].registryName.getNamespace(), false);
            player.removeGameStage("giveitem");
        }
        if (event.stage == "chestspawn") {
            var ranX = playerX + world.random.nextInt(-80, 80);
            var ranZ = playerZ + world.random.nextInt(-80, 80);
            var ranY = world.random.nextInt(12, 50);
            world.asServerWorld().server.executeCommand("setblock " + ranX + " " + "ranY" + " " + ranZ + " minecraft:chest{LootTable:\"minecraft:chests/simple_dungeon\"}", true);
            player.sendStatusMessage("Тебе повезло и в мире пояаился сундук с лутом, по координатам X:" + ranX + " Y:" + ranZ + " Z:" + ranY, false);
            player.removeGameStage("chestspawn");
        }
    }
    else {
        if (event.stage == VR.blood_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_blood, true);
        }
        if (event.stage == VR.blue_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_blue, true);
        }
        if (event.stage == VR.harvest_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_harvest, true);
        }
        if (event.stage == VR.SuperBlood_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_super_blood, true);
        }
        if (event.stage == VR.SuperBlue_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_super_blue, true);
        }
        if (event.stage == VR.SuperHarvest_moon) {
            world.asServerWorld().server.executeCommand(VR.lunar_super_harvest, true);
        }
        if (event.stage == "izdev") {

        }
        if (event.stage == "giveitem") {
            var ranitem = world.random.nextInt(1, 24);
            player.give(VR.itemsGive[ranitem]);
            player.sendStatusMessage("Тебе повезло и ты получил " + VR.itemsGive[ranitem].registryName.getNamespace(), false);
            player.removeGameStage("giveitem");
        }
        if (event.stage == "chestspawn") {
            var ranX = playerX + world.random.nextInt(-80, 80);
            var ranZ = playerZ + world.random.nextInt(-80, 80);
            var ranY = world.random.nextInt(12, 50);
            world.asServerWorld().server.executeCommand("setblock " + ranX + " " + "ranY" + " " + ranZ + " minecraft:chest{LootTable:\"minecraft:chests/simple_dungeon\"}", true);
            player.sendStatusMessage("Тебе повезло и в мире пояаился сундук с лутом, по координатам X:" + ranX + " Y:" + ranZ + " Z:" + ranY, false);
            player.removeGameStage("chestspawn");
        }
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

        var R_GoodOrBadOrNot = world.random.nextInt(1, 9);

        var R_3_easy = world.random.nextInt(1, 3);
        var R_3_medium = world.random.nextInt(1, 6);
        var R_3_hard = world.random.nextInt(1, 6);

        // Блокатор (block_event)

        if(canEvent){
            //Good
            if(R_GoodOrBadOrNot == 1){
                var ranGood = world.random.nextInt(1, 3);

                if(ranGood == 1){
                    eventTypes.giveItems(player);
                }
                if(ranGood == 2){
                    eventTypes.spawnChest(player);
                }
                if(ranGood == 3) {
                    eventTypes.luneStage(player);
                }
                /*
                //Easy Event
                if(R_1 == 1){

                }
                //Medium Event
                if(R_1 == 2){

                }
                //Hard Event
                if(R_1 == 3){

                }
                */
            }
            else {
                println("События не будет");
            }

        }


    }
}

/*------------------------------------------------------------------------------------------------*/

//Выбирает случайное событие
public class eventTypes {
    private static var player as MCPlayerEntity;
    private static var world as MCWorld;

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

    //Выдача рандомного предмета
    public static giveItems(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

        player.addGameStage("giveitem");
    }

    //Спавнит сундук в рандомном месте
    public static spawnChest(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

        player.addGameStage("chestspawn");
    }

    //В проработке
    //Проклятие игрока
    public static cursePlayer(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

    }

    //Призыв Монстра
    public static entitySummon(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();

    }

    //Призыв Монстров
    public static entitySummons(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;
    }

    //В проработке
    //Спавн Данжа
    public static dungeonSpawn(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;
    }

    //Разрушение теретории
    public static blockDestroy(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;
    }

    //Издевательство над игроком
    public static bullyingPlayer(player as MCPlayerEntity) as void{
        var world = player.world;
        var name = player.getName();
        var x = player.position.x;
        var y = player.position.y;
        var z = player.position.z;

        player.addGameStage("izdev");
    }

}

/*------------------------------------------------------------------------------------------------*/

/*
Время 24000 тик --> Проверяет Какая сложность --> Выдаёт Этап --> 2x random --> True --> Событие --> Забрать этап
*/