#gives feedback to vart
tag @s add foundm.va

#brushmovement is 20 blocks infront of the player
execute as @s[tag=!largemov.va] anchored eyes positioned ^ ^ ^20 align xyz positioned ~.5 ~-.25 ~.5 run function vart:libraries/movements/rotation/rotate
execute as @s[tag=largemov.va] anchored eyes positioned ^ ^ ^20 align xyz positioned ~.5 ~-1.5 ~.5 run function vart:libraries/movements/rotation/rotate
