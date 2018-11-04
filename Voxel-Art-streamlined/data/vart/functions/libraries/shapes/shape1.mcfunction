#gives feedback to vart
tag @s add foundsh.va

#shapes:
#You can easily create your own shapes to use with Voxel Art!

#This function is executed by all brush parts!
scoreboard players operation tmp Player.va = @s Player.va

#tmp stores the players shape so only players having this shape selected get the max or min brushcount
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players operation tmp shape.va = @s shape.va

#tmp stores grow to change brushpart position between grow stages
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players operation tmp grow.va = @s grow.va

#sets the counters max (time until brush movement will be repeated)

#tmp stores the counter score to make dynamic brushes

#this defines the minimum amount of brush parts (blocks) your brush needs to work
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players set @s minbrushcount.va -1
#this defines the maximum amount of brushparts your brush can have before resetting itself
execute as @a[tag=runVoxel] if score tmp Player.va = @s Player.va run scoreboard players set @s maxbrushcount.va 100

#these growstages define the amount of brush parts which should be in each grow stage
#sets growstages for brush
execute as @a[tag=runVoxel,scores={grow.va=0}] if score @s shape.va = tmp shape.va run scoreboard players set @s minbrushcount.va 0
execute as @a[tag=runVoxel,scores={grow.va=0}] if score @s shape.va = tmp shape.va run scoreboard players set @s maxbrushcount.va 5

execute as @a[tag=runVoxel,scores={grow.va=1}] if score @s shape.va = tmp shape.va run scoreboard players set @s minbrushcount.va 6
execute as @a[tag=runVoxel,scores={grow.va=1}] if score @s shape.va = tmp shape.va run scoreboard players set @s maxbrushcount.va 23

execute as @a[tag=runVoxel,scores={grow.va=2}] if score @s shape.va = tmp shape.va run scoreboard players set @s minbrushcount.va 24
execute as @a[tag=runVoxel,scores={grow.va=2}] if score @s shape.va = tmp shape.va run scoreboard players set @s maxbrushcount.va 24

execute as @a[tag=runVoxel,scores={grow.va=3}] if score @s shape.va = tmp shape.va run scoreboard players set @s minbrushcount.va 6
execute as @a[tag=runVoxel,scores={grow.va=3}] if score @s shape.va = tmp shape.va run scoreboard players set @s maxbrushcount.va 6

execute as @a[tag=runVoxel,scores={grow.va=4..}] if score @s shape.va = tmp shape.va run scoreboard players set @s grow.va 0

execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=0},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=1},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=2},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=3},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=4},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=5},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^-1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~

execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=6},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^-2 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=7},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^2 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=8},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^2 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=9},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-2 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=10},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^2 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=11},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^-2 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=12},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^ ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=13},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^ ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=14},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^ ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=15},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^ ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=16},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^-1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=17},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=18},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^-1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=19},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=20},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=21},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^-1 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=22},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=23},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^-1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~

execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=24},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=25},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^-1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=26},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^-1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=27},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^-1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=28},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^-1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=29},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^1 ^1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=30},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^1 ^1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches ..2 as @e[scores={brushcount.va=31},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-1 ^1 ^-1 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~

execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=0},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^-2 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=1},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^ ^2 align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=2},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^2 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=3},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^-2 ^ ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=4},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^2 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[scores={brushcount.va=5},tag=brush,type=slime,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va as @s positioned ^ ^-2 ^ align xyz positioned ~.5 ~.75 ~.5 run teleport @s ~ ~ ~
execute if score tmp grow.va matches 3 as @e[tag=brush,type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run tag @s add large.bID

#applies brush melting
#function vart:libraries/melt