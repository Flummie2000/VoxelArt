scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp movement.va = @s movement.va
scoreboard players add tmp movement.va 1
execute store result entity @s SelectedItem.tag.Move int 1 run scoreboard players get tmp movement.va
