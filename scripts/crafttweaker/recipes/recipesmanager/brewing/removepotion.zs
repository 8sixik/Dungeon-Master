import crafttweaker.api.Brewing;
import crafttweaker.api.item.ItemStack;
import crafttweaker.api.item.IItemStack;

var potremove as IItemStack[] = [
    <item:minecraft:feather>.mutable(),
    <item:minecraft:red_dye>.mutable(),
    <item:minecraft:blue_dye>.mutable(),
    <item:minecraft:orange_dye>.mutable(),
    <item:minecraft:slime_ball>.mutable(),
    <item:minecraft:blaze_powder>.mutable(),
    <item:wings:bat_blood_bottle>.mutable(),
    <item:minecraft:oxeye_daisy>.mutable(),
    <item:minecraft:bone>.mutable(),
    <item:minecraft:leather>.mutable()
];

for item in potremove {
    brewing.removeRecipeByReagent(item);
}