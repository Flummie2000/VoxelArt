scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp shape.va = @s shape.va
scoreboard players add tmp shape.va 1
execute store result entity @s SelectedItem.tag.Pat int 1 run scoreboard players get tmp shape.va
