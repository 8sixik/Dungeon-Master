import crafttweaker.api.event.MCAnvilUpdateEvent;
import crafttweaker.api.events.CTEventManager;

CTEventManager.register<crafttweaker.api.event.MCAnvilUpdateEvent>((event) => {
    var player = event.player; var world = player.getWorld(); var random = world.random;
    var item1 = event.left; var item2 = event.right; var out = event.output; var exp = event.levelCost;

    var ran = 0 as int;

    var randomInt1 = random.nextInt(3, 7);
    var randomInt2 = random.nextInt(3, 5);
    var randomInt3 = random.nextInt(2, 3);
    var randomInt4 = random.nextInt(1, 2);
    //Kyznec
    if (player.hasGameStage("kyznec_i")) { ran = randomInt2; }
    if (player.hasGameStage("kyznec_ii")) { ran = randomInt3; }
    if (player.hasGameStage("kyznec_iii")) { ran = randomInt4; }
    if !(player.hasGameStage("kyznec_i")) && !(player.hasGameStage("kyznec_ii")) && !(player.hasGameStage("kyznec_iii")) { ran = randomInt1; }

    //Iron Sword
    var ironIn1 = <item:minecraft:stone_sword>;
    var ironIn2 = <item:minecraft:iron_ingot>;
    var ironOut = <item:minecraft:iron_sword>;
    if ironIn1.matches(item1) && ironIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = ironOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = ironOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //StoneSwordUp Sword
    var stupIn1 = <item:minecraft:stone_sword>;
    var stupIn2 = <item:advancedcombat:advanced_stone>;
    var stupOut = <item:advancedcombat:advanced_stone_sword>;
    if stupIn1.matches(item1) && stupIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = stupOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = stupOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Realmite Sword
    var realm1In1 = <item:minecraft:iron_sword>;
    var realm1In2 = <item:divinerpg:realmite_ingot>;
    var realm1Out = <item:divinerpg:realmite_sword>;
    if realm1In1.matches(item1) && realm1In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = realm1Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = realm1Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Realmite Sword
    var realm2In1 = <item:advancedcombat:advanced_stone_sword>;
    var realm2In2 = <item:divinerpg:realmite_ingot>;
    var realm2Out = <item:divinerpg:realmite_sword>;
    if realm2In1.matches(item1) && realm2In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = realm2Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = realm2Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Gold Sword
    var gold1In1 = <item:minecraft:iron_sword>;
    var gold1In2 = <item:minecraft:gold_ingot>;
    var gold1Out = <item:minecraft:golden_sword>;
    if gold1In1.matches(item1) && gold1In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = gold1Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = gold1Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Gold Sword
    var gold2In1 = <item:advancedcombat:advanced_stone_sword>;
    var gold2In2 = <item:minecraft:gold_ingot>;
    var gold2Out = <item:minecraft:golden_sword>;
    if gold2In1.matches(item1) && gold2In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = gold2Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = gold2Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Diamond Sword
    var diam1In1 = <item:minecraft:iron_sword>;
    var diam1In2 = <item:minecraft:diamond>;
    var diam1Out = <item:minecraft:diamond_sword>;
    if diam1In1.matches(item1) && diam1In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = diam1Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = diam1Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Diamond Sword
    var diam2In1 = <item:advancedcombat:advanced_stone_sword>;
    var diam2In2 = <item:minecraft:diamond>;
    var diam2Out = <item:minecraft:diamond_sword>;
    if diam2In1.matches(item1) && diam2In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = diam2Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = diam2Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //IronUp Sword
    var ironup1In1 = <item:minecraft:iron_sword>;
    var ironup1In2 = <item:minecraft:iron_block>;
    var ironup1Out = <item:advancedcombat:advanced_iron_sword>;
    if ironup1In1.matches(item1) && ironup1In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = ironup1Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = ironup1Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //IronUp Sword
    var ironup2In1 = <item:advancedcombat:advanced_stone_sword>;
    var ironup2In2 = <item:minecraft:iron_block>;
    var ironup2Out = <item:advancedcombat:advanced_iron_sword>;
    if ironup2In1.matches(item1) && ironup2In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = ironup2Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = ironup2Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //GoldUp Sword
    var goldupIn1 = <item:minecraft:golden_sword>;
    var goldupIn2 = <item:minecraft:gold_block>;
    var goldupOut = <item:advancedcombat:advanced_gold_sword>;
    if goldupIn1.matches(item1) && goldupIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = goldupOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = goldupOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Limon Sword
    var limonIn1 = <item:divinerpg:realmite_sword>;
    var limonIn2 = <item:aoa3:limonite_ingot>;
    var limonOut = <item:aoa3:limonite_sword>;
    if limonIn1.matches(item1) && limonIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = limonOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = limonOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Cyclops Sword
    var cyclopIn1 = <item:divinerpg:realmite_sword>;
    var cyclopIn2 = <item:divinerpg:cyclops_eye>;
    var cyclopOut = <item:divinerpg:cyclopsian_sword>;
    if cyclopIn1.matches(item1) && cyclopIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = cyclopOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = cyclopOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Aqua Dagger
    var aquadIn1 = <item:divinerpg:cyclopsian_sword>;
    var aquadIn2 = <item:divinerpg:aquatic_ingot>;
    var aquadOut = <item:divinerpg:aquatic_dagger>;
    if aquadIn1.matches(item1) && aquadIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = aquadOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = aquadOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Slime Sword
    var slimeIn1 = <item:divinerpg:aquatic_dagger>;
    var slimeIn2 = <item:minecraft:slime_ball>;
    var slimeOut = <item:divinerpg:slime_sword>;
    if slimeIn1.matches(item1) && slimeIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = slimeOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = slimeOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Terra Dagger
    var terradIn1 = <item:divinerpg:aquatic_dagger>;
    var terradIn2 = <item:divinerpg:terran_stone>;
    var terradOut = <item:divinerpg:terran_dagger>;
    if terradIn1.matches(item1) && terradIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = terradOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = terradOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Rosit Sword
    var rositIn1 = <item:aoa3:limonite_sword>;
    var rositIn2 = <item:aoa3:rosite_ingot>;
    var rositOut = <item:aoa3:rosite_sword>;
    if rositIn1.matches(item1) && rositIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = rositOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = rositOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Jade Sword
    var jadeIn1 = <item:aoa3:rosite_sword>;
    var jadeIn2 = <item:aoa3:jade>;
    var jadeOut = <item:aoa3:jade_sword>;
    if jadeIn1.matches(item1) && jadeIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = jadeOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = jadeOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Bedrock Sword
    var bedrocksIn1 = <item:advancedcombat:advanced_gold_sword>;
    var bedrocksIn2 = <item:divinerpg:bedrock_chunk>;
    var bedrocksOut = <item:divinerpg:bedrock_sword>;
    if bedrocksIn1.matches(item1) && bedrocksIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = bedrocksOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = bedrocksOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Emerald Sword
    var emeraldIn1 = <item:minecraft:diamond_sword>;
    var emeraldIn2 = <item:minecraft:emerald>;
    var emeraldOut = <item:advancedcombat:emerald_sword>;
    if emeraldIn1.matches(item1) && emeraldIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = emeraldOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = emeraldOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Nether Sword
    var netherIn1 = <item:minecraft:diamond_sword>;
    var netherIn2 = <item:minecraft:netherite_ingot>;
    var netherOut = <item:minecraft:netherite_sword>;
    if netherIn1.matches(item1) && netherIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = netherOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = netherOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Sapfire Sword
    var sapfireIn1 = <item:minecraft:diamond_sword>;
    var sapfireIn2 = <item:aoa3:sapphire>;
    var sapfireOut = <item:aoa3:sapphire_sword>;
    if sapfireIn1.matches(item1) && sapfireIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = sapfireOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = sapfireOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    //Frost Sword
    var frost1In1 = <item:minecraft:diamond_sword>;
    var frost1In2 = <item:divinerpg:ice_stone>;
    var frost1Out = <item:divinerpg:frost_sword>;
    if frost1In1.matches(item1) && frost1In2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = frost1Out.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = frost1Out;}}
        event.materialCost = ran; event.levelCost = 1;
    }

    /*
    //Nether Sword
    var diamIn1 = <item:minecraft:iron_sword>;
    var diamIn2 = <item:minecraft:diamond>;
    var diamOut = <item:minecraft:diamond_sword>;
    if diamIn1.matches(item1) && diamIn2.matches(item2) {
        if(player.hasGameStage("kyznec_i") || (player.hasGameStage("kyznec_ii")) || (player.hasGameStage("kyznec_iii")))
        {if (item2.amount >=  ran) {
                event.output = diamOut.withTag(item1.tag); }}
                    else{ if (item2.amount >=  ran){
                        event.output = diamOut;}}
        event.materialCost = ran; event.levelCost = 1;
    }
    */

});