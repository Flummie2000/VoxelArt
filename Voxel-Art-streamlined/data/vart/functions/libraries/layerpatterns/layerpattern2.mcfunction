#this function gets executed by all brushparts which trigger block placement.
#this function is supposed to set the brushparts materials independently from the players material score
#use @s[scores={brushcount.va=(number)}] to target a certain brushpart
#you can use layerpatterns to sort any material to a brushpart

#gets the Player score
scoreboard players operation tmp Player.va = @s Player.va

#
#
#add anything to define the brushparts material here!
#counts nessesary possible results
execute as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run function vart:libraries/layerpatterns/random/givemat
function vart:libraries/layerpatterns/random/getmat
scoreboard players set tmp1 rand.va 0
scoreboard players operation tmp1 rand.va += @s p1.va
scoreboard players operation tmp1 rand.va += @s p2.va
scoreboard players operation tmp1 rand.va += @s p3.va
scoreboard players operation tmp1 rand.va += @s p4.va
scoreboard players operation tmp1 rand.va += @s p5.va
scoreboard players operation tmp1 rand.va += @s p6.va
scoreboard players operation tmp1 rand.va += @s p7.va
scoreboard players operation tmp1 rand.va += @s p8.va
scoreboard players operation tmp1 rand.va += @s p9.va
scoreboard players operation tmp1 rand.va += @s p10.va

#uses UUID randomizer to choose material
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rand.va"]}
execute store result score tmp rand.va run data get entity @e[tag=rand.va,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=rand.va]
execute if score tmp rand.va matches ..-1 run scoreboard players operation tmp rand.va *= #negate config.va
scoreboard players set #max/parts rand.va 2147483647
scoreboard players operation #max/parts rand.va /= tmp1 rand.va
scoreboard players operation tmp rand.va /= #max/parts rand.va

#sets material
execute if score tmp rand.va < @s p1.va run scoreboard players operation @s material.va = @s m1.va
execute if score tmp rand.va < @s p1.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p1.va run scoreboard players operation tmp rand.va -= @s p1.va
execute if score tmp rand.va < @s p2.va run scoreboard players operation @s material.va = @s m2.va
execute if score tmp rand.va < @s p2.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p2.va run scoreboard players operation tmp rand.va -= @s p2.va
execute if score tmp rand.va < @s p3.va run scoreboard players operation @s material.va = @s m3.va
execute if score tmp rand.va < @s p3.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p3.va run scoreboard players operation tmp rand.va -= @s p3.va
execute if score tmp rand.va < @s p4.va run scoreboard players operation @s material.va = @s m4.va
execute if score tmp rand.va < @s p4.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p4.va run scoreboard players operation tmp rand.va -= @s p4.va
execute if score tmp rand.va < @s p5.va run scoreboard players operation @s material.va = @s m5.va
execute if score tmp rand.va < @s p5.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p5.va run scoreboard players operation tmp rand.va -= @s p5.va
execute if score tmp rand.va < @s p6.va run scoreboard players operation @s material.va = @s m6.va
execute if score tmp rand.va < @s p6.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p6.va run scoreboard players operation tmp rand.va -= @s p6.va
execute if score tmp rand.va < @s p7.va run scoreboard players operation @s material.va = @s m7.va
execute if score tmp rand.va < @s p7.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p7.va run scoreboard players operation tmp rand.va -= @s p7.va
execute if score tmp rand.va < @s p8.va run scoreboard players operation @s material.va = @s m8.va
execute if score tmp rand.va < @s p8.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p8.va run scoreboard players operation tmp rand.va -= @s p8.va
execute if score tmp rand.va < @s p9.va run scoreboard players operation @s material.va = @s m9.va
execute if score tmp rand.va < @s p9.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p9.va run scoreboard players operation tmp rand.va -= @s p9.va
execute if score tmp rand.va < @s p10.va run scoreboard players operation @s material.va = @s m10.va
execute if score tmp rand.va < @s p10.va run scoreboard players set tmp rand.va 2147483647
execute if score tmp rand.va > @s p10.va run scoreboard players operation tmp rand.va -= @s p10.va
