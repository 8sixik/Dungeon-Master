import crafttweaker.api.SmithingManager;

import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var armorVanilla as IItemStack[string] = {
    "1": <item:minecraft:iron_helmet>,
    "2": <item:minecraft:iron_chestplate>,
    "3": <item:minecraft:iron_leggings>,
    "4": <item:minecraft:iron_boots>,
    "5": <item:minecraft:diamond_helmet>,
    "6": <item:minecraft:diamond_chestplate>,
    "7": <item:minecraft:diamond_leggings>,
    "8": <item:minecraft:diamond_boots>,
    "9": <item:minecraft:netherite_helmet>,
    "10": <item:minecraft:netherite_chestplate>,
    "11": <item:minecraft:netherite_leggings>,
    "12": <item:minecraft:netherite_boots>
};

var itemremove as IItemStack[] = [
    <item:divinerpg:blue_ender_boots>,
    <item:divinerpg:blue_rupee_helmet>,
    <item:divinerpg:blue_rupee_chestplate>,
    <item:divinerpg:blue_rupee_leggings>,
    <item:divinerpg:blue_rupee_boots>,
    <item:divinerpg:corrupted_helmet>,
    <item:divinerpg:corrupted_chestplate>,
    <item:divinerpg:corrupted_leggings>,
    <item:divinerpg:corrupted_boots>,
    <item:divinerpg:apalachia_helmet>,
    <item:divinerpg:apalachia_chestplate>,
    <item:divinerpg:apalachia_leggings>,
    <item:divinerpg:apalachia_boots>,
    <item:divinerpg:aquastrive_helmet>,
    <item:divinerpg:aquastrive_chestplate>,
    <item:divinerpg:aquastrive_leggings>,
    <item:divinerpg:aquastrive_boots>,
    <item:divinerpg:arlemite_helmet>,
    <item:divinerpg:arlemite_chestplate>,
    <item:divinerpg:arlemite_leggings>,
    <item:divinerpg:arlemite_boots>,
    <item:divinerpg:awakened_halite_helmet>,
    <item:divinerpg:awakened_halite_chestplate>,
    <item:divinerpg:awakened_halite_leggings>,
    <item:divinerpg:awakened_halite_boots>,
    <item:divinerpg:bedrock_helmet>,
    <item:divinerpg:bedrock_chestplate>,
    <item:divinerpg:bedrock_leggings>,
    <item:divinerpg:bedrock_boots>,
    <item:divinerpg:blue_ender_helmet>,
    <item:divinerpg:blue_ender_chestplate>,
    <item:divinerpg:blue_ender_leggings>,
    <item:divinerpg:angelic_boots>,
    <item:divinerpg:angelic_leggings>,
    <item:divinerpg:angelic_chestplate>,
    <item:divinerpg:angelic_helmet>,
    <item:divinerpg:green_ender_boots>,
    <item:divinerpg:green_rupee_helmet>,
    <item:divinerpg:green_rupee_chestplate>,
    <item:divinerpg:green_rupee_leggings>,
    <item:divinerpg:green_rupee_boots>,
    <item:divinerpg:eden_helmet>,
    <item:divinerpg:eden_chestplate>,
    <item:divinerpg:eden_leggings>,
    <item:divinerpg:divine_boots>,
    <item:divinerpg:elite_realmite_helmet>,
    <item:divinerpg:elite_realmite_chestplate>,
    <item:divinerpg:elite_realmite_leggings>,
    <item:divinerpg:elite_realmite_boots>,
    <item:divinerpg:ender_helmet>,
    <item:divinerpg:ender_chestplate>,
    <item:divinerpg:ender_leggings>,
    <item:divinerpg:ender_boots>,
    <item:divinerpg:frozen_helmet>,
    <item:divinerpg:frozen_chestplate>,
    <item:divinerpg:frozen_leggings>,
    <item:divinerpg:frozen_boots>,
    <item:divinerpg:gray_ender_helmet>,
    <item:divinerpg:gray_ender_chestplate>,
    <item:divinerpg:gray_ender_leggings>,
    <item:divinerpg:gray_ender_boots>,
    <item:divinerpg:gray_rupee_helmet>,
    <item:divinerpg:gray_rupee_chestplate>,
    <item:divinerpg:gray_rupee_leggings>,
    <item:divinerpg:gray_rupee_boots>,
    <item:divinerpg:green_ender_helmet>,
    <item:divinerpg:green_ender_chestplate>,
    <item:divinerpg:green_ender_leggings>,
    <item:divinerpg:eden_boots>,
    <item:divinerpg:divine_leggings>,
    <item:divinerpg:divine_chestplate>,
    <item:divinerpg:divine_helmet>,
    <item:divinerpg:mortum_boots>,
    <item:divinerpg:realmite_helmet>,
    <item:divinerpg:realmite_chestplate>,
    <item:divinerpg:realmite_leggings>,
    <item:divinerpg:realmite_boots>,
    <item:divinerpg:red_ender_helmet>,
    <item:divinerpg:red_ender_chestplate>,
    <item:divinerpg:red_ender_leggings>,
    <item:divinerpg:red_ender_boots>,
    <item:divinerpg:inferno_helmet>,
    <item:divinerpg:inferno_chestplate>,
    <item:divinerpg:inferno_leggings>,
    <item:divinerpg:inferno_boots>,
    <item:divinerpg:jungle_helmet>,
    <item:divinerpg:jungle_chestplate>,
    <item:divinerpg:jungle_leggings>,
    <item:divinerpg:jungle_boots>,
    <item:divinerpg:korma_helmet>,
    <item:divinerpg:korma_chestplate>,
    <item:divinerpg:korma_leggings>,
    <item:divinerpg:korma_boots>,
    <item:divinerpg:kraken_helmet>,
    <item:divinerpg:kraken_chestplate>,
    <item:divinerpg:kraken_leggings>,
    <item:divinerpg:kraken_boots>,
    <item:divinerpg:mortum_helmet>,
    <item:divinerpg:mortum_chestplate>,
    <item:divinerpg:mortum_leggings>,
    <item:divinerpg:halite_boots>,
    <item:divinerpg:halite_leggings>,
    <item:divinerpg:halite_chestplate>,
    <item:divinerpg:halite_helmet>,
    <item:divinerpg:terran_boots>,
    <item:divinerpg:torridite_helmet>,
    <item:divinerpg:torridite_chestplate>,
    <item:divinerpg:torridite_leggings>,
    <item:divinerpg:torridite_boots>,
    <item:divinerpg:rupee_helmet>,
    <item:divinerpg:rupee_chestplate>,
    <item:divinerpg:rupee_leggings>,
    <item:divinerpg:rupee_boots>,
    <item:divinerpg:shadow_helmet>,
    <item:divinerpg:shadow_chestplate>,
    <item:divinerpg:shadow_leggings>,
    <item:divinerpg:shadow_boots>,
    <item:divinerpg:skythern_helmet>,
    <item:divinerpg:skythern_chestplate>,
    <item:divinerpg:skythern_leggings>,
    <item:divinerpg:skythern_boots>,
    <item:divinerpg:terran_helmet>,
    <item:divinerpg:terran_chestplate>,
    <item:divinerpg:terran_leggings>,
    <item:divinerpg:red_rupee_boots>,
    <item:divinerpg:red_rupee_leggings>,
    <item:divinerpg:red_rupee_chestplate>,
    <item:divinerpg:red_rupee_helmet>,
    <item:divinerpg:yellow_ender_chestplate>,
    <item:divinerpg:yellow_ender_leggings>,
    <item:divinerpg:yellow_ender_boots>,
    <item:divinerpg:yellow_rupee_helmet>,
    <item:divinerpg:yellow_rupee_chestplate>,
    <item:divinerpg:yellow_rupee_leggings>,
    <item:divinerpg:yellow_rupee_boots>,
    <item:divinerpg:wither_reaper_helmet>,
    <item:divinerpg:wither_reaper_chestplate>,
    <item:divinerpg:wither_reaper_leggings>,
    <item:divinerpg:wither_reaper_boots>,
    <item:divinerpg:yellow_ender_helmet>,
    <item:divinerpg:wildwood_boots>,
    <item:divinerpg:wildwood_leggings>,
    <item:divinerpg:wildwood_chestplate>,
    <item:divinerpg:wildwood_helmet>
];

var armorDivine as IItemStack[string] = {
   "1": <item:divinerpg:blue_ender_boots>,
   "2": <item:divinerpg:blue_rupee_helmet>,
   "3": <item:divinerpg:blue_rupee_chestplate>,
   "4": <item:divinerpg:blue_rupee_leggings>,
   "5": <item:divinerpg:blue_rupee_boots>,
   "6": <item:divinerpg:corrupted_helmet>,
   "7": <item:divinerpg:corrupted_chestplate>,
   "8": <item:divinerpg:corrupted_leggings>,
   "9": <item:divinerpg:corrupted_boots>,
   "10": <item:divinerpg:apalachia_helmet>,
   "11": <item:divinerpg:apalachia_chestplate>,
   "12": <item:divinerpg:apalachia_leggings>,
   "13": <item:divinerpg:apalachia_boots>,
   "14": <item:divinerpg:aquastrive_helmet>,
   "15": <item:divinerpg:aquastrive_chestplate>,
   "16": <item:divinerpg:aquastrive_leggings>,
   "17": <item:divinerpg:aquastrive_boots>,
   "18": <item:divinerpg:arlemite_helmet>,
   "19": <item:divinerpg:arlemite_chestplate>,
   "21": <item:divinerpg:arlemite_leggings>,
   "22": <item:divinerpg:arlemite_boots>,
   "23": <item:divinerpg:awakened_halite_helmet>,
   "24": <item:divinerpg:awakened_halite_chestplate>,
   "25": <item:divinerpg:awakened_halite_leggings>,
   "26": <item:divinerpg:awakened_halite_boots>,
   "27": <item:divinerpg:bedrock_helmet>,
   "28": <item:divinerpg:bedrock_chestplate>,
   "29": <item:divinerpg:bedrock_leggings>,
   "30": <item:divinerpg:bedrock_boots>,
   "31": <item:divinerpg:blue_ender_helmet>,
   "32": <item:divinerpg:blue_ender_chestplate>,
   "33": <item:divinerpg:blue_ender_leggings>,
   "34": <item:divinerpg:angelic_boots>,
   "35": <item:divinerpg:angelic_leggings>,
   "36": <item:divinerpg:angelic_chestplate>,
   "37": <item:divinerpg:angelic_helmet>,
   "38": <item:divinerpg:green_ender_boots>,
   "39": <item:divinerpg:green_rupee_helmet>,
   "40": <item:divinerpg:green_rupee_chestplate>,
   "41": <item:divinerpg:green_rupee_leggings>,
   "42": <item:divinerpg:green_rupee_boots>,
   "43": <item:divinerpg:eden_helmet>,
   "44": <item:divinerpg:eden_chestplate>,
   "45": <item:divinerpg:eden_leggings>,
   "46": <item:divinerpg:divine_boots>,
   "47": <item:divinerpg:elite_realmite_helmet>,
   "48": <item:divinerpg:elite_realmite_chestplate>,
   "49": <item:divinerpg:elite_realmite_leggings>,
   "50": <item:divinerpg:elite_realmite_boots>,
   "51": <item:divinerpg:ender_helmet>,
   "52": <item:divinerpg:ender_chestplate>,
   "53": <item:divinerpg:ender_leggings>,
   "54": <item:divinerpg:ender_boots>,
   "55": <item:divinerpg:frozen_helmet>,
   "56": <item:divinerpg:frozen_chestplate>,
   "57": <item:divinerpg:frozen_leggings>,
   "58": <item:divinerpg:frozen_boots>,
   "59": <item:divinerpg:gray_ender_helmet>,
   "60": <item:divinerpg:gray_ender_chestplate>,
   "61": <item:divinerpg:gray_ender_leggings>,
   "62": <item:divinerpg:gray_ender_boots>,
   "63": <item:divinerpg:gray_rupee_helmet>,
   "64": <item:divinerpg:gray_rupee_chestplate>,
   "65": <item:divinerpg:gray_rupee_leggings>,
   "66": <item:divinerpg:gray_rupee_boots>,
   "67": <item:divinerpg:green_ender_helmet>,
   "68": <item:divinerpg:green_ender_chestplate>,
   "69": <item:divinerpg:green_ender_leggings>,
   "70": <item:divinerpg:eden_boots>,
   "71": <item:divinerpg:divine_leggings>,
   "72": <item:divinerpg:divine_chestplate>,
   "73": <item:divinerpg:divine_helmet>,
   "74": <item:divinerpg:mortum_boots>,
   "75": <item:divinerpg:realmite_helmet>,
   "76": <item:divinerpg:realmite_chestplate>,
   "77": <item:divinerpg:realmite_leggings>,
   "78": <item:divinerpg:realmite_boots>,
   "79": <item:divinerpg:red_ender_helmet>,
   "80": <item:divinerpg:red_ender_chestplate>,
   "81": <item:divinerpg:red_ender_leggings>,
   "82": <item:divinerpg:red_ender_boots>,
   "83": <item:divinerpg:inferno_helmet>,
   "84": <item:divinerpg:inferno_chestplate>,
   "85": <item:divinerpg:inferno_leggings>,
   "86": <item:divinerpg:inferno_boots>,
   "91": <item:divinerpg:jungle_helmet>,
   "92": <item:divinerpg:jungle_chestplate>,
   "93": <item:divinerpg:jungle_leggings>,
   "94": <item:divinerpg:jungle_boots>,
   "95": <item:divinerpg:korma_helmet>,
   "96": <item:divinerpg:korma_chestplate>,
   "97": <item:divinerpg:korma_leggings>,
   "98": <item:divinerpg:korma_boots>,
   "99": <item:divinerpg:kraken_helmet>,
   "100": <item:divinerpg:kraken_chestplate>,
   "101": <item:divinerpg:kraken_leggings>,
   "102": <item:divinerpg:kraken_boots>,
   "103": <item:divinerpg:mortum_helmet>,
   "104": <item:divinerpg:mortum_chestplate>,
   "105": <item:divinerpg:mortum_leggings>,
   "106": <item:divinerpg:halite_boots>,
   "107": <item:divinerpg:halite_leggings>,
   "108": <item:divinerpg:halite_chestplate>,
   "109": <item:divinerpg:halite_helmet>,
   "110": <item:divinerpg:terran_boots>,
   "111": <item:divinerpg:torridite_helmet>,
   "112": <item:divinerpg:torridite_chestplate>,
   "113": <item:divinerpg:torridite_leggings>,
   "114": <item:divinerpg:torridite_boots>,
   "115": <item:divinerpg:rupee_helmet>,
   "116": <item:divinerpg:rupee_chestplate>,
   "117": <item:divinerpg:rupee_leggings>,
   "118": <item:divinerpg:rupee_boots>,
   "119": <item:divinerpg:shadow_helmet>,
   "120": <item:divinerpg:shadow_chestplate>,
   "121": <item:divinerpg:shadow_leggings>,
   "122": <item:divinerpg:shadow_boots>,
   "123": <item:divinerpg:skythern_helmet>,
   "124": <item:divinerpg:skythern_chestplate>,
   "125": <item:divinerpg:skythern_leggings>,
   "126": <item:divinerpg:skythern_boots>,
   "127": <item:divinerpg:terran_helmet>,
   "128": <item:divinerpg:terran_chestplate>,
   "129": <item:divinerpg:terran_leggings>,
   "130": <item:divinerpg:red_rupee_boots>,
   "131": <item:divinerpg:red_rupee_leggings>,
   "132": <item:divinerpg:red_rupee_chestplate>,
   "133": <item:divinerpg:red_rupee_helmet>,
   "134": <item:divinerpg:yellow_ender_chestplate>,
   "135": <item:divinerpg:yellow_ender_leggings>,
   "136": <item:divinerpg:yellow_ender_boots>,
   "137": <item:divinerpg:yellow_rupee_helmet>,
   "138": <item:divinerpg:yellow_rupee_chestplate>,
   "139": <item:divinerpg:yellow_rupee_leggings>,
   "140": <item:divinerpg:yellow_rupee_boots>,
   "141": <item:divinerpg:wither_reaper_helmet>,
   "142": <item:divinerpg:wither_reaper_chestplate>,
   "143": <item:divinerpg:wither_reaper_leggings>,
   "144": <item:divinerpg:wither_reaper_boots>,
   "145": <item:divinerpg:yellow_ender_helmet>,
   "146": <item:divinerpg:wildwood_boots>,
   "147": <item:divinerpg:wildwood_leggings>,
   "148": <item:divinerpg:wildwood_chestplate>,
   "149": <item:divinerpg:wildwood_helmet>
};

for item in itemremove {
    craftingTable.removeRecipe(item);
}

//divineRPG

smithing.addRecipe("torri_helm", armorDivine[111], armorVanilla[1], <item:divinerpg:torridite_block>);
smithing.addRecipe("torri_chest", armorDivine[112], armorVanilla[2], <item:divinerpg:torridite_block>);
smithing.addRecipe("torri_legg", armorDivine[113], armorVanilla[3],  <item:divinerpg:torridite_block>);
smithing.addRecipe("torri_boots", armorDivine[114], armorVanilla[4], <item:divinerpg:torridite_block>);

smithing.addRecipe("auqa_helm", armorDivine[14], armorDivine[99], <item:divinerpg:aquatic_ingot>);
smithing.addRecipe("auqa_chest", armorDivine[15], armorDivine[100], <item:divinerpg:aquatic_ingot>);
smithing.addRecipe("auqa_legg", armorDivine[16], armorDivine[101], <item:divinerpg:aquatic_ingot>);
smithing.addRecipe("auqa_boots", armorDivine[17], armorDivine[102], <item:divinerpg:aquatic_ingot>);

smithing.addRecipe("arlemit_helm", armorDivine[18], armorVanilla[1], <item:divinerpg:arlemite_block>);
smithing.addRecipe("arlemit_chest", armorDivine[19], armorVanilla[2], <item:divinerpg:arlemite_block>);
smithing.addRecipe("arlemit_legg", armorDivine[21], armorVanilla[3], <item:divinerpg:arlemite_block>);
smithing.addRecipe("arlemit_boots", armorDivine[22], armorVanilla[4], <item:divinerpg:arlemite_block>);

smithing.addRecipe("kraken_helm", armorDivine[99], armorVanilla[1], <item:divinerpg:aqua_ball>);
smithing.addRecipe("kraken_chest", armorDivine[100], armorVanilla[2], <item:divinerpg:aqua_ball>);
smithing.addRecipe("kraken_legg", armorDivine[101], armorVanilla[3], <item:divinerpg:aqua_ball>);
smithing.addRecipe("kraken_boots", armorDivine[102], armorVanilla[4], <item:divinerpg:aqua_ball>);

smithing.addRecipe("realmite_helm", armorDivine[75], armorVanilla[1], <item:divinerpg:realmite_block>);
smithing.addRecipe("realmite_chest", armorDivine[76], armorVanilla[2], <item:divinerpg:realmite_block>);
smithing.addRecipe("realmite_legg", armorDivine[77], armorVanilla[3], <item:divinerpg:realmite_block>);
smithing.addRecipe("realmite_boots", armorDivine[78], armorVanilla[4], <item:divinerpg:realmite_block>);

smithing.addRecipe("elit_realmite_helm", armorDivine[47], armorDivine[75], <item:divinerpg:realmite_block>);
smithing.addRecipe("elit_realmite_chest", armorDivine[48], armorDivine[76], <item:divinerpg:realmite_block>);
smithing.addRecipe("elit_realmite_legg", armorDivine[49], armorDivine[77], <item:divinerpg:realmite_block>);
smithing.addRecipe("elit_realmite_boots", armorDivine[50], armorDivine[78], <item:divinerpg:realmite_block>);

smithing.addRecipe("terra_helm", armorDivine[127], armorVanilla[5], <item:divinerpg:terran_stone>);
smithing.addRecipe("terra_chest", armorDivine[128], armorVanilla[6], <item:divinerpg:terran_stone>);
smithing.addRecipe("terra_legg", armorDivine[129], armorVanilla[7], <item:divinerpg:terran_stone>);
smithing.addRecipe("terra_boots", armorDivine[130], armorVanilla[8], <item:divinerpg:terran_stone>);

smithing.addRecipe("corrupted_helm", armorDivine[6], armorVanilla[5], <item:divinerpg:corrupted_stone>);
smithing.addRecipe("corrupted_chest", armorDivine[7], armorVanilla[6], <item:divinerpg:corrupted_stone>);
smithing.addRecipe("corrupted_legg", armorDivine[8], armorVanilla[7], <item:divinerpg:corrupted_stone>);
smithing.addRecipe("corrupted_boots", armorDivine[9], armorVanilla[8], <item:divinerpg:corrupted_stone>);

smithing.addRecipe("ender_helm", armorDivine[51], armorVanilla[5], <item:divinerpg:legendary_ender_eye>);
smithing.addRecipe("ender_chest", armorDivine[52], armorVanilla[6], <item:divinerpg:legendary_ender_eye>);
smithing.addRecipe("ender_legg", armorDivine[53], armorVanilla[7], <item:divinerpg:legendary_ender_eye>);
smithing.addRecipe("ender_boots", armorDivine[54], armorVanilla[8], <item:divinerpg:legendary_ender_eye>);

smithing.addRecipe("eden_helm", armorDivine[43], armorVanilla[5], <item:divinerpg:eden_chunk>);
smithing.addRecipe("eden_chest", armorDivine[44], armorVanilla[6], <item:divinerpg:eden_chunk>);
smithing.addRecipe("eden_legg", armorDivine[45], armorVanilla[7], <item:divinerpg:eden_chunk>);
smithing.addRecipe("eden_boots", armorDivine[70], armorVanilla[8], <item:divinerpg:eden_chunk>);

smithing.addRecipe("wildwood_helm", armorDivine[149], armorDivine[43], <item:divinerpg:wildwood_chunk>);
smithing.addRecipe("wildwood_chest", armorDivine[148], armorDivine[44], <item:divinerpg:wildwood_chunk>);
smithing.addRecipe("wildwood_legg", armorDivine[147], armorDivine[45], <item:divinerpg:wildwood_chunk>);
smithing.addRecipe("wildwood_boots", armorDivine[146], armorDivine[47], <item:divinerpg:wildwood_chunk>);

smithing.addRecipe("skythern_helm", armorDivine[123], armorDivine[10], <item:divinerpg:skythern_chunk>);
smithing.addRecipe("skythern_chest", armorDivine[124], armorDivine[11], <item:divinerpg:skythern_chunk>);
smithing.addRecipe("skythern_legg", armorDivine[125], armorDivine[12], <item:divinerpg:skythern_chunk>);
smithing.addRecipe("skythern_boots", armorDivine[126], armorDivine[13], <item:divinerpg:skythern_chunk>);

smithing.addRecipe("mortum_helm", armorDivine[103], armorDivine[123], <item:divinerpg:mortum_chunk>);
smithing.addRecipe("mortum_chest", armorDivine[104], armorDivine[124], <item:divinerpg:mortum_chunk>);
smithing.addRecipe("mortum_legg", armorDivine[105], armorDivine[125], <item:divinerpg:mortum_chunk>);
smithing.addRecipe("mortum_boots", armorDivine[74], armorDivine[126], <item:divinerpg:mortum_chunk>);

smithing.addRecipe("apalachia_helm", armorDivine[10], armorDivine[149], <item:divinerpg:apalachia_chunk>);
smithing.addRecipe("apalachia_chest", armorDivine[11], armorDivine[148], <item:divinerpg:apalachia_chunk>);
smithing.addRecipe("apalachia_legg", armorDivine[12], armorDivine[147], <item:divinerpg:apalachia_chunk>);
smithing.addRecipe("apalachia_boots", armorDivine[13], armorDivine[146], <item:divinerpg:apalachia_chunk>);

smithing.addRecipe("frost_helm", armorDivine[55], armorVanilla[5], <item:divinerpg:frosted_allure>);
smithing.addRecipe("frost_chest", armorDivine[56], armorVanilla[6], <item:divinerpg:frosted_allure>);
smithing.addRecipe("frost_legg", armorDivine[57], armorVanilla[7], <item:divinerpg:frosted_allure>);
smithing.addRecipe("frost_boots", armorDivine[58], armorVanilla[8], <item:divinerpg:frosted_allure>);

smithing.addRecipe("inferno_helm", armorDivine[83], armorVanilla[5], <item:divinerpg:molten_stone>);
smithing.addRecipe("inferno_chest", armorDivine[84], armorVanilla[6], <item:divinerpg:molten_stone>);
smithing.addRecipe("inferno_legg", armorDivine[85], armorVanilla[7], <item:divinerpg:molten_stone>);
smithing.addRecipe("inferno_boots", armorDivine[86], armorVanilla[8], <item:divinerpg:molten_stone>);

smithing.addRecipe("jungle_helm", armorDivine[91], armorVanilla[5], <item:divinerpg:jungle_stone>);
smithing.addRecipe("jungle_chest", armorDivine[92], armorVanilla[6], <item:divinerpg:jungle_stone>);
smithing.addRecipe("jungle_legg", armorDivine[93], armorVanilla[7], <item:divinerpg:jungle_stone>);
smithing.addRecipe("jungle_boots", armorDivine[94], armorVanilla[8], <item:divinerpg:jungle_stone>);

smithing.addRecipe("angel_helm", armorDivine[37], armorDivine[55], <item:divinerpg:bluefire_stone>);
smithing.addRecipe("angel_chest", armorDivine[36], armorDivine[56], <item:divinerpg:bluefire_stone>);
smithing.addRecipe("angel_legg", armorDivine[35], armorDivine[57], <item:divinerpg:bluefire_stone>);
smithing.addRecipe("angel_boots", armorDivine[34], armorDivine[58], <item:divinerpg:bluefire_stone>);



smithing.addRecipe("bedrock_helm", armorDivine[27], armorVanilla[9], <item:divinerpg:bedrock_chunk>);
smithing.addRecipe("bedrock_chest", armorDivine[28], armorVanilla[10], <item:divinerpg:bedrock_chunk>);
smithing.addRecipe("bedrock_legg", armorDivine[29], armorVanilla[11], <item:divinerpg:bedrock_chunk>);
smithing.addRecipe("bedrock_boots", armorDivine[30], armorVanilla[12], <item:divinerpg:bedrock_chunk>);

smithing.addRecipe("rupee_helm", armorDivine[115], armorVanilla[9], <item:divinerpg:rupee_block>);
smithing.addRecipe("rupee_chest", armorDivine[116], armorVanilla[10], <item:divinerpg:rupee_block>);
smithing.addRecipe("rupee_legg", armorDivine[117], armorVanilla[11], <item:divinerpg:rupee_block>);
smithing.addRecipe("rupee_boots", armorDivine[118], armorVanilla[12], <item:divinerpg:rupee_block>);

smithing.addRecipe("divine_helm", armorDivine[73], armorVanilla[9], <item:divinerpg:divine_lamp>);
smithing.addRecipe("divine_chest", armorDivine[72], armorVanilla[10], <item:divinerpg:divine_lamp>);
smithing.addRecipe("divine_legg", armorDivine[71], armorVanilla[11], <item:divinerpg:divine_lamp>);
smithing.addRecipe("divine_boots", armorDivine[46], armorVanilla[12], <item:divinerpg:divine_lamp>);

smithing.addRecipe("shadow_helm", armorDivine[119], armorVanilla[9], <item:divinerpg:shadow_coins>);
smithing.addRecipe("shadow_chest", armorDivine[120], armorVanilla[10], <item:divinerpg:shadow_coins>);
smithing.addRecipe("shadow_legg", armorDivine[121], armorVanilla[11], <item:divinerpg:shadow_coins>);
smithing.addRecipe("shadow_boots", armorDivine[122], armorVanilla[12], <item:divinerpg:shadow_coins>);

//AOA3
smithing.addRecipe("test_smiting", <item:divinerpg:divine_helmet>, <item:minecraft:netherite_helmet>, <item:divinerpg:divine_stone>);