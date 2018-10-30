#manages the bID library when the VoxelBrush is triggered
#executed by players brush parts each tick the player draws

#tmp stores the Player score
scoreboard players operation tmp Player.va = @s Player.va

#fancy effect
#particle minecraft:cloud ~ ~ ~ 0 0 0 0 0 force @a

##prepares material score
#transfers settings
scoreboard players set tmp layerpattern.va 0
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va if score @s layerpattern.va matches 1.. run scoreboard players set tmp layerpattern.va 1
execute unless score tmp layerpattern.va matches 1 store result score @s material.va as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run scoreboard players get @s material.va
execute store result score @s replace.va as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run scoreboard players get @s replace.va

#calls layerpatterns (functions set material for each brushpart depending on players layer scores)
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run function vart:libraries/layerpatterns

#rewrites smooth scores
#execute as @s[scores={brush.va=3}] run scoreboard players reset @s smooth.va
#execute as @s[scores={brush.va=3}] unless block ~ ~ ~ #vart:air run scoreboard players add @s smooth.va 1
#execute as @s[scores={brush.va=3}] unless block ~ ~1 ~1 #vart:air run scoreboard players add @s smooth.va 1
#execute as @s[scores={brush.va=3}] unless block ~ ~1 ~-1 #vart:air run scoreboard players add @s smooth.va 1
#execute as @s[scores={brush.va=3}] unless block ~1 ~1 ~ #vart:air run scoreboard players add @s smooth.va 1
#execute as @s[scores={brush.va=3}] unless block ~-1 ~1 ~ #vart:air run scoreboard players add @s smooth.va 1
#execute as @s[scores={brush.va=3}] unless block ~ ~2 ~ #vart:air run scoreboard players add @s smooth.va 1

#execute as @s[scores={brush.va=3}] if score tmp smooth.va > @s smooth.va run scoreboard players set @s material.va 0

#checks for the block if brush is replacing
execute if score @s replace.va matches 0.. run function bid:detectblocks
execute if score @s replace.va matches 0.. unless score @s detected.bID = @s replace.va run scoreboard players set @s material.va -1

##

#transfers data to bID
scoreboard players operation @s material.bID = @s material.va

#places a block via bID
execute if entity @s[tag=!large.bID] run function bid:placeblocks
execute if entity @s[tag=large.bID] run function bid:fillblocks

#resets the brush parts material
scoreboard players reset @s[type=!player] material.va
tag @s[type=!player] remove noedit
