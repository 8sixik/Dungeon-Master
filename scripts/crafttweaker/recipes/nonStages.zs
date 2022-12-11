craftingTable.addShaped("infuse_table_nonstages", <item:aoa3:infusion_table>, [
        [<item:aoa3:power_rune>, <item:aoa3:purple_gemstones>, <item:aoa3:kinetic_rune>],
        [<item:divinerpg:bedrock_chunk>, <tag:items:aoa3:infusion_stone>, <item:divinerpg:bedrock_chunk>],
        [<item:divinerpg:bedrock_chunk>, <item:divinerpg:bedrock_chunk>, <item:divinerpg:bedrock_chunk>]]);

craftingTable.addShaped("iron_locking_nonstages", <item:locks:iron_lock_pick> * 2, [
        [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
        [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>],
        [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:air>]]);

craftingTable.addShaped("diamond_locking_nonstages", <item:locks:diamond_lock_pick> * 2, [
        [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:diamond>],
        [<item:minecraft:air>, <item:minecraft:diamond>, <item:minecraft:air>],
        [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:air>]]);

        craftingTable.addShaped("sk_key", <item:infinite_dungeons:skeletal_key>.withTag({dungeon: {}}), [
        [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
        [<item:minecraft:gold_ingot>, <item:minecraft:iron_block>, <item:minecraft:air>],
        [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:air>]]);
