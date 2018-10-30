#this function spawns the display parts (villagers) and sorts them to a player

#in inspiration of a shop system by Killyon

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#kills the VoxelCore
kill @e[nbt={Item: {id:"minecraft:gold_block",tag: {display: {Name:"{\"text\":\"Voxel Core\"}"}}}},limit=1,sort=nearest]

#spawn villagers
execute run summon villager ^-1 ^ ^ {Tags:["selector","1"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^-1 ^ ^ {Tags:["1"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=1,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=1,tag=!setup,limit=2,sort=nearest] add setup

summon area_effect_cloud ^-1 ^ ^ {Tags:["1.5"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=1.5,limit=1,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=1.5,tag=!setup,limit=1,sort=nearest] add setup

execute run summon villager ^-1 ^1 ^ {Tags:["selector","2"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^-1 ^1 ^ {Tags:["2"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=2,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=2,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^-1 ^-1 ^ {Tags:["selector","3"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^-1 ^-1 ^ {Tags:["3"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=3,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=3,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^1 ^ ^ {Tags:["selector","4"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^1 ^ ^ {Tags:["4"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=4,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=4,tag=!setup,limit=2,sort=nearest] add setup

summon area_effect_cloud ^1 ^ ^ {Tags:["4.5"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=4.5,limit=1,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=4.5,tag=!setup,limit=1,sort=nearest] add setup

execute run summon villager ^1 ^1 ^ {Tags:["selector","5"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^1 ^1 ^ {Tags:["5"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=5,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=5,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^1 ^-1 ^ {Tags:["selector","6"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^1 ^-1 ^ {Tags:["6"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=6,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=6,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^ ^-1 ^ {Tags:["selector","7"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^ ^-1 ^ {Tags:["7"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=7,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=7,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^ ^1 ^ {Tags:["selector","8"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}]}
summon area_effect_cloud ^ ^1 ^ {Tags:["8"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=8,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=8,tag=!setup,limit=2,sort=nearest] add setup

execute run summon villager ^ ^ ^ {Tags:["selector","item"],NoGravity:1b,Small:1,NoAI:1,Silent:1,Invulnerable:1,Offers:{},ActiveEffects:[{Id:14,Amplifier:1,Duration:19999980,ShowParticles:0b}],CustomNameVisible:1,CustomName:"{\"text\":\"Insert Brush\",\"color\":\"red\",\"underlined\":\"true\"}"}
summon area_effect_cloud ^ ^ ^ {Tags:["item"],NoGravity:1b,Duration:999999,CustomNameVisible:1,CustomName:"{\"text\":\"Test\",\"color\":\"red\",\"underlined\":\"true\"}"}
execute store result score @e[tag=item,limit=2,tag=!setup] Player.va run scoreboard players get tmp Player.va
tag @e[tag=item,tag=!setup,limit=2,sort=nearest] add setup

#makes display have no collision
execute as @e[tag=selector] if score @s Player.va = tmp Player.va run team join collision @s

#inits the first menu for the player
execute unless score keeppage config.va matches 1 as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

tag @s add setup

execute at @s positioned ^ ^ ^1.5 run function vart:editor/tpparts
