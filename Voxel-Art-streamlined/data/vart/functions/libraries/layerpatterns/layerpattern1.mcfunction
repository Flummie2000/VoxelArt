#this function gets executed by all brushparts which trigger block placement.
#this function is supposed to set the brushparts materials independently from the players material score
#use @s[scores={brushcount=(number)}] to target a certain brushpart
#you can use layerpatterns to sort any material to a brushpart

scoreboard players operation tmp Player.va = @s Player.va
execute as @e[tag=brush] if score @s Player.va = tmp Player.va store result score tmp material.va run data get entity @s Pos[1] 1

#add anything to define the brushparts material here!

execute store result score @s material.va run scoreboard players get tmp material.va
