import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;
import mods.gamestages.StageHelper;
import mods.gamestages.events.GameStageAdded;
import mods.gamestages.events.GameStageRemoved;

CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent>((event) => {
    var player = event.player;
    var world = player.getWorld();
    var item = event.itemStack;
    var result = event.getItemStack();
    var inventory = player.getInventory();
    var value = true;

    if(player.hasGameStage("easy_mode")){
        if(result == <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Крыльевый Талисман\"" as string}})){
            player.addGameStage("have_wings_1m");
            for i in 0 .. 8 {
                if(<item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 1 as int, display: {Name: "\"Крыльевый Талисман\"" as string}}).matches(inventory.getStackInSlot(i)) && (value)){
                    inventory.getStackInSlot(i).mutable().shrink(1);
                    return;
                }
            }
        }
    }


    if(player.hasGameStage("medium_mode")){
        if(result == <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 2 as int, display: {Name: "\"Крыльевый Талисман Невинного\"" as string}})){
            player.addGameStage("have_wings_1m");
            for i in 0 .. 8 {
                if(<item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 2 as int, display: {Name: "\"Крыльевый Талисман Невинного\"" as string}}).matches(inventory.getStackInSlot(i)) && (value)){
                    inventory.getStackInSlot(i).mutable().shrink(1);
                    return;
                }
            }
        }
    }

    if(player.hasGameStage("hard_mode")){
        if(result == <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Крыльевый Талисман Мужественного\"" as string}})){
            player.addGameStage("have_wings_1m");
            for i in 0 .. 8 {
                if(<item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 3 as int, display: {Name: "\"Крыльевый Талисман Мужественного\"" as string}}).matches(inventory.getStackInSlot(i)) && (value)){
                    inventory.getStackInSlot(i).mutable().shrink(1);
                    return;
                }
            }
        }
    }

    if(player.hasGameStage("hard+_mode")){
        if(result == <item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 4 as int, display: {Name: "\"Крыльевый Талисман Сумасшедшего\"" as string}})){
            player.addGameStage("have_wings_1m");
            for i in 0 .. 8 {
                if(<item:kubejs:fly_talisman>.withTag({RepairCost: 0 as int, Mode: 4 as int, display: {Name: "\"Крыльевый Талисман Сумасшедшего\"" as string}}).matches(inventory.getStackInSlot(i)) && (value)){
                    inventory.getStackInSlot(i).mutable().shrink(1);
                    return;
                }
            }
        }
    }
    if(result == <item:kubejs:shield_1>){
        world.asServerWorld().server.executeCommand("gamerule keepInventory true", true);
        for i in 0 .. 8 {
            if(<item:kubejs:shield_1>.matches(inventory.getStackInSlot(i)) && (value)){
                inventory.getStackInSlot(i).mutable().shrink(1);
                return;
            }
        }
    }
});

CTEventManager.register<GameStageAdded>((event) => {
    var player = event.player;
    var world = player.getWorld();

    if(player.hasGameStage("easy_mode")){
        if (event.stage == "have_wings_1m") {

            world.asServerWorld().server.executeCommand("wings give " + player.getName() + " " + "wings:none", true);
            world.asServerWorld().server.executeCommand("effect give " + player.getName() + " wings:wings " + 60 + "1", true);
        }
    }
    if(player.hasGameStage("medium_mode")){
        if (event.stage == "have_wings_1m") {

            world.asServerWorld().server.executeCommand("wings give " + player.getName() + " " + "wings:angel_wings", true);
            world.asServerWorld().server.executeCommand("effect give " + player.getName() + " wings:wings " + 60 + "1", true);
        }
    }
    if(player.hasGameStage("hard_mode")){
        if (event.stage == "have_wings_1m") {

            world.asServerWorld().server.executeCommand("wings give " + player.getName() + " " + "wings:dragon_wings", true);
            world.asServerWorld().server.executeCommand("effect give " + player.getName() + " wings:wings " + 60 + "1", true);
        }
    }
    if(player.hasGameStage("hard+_mode")){
        if (event.stage == "have_wings_1m") {

            world.asServerWorld().server.executeCommand("wings give " + player.getName() + " " + "wings:evil_wings", true);
            world.asServerWorld().server.executeCommand("effect give " + player.getName() + " wings:wings " + 60 + "1", true);
        }
    }

});

CTEventManager.register<GameStageRemoved>((event) => {
    var player = event.player;
    var world = player.getWorld();
    var effect1 = <effect:minecraft:slow_falling>.newInstance(500, 1);

    if (event.stage == "have_wings_1m") {
        world.asServerWorld().server.executeCommand("wings take " + player.getName() + " " + "wings:none", true);
        world.asServerWorld().server.executeCommand("wings take " + player.getName() + " " + "wings:angel_wings", true);
        world.asServerWorld().server.executeCommand("wings take " + player.getName() + " " + "wings:dragon_wings", true);
        world.asServerWorld().server.executeCommand("wings take " + player.getName() + " " + "wings:evil_wings", true);
        player.addPotionEffect(effect1);
    }
});
