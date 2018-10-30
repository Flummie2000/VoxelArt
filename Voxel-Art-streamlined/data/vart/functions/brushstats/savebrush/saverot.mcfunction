scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp rotate.va = @s rotate.va
scoreboard players add tmp rotate.va 1
execute store result entity @s SelectedItem.tag.Rot int 1 run scoreboard players get tmp rotate.va
