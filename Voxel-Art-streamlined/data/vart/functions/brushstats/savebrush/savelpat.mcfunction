scoreboard players operation tmp Player.va = @s Player.va
scoreboard players operation tmp layerpattern.va = @s layerpattern.va
scoreboard players add tmp layerpattern.va 1
execute store result entity @s SelectedItem.tag.lpat int 1 run scoreboard players get tmp layerpattern.va
