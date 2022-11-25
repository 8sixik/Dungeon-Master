import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.event.entity.player.MCPlayerEvent;
import crafttweaker.api.entity.MCLivingEntity;
import crafttweaker.api.server.MCServer;
import crafttweaker.api.world.MCWorld;
import crafttweaker.api.world.MCServerWorld;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.event.tick.MCPlayerTickEvent;
import crafttweaker.api.potion.MCPotionEffectInstance;


/*
    Эти скрипты созданы и предназначены для использования в Select Mode и других
    модпаках, курируемых Saudade Studio. Вы можете использовать эти скрипты для ознакомления и
    обучения, но не для копирования и вставки и утверждения как своих собственных.
*/

public function tickevent_1() as void {

    CTEventManager.register<crafttweaker.api.event.tick.MCPlayerTickEvent>((event) => {
        var player = event.player;
        var world = player.world;
        var name = player.getName();

        var effect1 = <effect:minecraft:weakness>.newInstance(50, 9);
        var effect2 = <effect:minecraft:slowness>.newInstance(50, 9);
        var effect3 = <effect:minecraft:blindness>.newInstance(50, 9);

         var stage_1 = player.hasGameStage("easy_mode");
         var stage_2 = player.hasGameStage("medium_mode");
         var stage_3 = player.hasGameStage("hard_mode");
         var stage_4 = player.hasGameStage("hard+_mode");

         if(!stage_1 && !stage_2 && !stage_3 && !stage_4) {
            player.addPotionEffect(effect1);
            player.addPotionEffect(effect2);
            player.addPotionEffect(effect3);
         }
    });

}