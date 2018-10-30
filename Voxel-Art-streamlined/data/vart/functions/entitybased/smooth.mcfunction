#rewrites smooth scores
scoreboard players reset @s smooth.va
execute unless block ~ ~ ~ #vart:air run scoreboard players add @s smooth.va 1
execute unless block ~ ~1 ~1 #vart:air run scoreboard players add @s smooth.va 1
execute unless block ~ ~1 ~-1 #vart:air run scoreboard players add @s smooth.va 1
execute unless block ~1 ~1 ~ #vart:air run scoreboard players add @s smooth.va 1
execute unless block ~-1 ~1 ~ #vart:air run scoreboard players add @s smooth.va 1
execute unless block ~ ~2 ~ #vart:air run scoreboard players add @s smooth.va 1

execute if score tmp smooth.va > @s smooth.va run scoreboard players set @s material.va 0
