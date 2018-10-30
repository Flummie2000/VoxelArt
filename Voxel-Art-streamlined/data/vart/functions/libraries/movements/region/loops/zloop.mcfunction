scoreboard players operation tmp Player.va = @s Player.va

#gets data
execute as @e[tag=pos1.va] if score @s Player.va = tmp Player.va store result score #pos1y config.va run data get entity @s Pos[1]
execute as @e[tag=pos1.va] if score @s Player.va = tmp Player.va store result score #pos1x config.va run data get entity @s Pos[0]
execute as @e[tag=pos2.va] if score @s Player.va = tmp Player.va store result score #pos2z config.va run data get entity @s Pos[2]
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result score #brHz config.va run data get entity @s Pos[2]
execute as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run scoreboard players operation tmp gridsize.va = @s gridsize.va

#brHy = pos1y
scoreboard players operation #brHy config.va = #pos1y config.va
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result entity @s Pos[1] double 1 run scoreboard players get #brHy config.va

#brHx = pos1x
scoreboard players operation #brHx config.va = #pos1x config.va
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result entity @s Pos[0] double 1 run scoreboard players get #brHx config.va

#calculates griddiff
scoreboard players operation #griddiff config.va = #brHz config.va
scoreboard players operation #griddiff config.va -= #pos2z config.va
execute if score #griddiff config.va matches ..-1 run scoreboard players operation #griddiff config.va *= #negate config.va
execute if score #griddiff config.va < tmp gridsize.va run tag @s add zregdone.va

#runs z loop
execute if score #brHz config.va < #pos2z config.va unless entity @s[tag=zregdone.va] run scoreboard players operation #brHz config.va += tmp gridsize.va
execute if score #brHz config.va > #pos2z config.va unless entity @s[tag=zregdone.va] run scoreboard players operation #brHz config.va -= tmp gridsize.va
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result entity @s Pos[2] double 1 run scoreboard players get #brHz config.va
tag @s remove yregdone.va
tag @s remove xregdone.va

execute unless entity @s[tag=zregdone.va] run function vart:libraries/movements/region/fill
