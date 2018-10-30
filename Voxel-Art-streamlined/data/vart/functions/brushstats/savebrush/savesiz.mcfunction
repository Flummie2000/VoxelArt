scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp grow.va = @s grow.va
scoreboard players add tmp grow.va 1
execute store result entity @s SelectedItem.tag.Size int 1 run scoreboard players get tmp grow.va
