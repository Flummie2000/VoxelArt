#gives feedback to vart
tag @s add foundm.va

#brushmovement is a raycast from the player
scoreboard players set @s offset.va 0
execute if entity @s[scores={offset.va=0}] anchored feet positioned ~ ~1.4 ~ run function vart:libraries/movements/ray
