import crafttweaker.api.event.entity.living.MCLivingDeathEvent;
import crafttweaker.api.event.MCEvent;
import crafttweaker.api.events.CTEventManager;
import mods.gamestages.StageHelper;


CTEventManager.register<crafttweaker.api.event.entity.living.MCLivingDeathEvent>((event) => {
    var entity = event.entity;
    var world = entity.world;

    var dead = event.getEntity();

    var name = dead.getType().getRegistryName();

    /*
    if(!world.isRemote()){
        if(name.toString() == "aoa3:smash"){
            world.asServerWorld().server.executeCommand("Хранитель повежен !", true);
        }
    }
    */

});

StageHelper.grantStageOnKill(<entitytype:aoa3:smash>, "smash_dead");
StageHelper.grantStageOnKill(<entitytype:aoa3:corallus>, "corallus_dead");
StageHelper.grantStageOnKill(<entitytype:divinerpg:ancient_entity>, "ancient_dead");
StageHelper.grantStageOnKill(<entitytype:divinerpg:king_of_scorchers>, "king_of_scorchers_dead");

//<entityType:aoa3:smash>