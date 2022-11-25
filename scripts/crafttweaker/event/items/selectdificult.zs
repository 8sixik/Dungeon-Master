import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent;
import crafttweaker.api.event.entity.player.interact.MCPlayerInteractEvent;
import crafttweaker.api.util.Random;

public function selectdificult() as void {
    CTEventManager.register<crafttweaker.api.event.entity.player.interact.MCRightClickItemEvent>((event) => {
        var player = event.player;
        var world = player.world;
        var item = event.itemStack;
        var result = event.getItemStack();
        var inventory = player.getInventory();

        var playerX = player.getPosition().x;
        var playerZ = player.getPosition().z;



        if(result == IT.mode_1){
            player.addGameStage("easy_mode");
        }
        if(result == IT.mode_2){
            player.addGameStage("medium_mode");
        }
        if(result == IT.mode_3){
            player.addGameStage("hard_mode");
        }
        if(result == IT.mode_4){
            player.addGameStage("hard+_mode");
        }

        if(result == IT.dim_1){

        }
        if(result == IT.dim_2){

        }
        if(result == IT.dim_3){

        }
        if(result == IT.dim_4){

        }
        if(result == IT.dim_5){

        }
        if(result == IT.dim_6){

        }
        if(result == IT.dim_7){

        }
        if(result == IT.dim_8){

        }
        if(result == IT.dim_9){

        }
        if(result == IT.dim_10){

        }


        if(result == IT.random_dim){
            var ran = world.random.nextInt(1, 10);
            var stages as string[string] = {
                "1" : "nether",
                "2" : "nether+",
                "3" : "end",
                "4" : "end+",
                "5" : "abyss",
                "6" : "abyss+",
                "7" : "creeponia",
                "8" : "creeponia+",
                "9" : "precasia",
                "10" : "precasia+"
            };
            player.addGameStage(stages[ran]);
        }

    });
}