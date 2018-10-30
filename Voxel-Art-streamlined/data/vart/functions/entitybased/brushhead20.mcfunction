#this function is executed by the brush head!
#tmp stores the brush heads Player
scoreboard players operation tmp Player.va = @s Player.va

#stores the players selected shape
execute as @s store result score @s shape.va as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players get @s shape.va

#teleports the brushparts relative to the brush head
execute at @s if entity @s[tag=!large.bID] run function vart:libraries/shape
execute at @s if entity @s[tag=large.bID] positioned ~ ~1 ~ run function vart:libraries/shape

#stores the players size
execute store result score @s size.va as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players get @s size.va

#grows the brush
execute if score @s size.va matches 1.. as @s at @s run function vart:entitybased/brushcounter
