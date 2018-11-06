#will create a new brush item with the custommodeldata specified in newbrush config.va
summon minecraft:item ~ ~ ~ {Tags:[regmodel.va],Item:{id:"minecraft:carrot_on_a_stick",Count:1,tag:{display:{Name:"\"Voxel Brush\"",Lore:["Clean brush: set your options using /trigger!"]}}}}
execute as @e[tag=regmodel.va] store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get newbrush config.va
tag @e[tag=regmodel.va] remove regmodel.va