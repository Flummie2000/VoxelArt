#cycles the materials down
scoreboard players operation m10tmp tmp.va = @s m10.va
scoreboard players operation @s m10.va = @s m9.va
scoreboard players operation @s m9.va = @s m8.va
scoreboard players operation @s m8.va = @s m7.va
scoreboard players operation @s m7.va = @s m6.va
scoreboard players operation @s m6.va = @s m5.va
scoreboard players operation @s m5.va = @s m4.va
scoreboard players operation @s m4.va = @s m3.va
scoreboard players operation @s m3.va = @s m2.va
scoreboard players operation @s m2.va = @s m1.va
scoreboard players operation @s m1.va = @s material.va
scoreboard players operation @s material.va = m10tmp tmp.va

execute if score fmatspawn config.va matches 1 run tag @s add sand.bID
execute if score fmatspawn config.va matches 1 run execute at @s positioned ^ ^1 ^2 align xyz positioned ~.5 ~.2 ~.5 unless entity @e[tag=bIDspawn,distance=..2] run function vart:entitybased/clickevent
execute if score fmatspawn config.va matches 1 run execute at @s positioned ^ ^1 ^2 align xyz positioned ~.5 ~.2 ~.5 as @e[tag=bIDspawn] run data merge entity @s {DropItem:0,Time:590,NoGravity:1}
execute if score fmatspawn config.va matches 1 run tag @e[tag=bIDspawn] remove bIDspawn
execute if score fmatspawn config.va matches 1 run tag @s remove sand.bID
