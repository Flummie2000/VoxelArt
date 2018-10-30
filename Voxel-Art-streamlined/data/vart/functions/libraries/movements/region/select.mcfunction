#makes player able to select a region

#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

#rightclick and drag to select
#blocks drawing
scoreboard players set @s override.va 1

#teleports the brush when not dragging
execute if entity @s[scores={cooldown.va=0}] anchored eyes positioned ^ ^ ^10 align xyz positioned ~.5 ~-.25 ~.5 run function vart:libraries/movements/rotation/rotate

##when dragging
#spawns a pos1 marker
execute if entity @s[scores={cooldown.va=1..}] as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va at @s unless entity @e[tag=pos1.va,scores={Player.va=1..}] run summon armor_stand ~ ~1 ~ {Tags:["pos1.va"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Small:1b,DisabledSlots:2039583,Marker:1,Glowing:1}
execute as @e[tag=pos1.va] unless score @s Player.va matches 1.. run scoreboard players operation @s Player.va = tmp Player.va

execute if entity @s[scores={cooldown.va=1..}] anchored eyes positioned ^ ^ ^10 align xyz positioned ~.5 ~-.25 ~.5 run function vart:libraries/movements/rotation/rotate
execute if entity @s[scores={cooldown.va=1..}] run tag @s add sel1.va

#spawns a pos2 marker
execute if entity @s[scores={cooldown.va=0},tag=sel1.va] as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va at @s unless entity @e[tag=pos2.va,scores={Player.va=1..}] run summon armor_stand ~ ~1 ~ {Tags:["pos2.va"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Small:1b,DisabledSlots:2039583,Marker:1,Glowing:1}
execute as @e[tag=pos2.va] unless score @s Player.va matches 1.. run scoreboard players operation @s Player.va = tmp Player.va
##

#starts filling
execute if entity @s[scores={cooldown.va=0},tag=sel1.va] run tag @s add fillreg.va
#reset position
execute if entity @s[scores={cooldown.va=0},tag=sel1.va] as @e[tag=pos1.va] if score @s Player.va = tmp Player.va at @s as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run teleport @s ~ ~-1 ~
execute if entity @s[scores={cooldown.va=0},tag=sel1.va] run tag @s remove sel1.va
