#gives feedback to vart
tag @s add foundm.va

#region movement

#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

##
#region filling is sectioned into 3 stages:

#1 - selection (marker placement)
execute if entity @s[tag=!fillreg.va,tag=!resetreg.va] run function vart:libraries/movements/region/select

#2 - region filling (recursive brush movement)
#tps the brushhead to pos1
execute as @e[tag=pos1.va] if score @s Player.va = tmp Player.va run scoreboard players reset @s age.va
execute if entity @s[tag=fillreg.va] run scoreboard players add @s tmp.va 1
execute if entity @s[tag=fillreg.va] as @e[tag=pos1.va] if score @s Player.va = tmp Player.va at @s run function vart:libraries/movements/region/fill

#3 - resetting region markers
execute if entity @s[tag=!fillreg.va,tag=resetreg.va] run function vart:libraries/movements/region/reset
