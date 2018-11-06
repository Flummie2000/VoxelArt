execute if score @s fswitch.va matches 1 run scoreboard players add @s material.va 1

execute if score @s fswitch.va matches 2 run function vart:fswitch/mup
execute if score @s fswitch.va matches 3 run scoreboard players add @s movement.va 1

execute if score @s fswitch.va matches 4 run scoreboard players add @s shape.va 1
execute if score @s fswitch.va matches 5 run scoreboard players add @s layerpattern.va 1
execute if score @s fswitch.va matches 6 run scoreboard players add @s rotate.va 1
execute if score @s fswitch.va matches 7 run scoreboard players add @s grow.va 1
execute if score @s fswitch.va matches 8 unless score @s brushmodel.va = gunmodeld config.va run scoreboard players add @s brushmodel.va 1