scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp movement.va = @s movement.va
scoreboard players add tmp movement.va 1
execute as @e[tag=caught] if score @s Player.va = tmp Player.va store result entity @s Item.tag.Move int 1 run scoreboard players get tmp movement.va