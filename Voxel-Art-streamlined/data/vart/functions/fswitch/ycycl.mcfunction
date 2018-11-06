execute if score @s fswitch.va matches 1 run scoreboard players remove @s material.va 1
execute if score @s fswitch.va matches 2 run function vart:fswitch/mdown
execute if score @s fswitch.va matches 3 run scoreboard players remove @s movement.va 1
execute if score @s fswitch.va matches 4 run scoreboard players remove @s shape.va 1
execute if score @s fswitch.va matches 5 run scoreboard players remove @s layerpattern.va 1
execute if score @s fswitch.va matches 6 run scoreboard players remove @s rotate.va 1
execute if score @s fswitch.va matches 7 run scoreboard players remove @s grow.va 1
execute if score @s fswitch.va matches 8 unless score @s brushmodel.va = gunmodelp config.va run scoreboard players remove @s brushmodel.va 1
