scoreboard players operation tmp Player.va = @s Player.va

#gets data
execute as @e[tag=pos2.va] if score @s Player.va = tmp Player.va store result score #pos2y config.va run data get entity @s Pos[1]
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result score #brHy config.va run data get entity @s Pos[1]
execute as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run scoreboard players operation tmp gridsize.va = @s gridsize.va

#calculates griddiff
scoreboard players operation #griddiff config.va = #brHy config.va
scoreboard players operation #griddiff config.va -= #pos2y config.va
execute if score #griddiff config.va matches ..-1 run scoreboard players operation #griddiff config.va *= #negate config.va
execute if score #griddiff config.va < tmp gridsize.va run tag @s add yregdone.va

#runs y loop
execute if score #brHy config.va < #pos2y config.va unless entity @s[tag=yregdone.va] run scoreboard players operation #brHy config.va += tmp gridsize.va
execute if score #brHy config.va > #pos2y config.va unless entity @s[tag=yregdone.va] run scoreboard players operation #brHy config.va -= tmp gridsize.va
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result entity @s Pos[1] double 1 run scoreboard players get #brHy config.va

execute unless entity @s[tag=yregdone.va] run function vart:libraries/movements/region/fill
