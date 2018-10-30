#this function gets executed by all entities with the brush tag!
scoreboard players operation tmp Player.va = @s Player.va

#resets offset movement
execute as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run tag @s remove largemov.va

#makes all brushparts with a "large" tag large
execute if entity @s[tag=large.bID] run data merge entity @s {Size:7}
execute if entity @s[tag=large.bID] as @a[tag=runVoxel] if score @s Player.va = tmp Player.va run tag @s add largemov.va
execute if entity @s[tag=!large.bID] run data merge entity @s {Size:2}

#makes every brush inside a block go red
execute if score placehelp config.va matches 1 as @s[tag=!large.bID] at @s unless block ~ ~1 ~ #vart:air run team join inblock
execute if score placehelp config.va matches 1 as @s[tag=!large.bID] at @s if block ~ ~1 ~ #vart:air run team join collision

execute if score placehelp config.va matches 1 as @s[tag=large.bID] at @s positioned ~ ~1 ~ unless block ~ ~2 ~ #vart:air unless blocks ~-1 ~ ~-1 ~1 ~1 ~1 ~ ~2 ~ all run team join inblock
execute if score placehelp config.va matches 1 as @s[tag=large.bID] at @s positioned ~ ~1 ~ if block ~ ~2 ~ #vart:air unless blocks ~-1 ~ ~-1 ~1 ~1 ~1 ~ ~2 ~ all run team join inblock
execute if score placehelp config.va matches 1 as @s[tag=large.bID] at @s positioned ~ ~1 ~ if block ~ ~2 ~ #vart:air if blocks ~-1 ~ ~-1 ~1 ~1 ~1 ~ ~2 ~ all run team join collision
