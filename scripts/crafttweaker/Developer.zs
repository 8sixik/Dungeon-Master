import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.event.entity.player.MCPlayerEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.server.MCServer;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.world.MCServerWorld;

public function developerinit() as void {
    CTEventManager.register<crafttweaker.api.event.tick.MCWorldTickEvent>((event) => {
     var world = event.world;
     if(world.nightTime) {
    	world.asServerWorld().server.executeCommand("time set day", true);
     }
     });
}
