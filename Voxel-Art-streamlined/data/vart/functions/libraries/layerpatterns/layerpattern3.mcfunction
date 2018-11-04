#this function gets executed by all brushparts which trigger block placement.
#this function is supposed to set the brushparts materials independently from the players material score
#use @s[scores={brushcount=(number)}] to target a certain brushpart
#you can use layerpatterns to sort any material to a brushpart

scoreboard players operation tmp Player.va = @s Player.va
execute store result score tmp material.va run data get entity @s Pos[1] 1

execute if score tmp material.va matches 4.. run scoreboard players set @s material.va 0
execute if score tmp material.va matches 3 run scoreboard players set @s material.va 259
execute if score tmp material.va matches 1..2 run scoreboard players set @s material.va 248
execute if score tmp material.va matches 0 run scoreboard players set @s material.va 33
#add anything to define the brushparts material here!
