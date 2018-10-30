#resets region entities and tags

#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

execute as @e[tag=pos1.va] if score @s Player.va = tmp Player.va run scoreboard players operation tmp age.va = @s age.va
scoreboard players operation @s age.va = tmp age.va
tellraw @s ["Brush moved to ",{"score":{"name":"@s","objective":"age.va"},"color":"green","bold":false,"underlined":false,"strikethrough":false}," positions in ",{"score":{"name":"@s","objective":"tmp.va"},"color":"green","bold":false,"underlined":false,"strikethrough":false}," ticks."]
scoreboard players reset @s tmp.va
execute as @e[tag=pos1.va] if score @s Player.va = tmp Player.va run kill @s
execute as @e[tag=pos2.va] if score @s Player.va = tmp Player.va run kill @s

scoreboard players set @s override.va 0
tag @s remove resetreg.va