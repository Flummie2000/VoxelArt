scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp brushmodel.va = @s brushmodel.va
execute store result entity @s SelectedItem.tag.CustomModelData int 1 run scoreboard players get tmp brushmodel.va
