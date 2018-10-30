#gives each new spawned brush part a brushcount score
#is executed from each Brush Head with a size score of 1

scoreboard players operation tmp Player.va = @s Player.va

#spawns the brushparts
execute at @s run summon slime ~ ~ ~ {Tags:["brush"],NoGravity:1b,Size:2,NoAI:1,Silent:1,Glowing:1b,ActiveEffects:[{Id:11,Amplifier:10000,Duration:2000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}

#sets the player for the brushparts
execute store result score @e[tag=brush,distance=..2,tag=!setup] Player.va run scoreboard players get @s Player.va
execute as @e[tag=brush,tag=!setup] if score tmp Player.va = @s Player.va run scoreboard players set @s brushcount.va 0

#stores the brushcount
execute store result score @e[distance=..2,tag=brush,tag=!setup,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"},limit=1] brushcount.va run scoreboard players get @s brushcount.va
scoreboard players add @s brushcount.va 1

execute as @e[tag=!setup,scores={brushcount.va=1..}] run tag @s add setup

#runs reloadblock when brushcount is reached
scoreboard players operation tmp brushcount.va = @s brushcount.va
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va if score @s minbrushcount.va = tmp brushcount.va run function vart:vartrun/reloadblocks

#removes 1 size score
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players remove @s size.va 1
