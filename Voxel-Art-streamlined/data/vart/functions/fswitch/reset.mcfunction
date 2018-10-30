#resets players fswitch
replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:"\"Voxel Brush\"",Lore:["Clean brush: set your options using /trigger!"]},Unbreakable:1,Damage:1s}
replaceitem entity @s weapon.offhand minecraft:air

execute unless entity @s[scores={fswitch.va=1}] run function vart:libraries/savebrush/savemat
execute unless entity @s[scores={fswitch.va=2}] run function vart:libraries/savebrush/savemov
execute unless entity @s[scores={fswitch.va=3}] run function vart:libraries/savebrush/savepat
execute unless entity @s[scores={fswitch.va=4}] run function vart:libraries/savebrush/saverot
execute unless entity @s[scores={fswitch.va=5}] run function vart:libraries/savebrush/savesiz
