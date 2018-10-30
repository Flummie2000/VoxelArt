#sending welcome message
execute if score welcomeonjoin config.va matches 1 run function vart:welcome_message

#setting defaults
scoreboard players set @s page.va 1
scoreboard players set @s rotate.va 0
scoreboard players set @s shape.va 1
scoreboard players set @s gridsize.va 1
scoreboard players set @s override.va 0
scoreboard players set @s material.va 2
scoreboard players set @s path.va 0
scoreboard players set @s drawmethod.va 2
scoreboard players set @s cooldown.va 0
scoreboard players set @s fillmode.va 1
scoreboard players set @s brush.va 1
scoreboard players set @s movement.va 1
scoreboard players set @s smooth.va 4
scoreboard players set @s layerpattern.va 0
scoreboard players set @s snapping.va 1
scoreboard players set @s replace.va -1

#creating PlayerID
execute store result score @s Player.va run scoreboard players get Reference Player.va
scoreboard players add Reference Player.va 1

tag @s add vartsetup
