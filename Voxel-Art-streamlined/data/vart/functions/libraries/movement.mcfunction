#executed by all players running voxel
#calls the movement which is selected by the movement score
tag @s remove foundm.va

execute if score @s movement.va matches 0 run function vart:libraries/movements/movement0
execute if score @s movement.va matches 1 run function vart:libraries/movements/movement1
execute if score @s movement.va matches 2 run function vart:libraries/movements/movement2
execute if score @s movement.va matches 3 run function vart:libraries/movements/movement3
execute if score @s movement.va matches 4 run function vart:libraries/movements/movement4
execute if score @s movement.va matches 5 run function vart:libraries/movements/movement5
execute if score @s movement.va matches 6 run function vart:libraries/movements/movement6
execute if score @s movement.va matches 7 run function vart:libraries/movements/movement7
execute if score @s movement.va matches 8 run function vart:libraries/movements/movement8
execute if score @s movement.va matches 9 run function vart:libraries/movements/movement9
execute if score @s movement.va matches 10 run function vart:libraries/movements/movement10
execute if score @s movement.va matches 20 run function vart:libraries/movements/movement20
execute if score @s movement.va matches 21 run function vart:libraries/movements/movement21
execute if score @s movement.va matches 22 run function vart:libraries/movements/movement22
execute if score @s movement.va matches 30 run function vart:libraries/movements/movement30

execute unless entity @s[tag=foundm.va] run title @s actionbar [{"text":"No movement function found","color":"dark_red"}]
