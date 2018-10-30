scoreboard players operation tmp Player.va = @s Player.va

scoreboard players set @s trigger.va 0

#redo brushhead to be non brush entity,handle targeting with tag
execute at @s run summon slime ^ ^ ^-1 {Tags:["brush"],CustomName:"{\"text\":\"Brush Head\"}",CustomNameVisible:1,NoGravity:1b,Size:2,NoAI:1,Silent:1,Glowing:1b,ActiveEffects:[{Id:11,Amplifier:10000,Duration:2000000,ShowParticles:0b},{Id:14,Amplifier:1,Duration:20000000,ShowParticles:0b}]}

execute at @s run execute store result score @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"},limit=1,sort=nearest] Player.va run scoreboard players get @s Player.va

execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run scoreboard players set @s brushcount.va 0

tag @s add runVoxel
