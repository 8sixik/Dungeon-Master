import crafttweaker.api.item.IItemStack;
import mods.gamestages.StageHelper;
import crafttweaker.api.player.MCPlayerEntity;
import mods.gamestages.events.GameStageAdded;
import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.entity.MCEntityType;
import crafttweaker.api.entity.MCEntity;
import crafttweaker.api.player.MCPlayerEntity;
import crafttweaker.api.server.MCServer;
import crafttweaker.api.event.entity.player.MCPlayerEvent;
import crafttweaker.api.event.entity.player.MCPlayerRespawnEvent;
import crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent;
import crafttweaker.api.inventory.IInventory;
import crafttweaker.api.inventory.PlayerInventory;

mods.timestages.Timers.addTimer("10001", "15_min" ,"dificult_easy" ,15 ,"minutes", true);
mods.timestages.Timers.addTimer("10002", "10_min" ,"dificult_medium" ,10 ,"minutes", true);
mods.timestages.Timers.addTimer("10003", "5_min" ,"dificult_hard" ,5 ,"minutes", true);

mods.timestages.Timers.removalTimer("10004", "have_wings_1m" ,1 ,"minutes");