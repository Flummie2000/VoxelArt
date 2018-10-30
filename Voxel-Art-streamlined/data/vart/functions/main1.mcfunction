#triggers 1tick each second

#prepares the game for new players
execute as @a[tag=!vartsetup] at @s run function vart:setup

#enables switchable objectives
scoreboard players enable @a material.va

#makes editor spawn
execute as @e[nbt={Item: {id:"minecraft:gold_block",tag: {display: {Name:"{\"text\":\"Voxel Core\"}"}}}}] at @s unless entity @e[tag=selector,distance=..5] as @p[distance=..2,gamemode=!spectator,limit=1] at @s positioned ^ ^ ^1.5 anchored eyes run function vart:editor/spawndisplay

#makes mirror spawn
#execute as @e[nbt={Item: {id:"minecraft:gold_block",tag: {display: {Name:"{\"text\":\"Voxel Core\"}"}}}}] at @s if block ~ ~-1 ~ minecraft:observer at @s run function vart:mirror/mirror
