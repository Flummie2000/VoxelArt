scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp material.va = @s material.va
scoreboard players add tmp material.va 1
execute as @e[tag=caught] if score @s Player.va = tmp Player.va store result entity @s Item.tag.Material int 1 run scoreboard players get tmp material.va