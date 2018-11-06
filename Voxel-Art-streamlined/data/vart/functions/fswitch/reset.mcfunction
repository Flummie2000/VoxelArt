#resets players fswitch
scoreboard players operation newbrush config.va = @s brushmodel.va
function vart:entitybased/newbrush
replaceitem entity @s weapon.offhand minecraft:air

execute unless entity @s[scores={fswitch.va=1}] run function vart:libraries/savebrush/savemat
execute unless entity @s[scores={fswitch.va=2}] run function vart:libraries/savebrush/savemov
execute unless entity @s[scores={fswitch.va=3}] run function vart:libraries/savebrush/savepat
execute unless entity @s[scores={fswitch.va=4}] run function vart:libraries/savebrush/savelpat
execute unless entity @s[scores={fswitch.va=5}] run function vart:libraries/savebrush/saverot
execute unless entity @s[scores={fswitch.va=6}] run function vart:libraries/savebrush/savesiz
