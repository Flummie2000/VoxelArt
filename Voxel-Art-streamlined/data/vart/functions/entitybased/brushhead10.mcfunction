#this function is executed by the brush head!
#tmp stores the brush heads Player
scoreboard players operation tmp Player.va = @s Player.va

#makes a visual "compass" when the 3DCompass config.va is 1
execute if entity @s[tag=!large.bID] if score crosshair config.va matches 1 run function vart:vartrun/compass
execute if entity @s[tag=large.bID] if score crosshair config.va matches 1 positioned ~ ~1 ~ run function vart:vartrun/compass
