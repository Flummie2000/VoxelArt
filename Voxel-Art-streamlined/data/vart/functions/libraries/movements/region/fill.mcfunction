#fills the area between pos1.va and pos2.va recursively
#executed by pos1.va

#places blocks along the y axis

#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

#stores positions of brushhead and pos2
execute as @e[tag=pos2.va] if score @s Player.va = tmp Player.va store result score #pos2y config.va run data get entity @s Pos[1]
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result score #brHy config.va run data get entity @s Pos[1]
execute as @e[tag=pos2.va] if score @s Player.va = tmp Player.va store result score #pos2x config.va run data get entity @s Pos[0]
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va store result score #brHx config.va run data get entity @s Pos[0]

execute if entity @s[tag=zregdone.va] as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run tag @s remove fillreg.va
execute if entity @s[tag=zregdone.va] as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run tag @s add resetreg.va

#moves the rest of the brush
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va at @s if entity @s[tag=!large.va] run function vart:libraries/shape
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va at @s if entity @s[tag=large.va] positioned ~ ~1 ~ run function vart:libraries/shape

#brush places block
execute as @e[tag=brush] if score @s Player.va = tmp Player.va at @s positioned ~ ~.75 ~ run function vart:entitybased/clickevent

#counts positions
scoreboard players add @s age.va 1

#yloop
execute unless score @s age.va >= placelimit config.va if entity @s[tag=!yregdone.va,tag=!xregdone.va] run function vart:libraries/movements/region/loops/yloop

#xloop
execute unless score @s age.va >= placelimit config.va if entity @s[tag=yregdone.va] run function vart:libraries/movements/region/loops/xloop

#zloop
execute unless score @s age.va >= placelimit config.va if entity @s[tag=xregdone.va] run function vart:libraries/movements/region/loops/zloop
