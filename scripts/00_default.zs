/**
 * -------------------------------------------------------------------------------
 *
 * This file is part of the FTB Presents Direwolf20 1.12 Modpack for Minecraft
 * Copyright (c) 2018 Feed the Besat LLC.
 *
 * All Rights Reserved unless otherwise explicitly stated.
 *
 * -------------------------------------------------------------------------------
 */

import mods.industrialforegoing.LaserDrill;

// Disable duplicate content
recipes.remove(<ic2:bronze_helmet>);
recipes.remove(<ic2:bronze_chestplate>);
recipes.remove(<ic2:bronze_leggings>);
recipes.remove(<ic2:bronze_boots>);

recipes.remove(<ic2:bronze_axe>);
recipes.remove(<ic2:bronze_hoe>);
recipes.remove(<ic2:bronze_pickaxe>);
recipes.remove(<ic2:bronze_shovel>);
recipes.remove(<ic2:bronze_sword>);

// Fix broken bread recipe - How did this even happen?
recipes.addShaped(<minecraft:bread> * 1, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);

// Remove uranium casting to prevent cross-mod breakage
mods.tconstruct.Casting.removeBasinRecipe(<ic2:resource:10>, <liquid:uranium>);

// Fix bug where casting cobalt blocks gives chisel block rather than tinkers' construct one
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

// Helpful tooltips
<tconstruct:toolforge>.addTooltip(format.yellow("Can be made from any metal block"));

// This is not the easter egg you're looking for
<ic2:misc_resource:3>.addTooltip(format.darkPurple("Keep out of reach of Soaryns"));

// Charged Certus Crystal > Certus Dust - Should be there by default but for some reason isn't
mods.thermalexpansion.Pulverizer.addRecipe(<appliedenergistics2:material:2>, <appliedenergistics2:material:1>, 4000);

// Self Unification
recipes.remove(<forestry:ingot_bronze>);
recipes.addShapeless(<thermalfoundation:material:163> * 4, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 2, [[<forestry:broken_bronze_pickaxe>]], 30);
mods.forestry.Carpenter.addRecipe(<thermalfoundation:material:163> * 1, [[<forestry:broken_bronze_shovel>]], 30);

// Fixed UniDict screwing with things causing bronze gears to not be craftable
recipes.remove(<teslacorelib:gear_diamond>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:291>);
recipes.addShaped(<teslacorelib:gear_diamond> * 1, [[null, <ore:gemDiamond>], [<ore:gemDiamond>, <ore:ingotIron>, <ore:gemDiamond>], [null, <ore:gemDiamond>]]);
recipes.addShaped(<thermalfoundation:material:256> * 1, [[null, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>], [null, <ore:ingotCopper>]]);
recipes.addShaped(<thermalfoundation:material:257> * 1, [[null, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>], [null, <ore:ingotTin>]]);
recipes.addShaped(<thermalfoundation:material:291> * 1, [[null, <ore:ingotBronze>], [<ore:ingotBronze>, <ore:ingotIron>, <ore:ingotBronze>], [null, <ore:ingotBronze>]]);

// Fix cheap diamond recipe caused by mod cross compatibility
mods.thermalexpansion.Compactor.removePressRecipe(<ic2:crafting:17>);

// Industrial Foregoing - Laser Drill compatibility for other mods
LaserDrill.add(8, <appliedenergistics2:quartz_ore>, 2); // Applied Energistics 2
LaserDrill.add(8, <appliedenergistics2:charged_quartz_ore>, 1); // Applied Energistics 2
LaserDrill.add(15, <actuallyadditions:block_misc:3>, 6); // Actually Additions
LaserDrill.add(3, <forestry:resources>, 6); // Forestry
LaserDrill.add(3, <thermalfoundation:ore:8>, 1); // Thermal Foundation

// Addresses some inconsistency with Actually Additions' Black Quartz
recipes.removeShapeless(<actuallyadditions:item_misc:5>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 1, <actuallyadditions:item_misc:5>);
mods.immersiveengineering.Crusher.removeRecipe(<actuallyadditions:item_misc:5>);
mods.immersiveengineering.Crusher.addRecipe(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>, 4000);

// Block of Charcoal Unification
recipes.remove(<actuallyadditions:block_misc:5>);
recipes.remove(<chisel:block_charcoal2>);
recipes.remove(<forestry:charcoal>);

// Add Forestry's Block of Charcoal to Ore Dictionary
<ore:blockCharcoal>.add(<forestry:charcoal>);

// Fix an exploit allowing you to get leather with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton
recipes.remove(<minecraft:leather_helmet>);
recipes.addShaped(<minecraft:leather_helmet> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_chestplate>);
recipes.addShaped(<minecraft:leather_chestplate> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>]
]);
recipes.remove(<minecraft:leather_leggings>);
recipes.addShaped(<minecraft:leather_leggings> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped(<minecraft:leather_boots> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);

recipes.remove(<tconstruct:tooltables>);
<tconstruct:tooltables>.addTooltip(format.red("Disabled due to a dupe bug"));
