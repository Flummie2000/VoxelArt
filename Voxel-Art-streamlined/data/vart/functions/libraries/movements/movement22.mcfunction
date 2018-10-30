#gives feedback to vart
tag @s add foundm.va

#smooth brushhead movement

#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

####
#spawns a marker armorstand tracking cursor position
execute unless entity @e[tag=destination.va,tag=setup] run summon armor_stand ^ ^ ^10 {Tags:["destination.va"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Small:1b,DisabledSlots:2039583,Marker:1}
#gives the player score to the marker
execute store result score @e[tag=destination.va,tag=!setup,sort=nearest,limit=1] Player.va run scoreboard players get @s Player.va
tag @e[tag=!setup,tag=destination.va] add setup
####

#makes the marker armorstand teleport to the cursor
execute anchored eyes positioned ^ ^ ^30 align xyz positioned ~.5 ~-.25 ~.5 as @e[tag=destination.va] if score @s Player.va = tmp Player.va run teleport @s ~ ~ ~

####
#makes brushhead spawn an armorstand to reference
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] unless entity @e[tag=position.va,tag=setup] run summon armor_stand ~ ~ ~ {Tags:["position.va"],Invisible:1b,Invulnerable:1b,NoGravity:1b,ShowArms:1b,Small:1b,DisabledSlots:2039583,Marker:1}
#gives the player score to the armorstand
execute store result score @e[tag=position.va,tag=!setup,sort=nearest,limit=1] Player.va run scoreboard players get @s Player.va
tag @e[tag=!setup,tag=position.va,sort=nearest,limit=1] add setup
####

#makes the armorstand teleport the brushhead to itself
execute as @e[tag=position.va] if score @s Player.va = tmp Player.va at @s as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run function vart:libraries/movements/rotation/rotate
#teleports the armorstand 1 block facing the marker
execute as @e[tag=position.va] at @s if score @s Player.va = tmp Player.va unless entity @e[tag=destination,distance=..1] run teleport @s ^ ^ ^1 facing entity @e[tag=destination.va,limit=1] eyes
