#clears the Brush Head
scoreboard players operation tmp Player.va = @s Player.va

execute as @e[tag=brush] if score tmp Player.va = @s Player.va run tp @s ~ ~-1000 ~
execute as @e[tag=destination.va] if score tmp Player.va = @s Player.va run kill @s
execute as @e[tag=position.va] if score tmp Player.va = @s Player.va run kill @s
execute as @e[tag=brush] if score tmp Player.va = @s Player.va run kill @s
execute as @e[tag=brush] if score tmp Player.va = @s Player.va run function vart:vartrun/start_stop/stop

tag @s remove runVoxel
