##priority loops (different tickrates)
#high priority (20ticks a sec)
function vart:main20

#medium priority (10ticks a sec)
execute if score 10/20 tick.va matches 1 run function vart:main10
execute if score 10/20 tick.va matches 2 run scoreboard players set 10/20 tick.va 0
scoreboard players add 10/20 tick.va 1

#low priority (1tick a sec)
execute if score 1/20 tick.va matches 10 run function vart:main1
execute unless score 1/20 tick.va matches 20 run scoreboard players add 1/20 tick.va 1
execute if score 1/20 tick.va matches 20 run scoreboard players set 1/20 tick.va 0
