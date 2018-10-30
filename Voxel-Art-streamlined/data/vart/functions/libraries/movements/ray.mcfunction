#Based on concept taken from a video by NOPEname!
#Idea by ZockerAxel
scoreboard players operation tmp Player.va = @s Player.va
scoreboard players add @s offset.va 1
execute if entity @s[scores={snapping.va=0}] unless block ^ ^ ^ #vart:air run scoreboard players set @s offset.va 1001
execute if entity @s[scores={snapping.va=1}] unless block ^ ^ ^1 #vart:air run scoreboard players set @s offset.va 1001
execute if entity @s[scores={snapping.va=2}] unless blocks ~1 ~1 ~1 ~-1 ~-1 ~-1 ~ ~ ~ all if block ~ ~ ~ minecraft:air run scoreboard players set @s offset.va 1001
###
execute as @s[scores={offset.va=1001}] align xyz positioned ~.5 ~-.25 ~.5 run function vart:libraries/movements/rotation/rotate
###

execute as @s[scores={offset.va=..1000}] anchored feet positioned ^ ^ ^1 run function vart:libraries/movements/ray
