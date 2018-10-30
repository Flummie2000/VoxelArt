#executed by all brush parts
#recursion?
scoreboard players operation tmp Player.va = @s Player.va
execute as @e[tag=brush,distance=2..] if score @s Player.va = tmp Player.va at @s if block ~ ~ ~ #vart:air run tp @s ~ ~-1 ~
execute as @e[tag=brush,distance=5..] if score @s Player.va = tmp Player.va at @s if block ~ ~ ~ #vart:air run tp @s ~ ~-1 ~
execute as @e[tag=brush,distance=7..] if score @s Player.va = tmp Player.va at @s if block ~ ~ ~ #vart:air run tp @s ~ ~-1 ~
execute as @e[tag=brush,distance=9..] if score @s Player.va = tmp Player.va at @s if block ~ ~ ~ #vart:air run tp @s ~ ~-1 ~
execute as @e[tag=brush,distance=12..] if score @s Player.va = tmp Player.va at @s if block ~ ~ ~ #vart:air run tp @s ~ ~-1 ~
execute as @e[tag=brush,distance=14..] if score @s Player.va = tmp Player.va at @s if block ~ ~1 ~ #vart:air run tp @s ~ ~-1 ~
