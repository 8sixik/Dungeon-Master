import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;


CTEventManager.register<crafttweaker.api.event.entity.player.MCPlayerRespawnEvent>((event) => {
    var player = event.player;

});