import crafttweaker.api.events.CTEventManager;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.event.block.MCBlockBreakEvent;
import crafttweaker.api.util.BlockPos;


CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var stage = event.stage;
    var world = player.world;
    var name = player.getName();
    var inventory = player.getInventory();

    var nether_block_pos_air = [
        new BlockPos(50, 70, 1),
        new BlockPos(51, 70, 1),
        new BlockPos(52, 70, 1),
        new BlockPos(50, 70, 0),
        new BlockPos(51, 70, 0),
        new BlockPos(52, 70, 0),
        new BlockPos(50, 70, -1),
        new BlockPos(51, 70, -1),
        new BlockPos(52, 70, -1),
        new BlockPos(50, 71, 1),
        new BlockPos(51, 71, 1),
        new BlockPos(52, 71, 1),
        new BlockPos(50, 71, 0),
        new BlockPos(51, 71, 0),
        new BlockPos(52, 71, 0),
        new BlockPos(50, 71, -1),
        new BlockPos(51, 71, -1),
        new BlockPos(52, 71, -1),
        new BlockPos(50, 72, 1),
        new BlockPos(51, 72, 1),
        new BlockPos(52, 72, 1),
        new BlockPos(50, 72, 0),
        new BlockPos(51, 72, 0),
        new BlockPos(52, 72, 0),
        new BlockPos(50, 72, -1),
        new BlockPos(51, 72, -1),
        new BlockPos(52, 72, -1)
    ] as BlockPos[];

    var ender_block_pos_air = [
        new BlockPos(1000, 70, 1),
        new BlockPos(1001, 70, 1),
        new BlockPos(1002, 70, 1),
        new BlockPos(1000, 70, 0),
        new BlockPos(1001, 70, 0),
        new BlockPos(1002, 70, 0),
        new BlockPos(1000, 70, -1),
        new BlockPos(1001, 70, -1),
        new BlockPos(1002, 70, -1),
        new BlockPos(1000, 71, 1),
        new BlockPos(1001, 71, 1),
        new BlockPos(1002, 71, 1),
        new BlockPos(1000, 71, 0),
        new BlockPos(1001, 71, 0),
        new BlockPos(1002, 71, 0),
        new BlockPos(1000, 71, -1),
        new BlockPos(1001, 71, -1),
        new BlockPos(1002, 71, -1),
        new BlockPos(1000, 72, 1),
        new BlockPos(1001, 72, 1),
        new BlockPos(1002, 72, 1),
        new BlockPos(1000, 72, 0),
        new BlockPos(1001, 72, 0),
        new BlockPos(1002, 72, 0),
        new BlockPos(1000, 72, -1),
        new BlockPos(1001, 72, -1),
        new BlockPos(1002, 72, -1)
    ] as BlockPos[];

    var nether_block_pos_set = [
        new BlockPos(50, 69, 1),
        new BlockPos(51, 69, 1),
        new BlockPos(52, 69, 1),
        new BlockPos(50, 69, 0),
        new BlockPos(51, 69, 0),
        new BlockPos(52, 69, 0),
        new BlockPos(50, 69, -1),
        new BlockPos(51, 69, -1),
        new BlockPos(52, 69, -1)
    ] as BlockPos[];

    var ender_block_pos_set = [
        new BlockPos(1000, 69, 1),
        new BlockPos(1001, 69, 1),
        new BlockPos(1002, 69, 1),
        new BlockPos(1000, 69, 0),
        new BlockPos(1001, 69, 0),
        new BlockPos(1002, 69, 0),
        new BlockPos(1000, 69, -1),
        new BlockPos(1001, 69, -1),
        new BlockPos(1002, 69, -1)
    ] as BlockPos[];


    val items_1 = {
    	"1" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.2 as float, Inscription: player.name as string}),
    	"2" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.3 as float, Inscription: player.name as string}),
        "3" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.4 as float, Inscription: player.name as string}),
        "4" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.5 as float, Inscription: player.name as string}),
        "5" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.6 as float, Inscription: player.name as string}),
        "6" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.7 as float, Inscription: player.name as string}),
        "7" : <item:enigmaticlegacy:enigmatic_amulet>.withTag({AssignedColor: 0.1 as float, Inscription: player.name as string})
    } as IItemStack[string];

    var artefacts = {
       "1" : <item:artifacts:umbrella>.mutable(),
       "2" : <item:artifacts:cloud_in_a_bottle>.mutable(),
       "3" : <item:artifacts:night_vision_goggles>.mutable(),
       "4" : <item:artifacts:whoopee_cushion>.mutable(),
       "5" : <item:artifacts:flippers>.mutable(),
       "6" : <item:minecraft:totem_of_undying>.mutable(),
       "7" : <item:bountifulbaubles:sunglasses>.mutable(),
       "8" : <item:bountifulbaubles:vitamins>.mutable(),
       "9" : <item:bountifulbaubles:ring_overclocking>.mutable(),
       "10" : <item:bountifulbaubles:ring_free_action>.mutable(),
       "11" : <item:bountifulbaubles:bezoar>.mutable(),
       "12" : <item:bountifulbaubles:obsidian_skull>.mutable(),
       "13" : <item:bountifulbaubles:shield_cobalt>.withTag({HideFlags: 2 as int}).mutable(),
       "14" : <item:bountifulbaubles:shield_obsidian>.withTag({HideFlags: 2 as int}).mutable(),
       "15" : <item:artifacts:superstitious_hat>.mutable(),
       "16" : <item:artifacts:thorn_pendant>.mutable(),
       "17" : <item:artifacts:flame_pendant>.mutable(),
       "18" : <item:artifacts:shock_pendant>.mutable(),
       "19" : <item:artifacts:panic_necklace>.mutable(),
       "20" : <item:bountifulbaubles:broken_heart>.mutable(),
       "21" : <item:bountifulbaubles:amulet_sin_gluttony>.mutable(),
       "22" : <item:bountifulbaubles:horseshoe_balloon>.mutable(),
       "23" : <item:enigmaticlegacy:recall_potion>.mutable(),
       "24" : <item:artifacts:running_shoes>.mutable(),
       "25" : <item:artifacts:kitty_slippers>.mutable(),
       "26" : <item:artifacts:bunny_hoppers>.mutable(),
       "27" : <item:artifacts:aqua_dashers>.mutable(),
       "28" : <item:artifacts:golden_hook>.mutable(),
       "29" : <item:artifacts:pocket_piston>.mutable()
    } as IItemStack[string];

    var wing_1 = <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Крыльевый Талисман\"" as string}});
    var wing_2 = <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 2 as int, display: {Name: "\"Крыльевый Талисман Невинного\"" as string}});
    var wing_3 = <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Крыльевый Талисман Мужественного\"" as string}});
    var wing_4 = <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 4 as int, display: {Name: "\"Крыльевый Талисман Сумасшедшего\"" as string}});

    //------------------------------------------------------------------------------------------------------------------//

    var x = player.position.x;
    var y = player.position.y;
    var z = player.position.z;

    var num = world.random.nextInt(1,7);
    var num_1 = world.random.nextInt(1,29);
    var num_2 = world.random.nextInt(1,29);
    if (stage == "easy_mode") {
        println("playsoundfff");
        var easy_sounds = world.random.nextInt(1,4);
        if(easy_sounds == 1){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_easy_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(easy_sounds == 2){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_easy_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(easy_sounds == 3){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_easy_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(easy_sounds == 4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_easy_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        world.asServerWorld().server.executeCommand("gamerule keepInventory false", true);
        player.addGameStage("15_min");
        inventory.clear();
        player.sendMessage("Вы выбрали Easy Mode");
        player.sendMessage("Монстры не будут спавниться 15 минут");
        player.give(items_1[num]);
        player.give(wing_1);
        player.give(artefacts[num_1]);
        player.give(artefacts[num_2]);
        easy_tools();
    }
    if (stage == "medium_mode"){
        var medium_sounds = world.random.nextInt(1,4);
        if(medium_sounds == 1){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_medium_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(medium_sounds == 2){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_medium_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(medium_sounds == 3){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_medium_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(medium_sounds == 4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_medium_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        world.asServerWorld().server.executeCommand("gamerule keepInventory false", true);
        player.addGameStage("10_min");
        inventory.clear();
        player.sendMessage("Вы выбрали Medium Mode");
        player.sendMessage("Монстры не будут спавниться 10 минут");
        player.give(items_1[num]);
        player.give(wing_2);
        player.give(artefacts[num_1]);
    }
    if (stage == "hard_mode"){
        var hard_sounds = world.random.nextInt(1,4);
        if(hard_sounds == 1){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hard_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hard_sounds == 2){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hard_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hard_sounds == 3){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hard_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hard_sounds == 4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hard_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        world.asServerWorld().server.executeCommand("gamerule keepInventory false", true);
        world.asServerWorld().server.executeCommand("vdm activate Hardened ", true);
        world.asServerWorld().server.executeCommand("vdm deactivate fatigue ", true);
        player.addGameStage("5_min");
        inventory.clear();
        player.sendMessage("Вы выбрали Hard Mode");
        player.sendMessage("Монстры не будут спавниться 5 минут");
        player.give(items_1[num]);
        player.give(wing_3);
        hard_tools();
    }
    if (stage == "hard+_mode"){
        var hardd_sounds = world.random.nextInt(1,4);
        if(hardd_sounds == 1){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hardcore_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hardd_sounds == 2){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hardcore_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hardd_sounds == 3){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hardcore_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(hardd_sounds == 4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_hardcore_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        world.asServerWorld().server.executeCommand("difficulty hard", true);
        world.asServerWorld().server.executeCommand("vdm activate heroic", true);
        world.asServerWorld().server.executeCommand("vdm deactivate fatigue", true);
        world.asServerWorld().server.executeCommand("vdm deactivate karmicjustice", true);
        world.asServerWorld().server.executeCommand("vdm deactivate vegetarian", true);
        world.asServerWorld().server.executeCommand("gamerule keepInventory false", true);
        inventory.clear();
        player.sendMessage("Вы выбрали Hard+ Mode");
        player.sendMessage("§4Монстры жаждут вашей крови !");
        player.give(items_1[num]);
        player.give(wing_4);
        player.give(<item:enigmaticlegacy:cursed_ring>);
        hard_tools();
    }
    if (stage == "dificult_easy"){
        world.asServerWorld().server.executeCommand("difficulty easy", true);
        player.sendMessage("онстры лениво вылазят на охоту");
        player.removeGameStage("dificult_easy");
        player.removeGameStage("15_min");
    }
    if (stage == "dificult_medium"){
        world.asServerWorld().server.executeCommand("difficulty normal", true);
        player.sendMessage("Монстры вылазят из пещер на охоту");
        player.removeGameStage("dificult_medium");
        player.removeGameStage("10_min");
    }
    if (stage == "dificult_hard"){
        world.asServerWorld().server.executeCommand("difficulty hard", true);
        player.sendMessage("Монстры вышли на охоту");
        player.removeGameStage("dificult_hard");
        player.removeGameStage("5_min");
    }

    //------------------------------------------------------------------------------------------------------------------//

    if (stage == "nether"){
        world.asServerWorld().server.executeCommand("execute in minecraft:the_nether run teleport " + name + " 51 70 0", true);
        var nether = world.asServerWorld().server.getWorld(<resource:minecraft:the_nether>);
        for blocks in nether_block_pos_set {
            nether.setBlockState(blocks, <blockstate:minecraft:bedrock>);
        }
        for blocks in nether_block_pos_air {
            nether.destroyBlock(blocks, false);
        }
        player.sendMessage("Вы выбрали §4Nether");
        if(player.world.dimension == "minecraft:the_nether"){
            player.sendStatusMessage("Пожалуйса поставте spawnpoint, а то может не поставиться точка возрождения", false);
            player.sendStatusMessage("В будующем постараюсь исправить", false);
        }
        player.removeGameStage("nether+");
        player.removeGameStage("end");
        player.removeGameStage("end+");
    }
    if (stage == "nether+"){
        world.asServerWorld().server.executeCommand("execute in minecraft:the_nether run teleport " + name + " 51 70 0", true);
        var nether_ = world.asServerWorld().server.getWorld(<resource:minecraft:the_nether>);
        for blocks in nether_block_pos_set {
            nether_.setBlockState(blocks, <blockstate:minecraft:bedrock>);
        }
        for blocks in nether_block_pos_air {
            nether_.destroyBlock(blocks, false);
        }
        player.sendMessage("Вы выбрали §4Nether+");
        if(player.world.dimension == "minecraft:the_nether"){
            player.sendStatusMessage("Пожалуйса поставте spawnpoint, а то может не поставиться точка возрождения", false);
            player.sendStatusMessage("В будующем постараюсь исправить", false);
        }
        player.removeGameStage("nether");
        player.removeGameStage("end");
        player.removeGameStage("end+");
    }
    if (stage == "end"){
        world.asServerWorld().server.executeCommand("execute in minecraft:the_end run teleport " + name + " 1001 70 0", true);
        var nether_ = world.asServerWorld().server.getWorld(<resource:minecraft:the_end>);
        for blocks in ender_block_pos_set {
            nether_.setBlockState(blocks, <blockstate:minecraft:bedrock>);
        }
        for blocks in ender_block_pos_air {
            nether_.destroyBlock(blocks, false);
        }
        player.sendMessage("Вы выбрали §1End");
        if(player.world.dimension == "minecraft:the_end"){
            player.sendStatusMessage("Пожалуйса поставте spawnpoint, а то может не поставиться точка возрождения", false);
            player.sendStatusMessage("В будующем постараюсь исправить", false);
        }
        player.removeGameStage("nether");
        player.removeGameStage("nether+");
        player.removeGameStage("end+");
    }
    if (stage == "end+"){
        world.asServerWorld().server.executeCommand("execute in minecraft:the_end run teleport " + name + " 1001 70 0", true);
        var nether_ = world.asServerWorld().server.getWorld(<resource:minecraft:the_end>);
        for blocks in ender_block_pos_set {
            nether_.setBlockState(blocks, <blockstate:minecraft:bedrock>);
        }
        for blocks in ender_block_pos_air {
            nether_.destroyBlock(blocks, false);
        }
        player.sendMessage("Вы выбрали §1End+");
        if(player.world.dimension == "minecraft:the_end"){
            player.sendStatusMessage("Пожалуйса поставте spawnpoint, а то может не поставиться точка возрождения", false);
            player.sendStatusMessage("В будующем постараюсь исправить", false);
        }
        player.removeGameStage("nether");
        player.removeGameStage("nether+");
        player.removeGameStage("end");
    }

    if (stage == "abyss"){
        var test_1 = world.random.nextInt(1,6);
        var abyss = world.asServerWorld().server.getWorld(<resource:minecraft:the_end>);
        var abyss1 = world.asServerWorld().server.getWorld(<resource:minecraft:the_nether>);
        if(test_1 == 1){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_1 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_1 == 2){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_2 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_1 == 3){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_3 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_1 == 4){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_4 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_1 == 5){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_5 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_5 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_1 == 6){
            abyss.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_6 master " + name + " " + x + " " + " " + y + " " + z, true);
            abyss1.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_6 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
    }
    if (stage == "abyss+"){
        var test_2 = world.random.nextInt(1,6);
        if(test_2 == 1){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_1 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_2 == 2){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_2 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_2 == 3){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_3 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_2 == 4){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_4 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_2 == 5){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_5 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
        if(test_2 == 6){
            world.asServerWorld().server.executeCommand("playsound pickableorbs:anons_addition_6 master " + name + " " + x + " " + " " + y + " " + z, true);
        }
    }

});