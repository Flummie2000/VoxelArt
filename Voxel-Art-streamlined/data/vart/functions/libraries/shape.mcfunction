#calls the shape which is selected by the shape score
tag @s remove foundsh.va

execute if score @s shape.va matches 1 run function vart:libraries/shapes/shape1
execute if score @s shape.va matches 2 run function vart:libraries/shapes/shape2
execute if score @s shape.va matches 3 run function vart:libraries/shapes/shape3
execute if score @s shape.va matches 4 run function vart:libraries/shapes/shape4
execute if score @s shape.va matches 5 run function vart:libraries/shapes/shape5
execute if score @s shape.va matches 6 run function vart:libraries/shapes/shape6
execute if score @s shape.va matches 7 run function vart:libraries/shapes/shape7
execute if score @s shape.va matches 8 run function vart:libraries/shapes/shape8
execute if score @s shape.va matches 9 run function vart:libraries/shapes/shape9
execute if score @s shape.va matches 10 run function vart:libraries/shapes/shape10

#tmp stores the brush heads Player
scoreboard players operation tmp Player.va = @s Player.va

execute unless entity @s[tag=foundsh.va] as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run title @s actionbar [{"text":"No shape function found","color":"dark_red"}]
