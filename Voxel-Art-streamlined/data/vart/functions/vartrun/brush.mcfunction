#executed as all players running VoxelArt
#all brush related functions
scoreboard players operation tmp Player.va = @s Player.va

##handles brushmovement
function vart:libraries/movement

###

##handles placing with position correction of entity offset (slime position isn't centered on the block when slime appears to be directly on the block)
#places blocks when path is disabled
execute if entity @s[scores={drawmethod.va=3,cooldown.va=1..,override.va=0}] as @e[tag=brush,tag=!large.bID] if score tmp Player.va = @s Player.va at @s positioned ~ ~.75 ~ unless entity @e[tag=!brush,distance=..1] run function vart:entitybased/clickevent
execute if entity @s[scores={drawmethod.va=..2,override.va=0,trigger.va=1..}] as @e[tag=brush,tag=!large.bID] if score tmp Player.va = @s Player.va at @s positioned ~ ~.75 ~ unless entity @e[tag=!brush,distance=..1] run function vart:entitybased/clickevent

#places blocks when path is disabled for large brushes
execute if entity @s[scores={drawmethod.va=3,cooldown.va=1..,override.va=0}] as @e[tag=brush,tag=large.bID] if score tmp Player.va = @s Player.va at @s positioned ~ ~1.75 ~ unless entity @e[tag=!brush,distance=..2] run function vart:entitybased/clickevent
execute if entity @s[scores={drawmethod.va=..2,trigger.va=1..,override.va=0}] as @e[tag=brush,tag=large.bID] if score tmp Player.va = @s Player.va at @s positioned ~ ~1.75 ~ unless entity @e[tag=!brush,distance=..2] run function vart:entitybased/clickevent

###

##handles clicking
#drawmethod 1 - toggle to draw
scoreboard players set @s[scores={drawmethod.va=1,trigger.va=2..}] trigger.va 0

#drawmethod 2 - click to draw
execute if entity @s[scores={cooldown.va=1..,trigger.va=1..}] run scoreboard players set @s drawmethod.va 3
scoreboard players remove @s[scores={drawmethod.va=2,cooldown.va=1..}] cooldown.va 1
scoreboard players set @s[scores={drawmethod.va=2,trigger.va=1..,cooldown.va=0}] cooldown.va 4
scoreboard players set @s[scores={drawmethod.va=2,trigger.va=1..}] trigger.va 0

#drawmethod 3 - hold down to draw - toggled on longer usage of click to draw
scoreboard players set @s[scores={drawmethod.va=3,trigger.va=1..}] cooldown.va 6
scoreboard players remove @s[scores={drawmethod.va=3,trigger.va=0,cooldown.va=1..}] cooldown.va 1
scoreboard players remove @s[scores={drawmethod.va=3,trigger.va=1..}] trigger.va 1
execute as @s[scores={drawmethod.va=3,trigger.va=0,cooldown.va=0}] run scoreboard players set @s drawmethod.va 2
