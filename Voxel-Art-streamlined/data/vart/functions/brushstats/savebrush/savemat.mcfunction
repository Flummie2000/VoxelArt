scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp material.va = @s material.va
scoreboard players add tmp material.va 1
execute store result entity @s SelectedItem.tag.Material int 1 run scoreboard players get tmp material.va
