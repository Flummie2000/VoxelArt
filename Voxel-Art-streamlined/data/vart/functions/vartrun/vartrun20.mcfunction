#this function contains everything active while using VoxelArt
#executed in main20 by players with the runVoxel tag

#brush related functions (movement,click,place)
function vart:vartrun/brush

#makes brush grow an shrink according to your brushcount
#temporarily saves the brushheads brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run scoreboard players operation tmp brushcount.va = @s brushcount.va

#if minbrushcount of player is higher than brushcount of brush increase brushsize
execute if score @s minbrushcount.va > tmp brushcount.va run scoreboard players set @s size.va 1
#if maxbrushcount of Player is lower than brushcount of brush reset brushsize
execute if score @s maxbrushcount.va < tmp brushcount.va run execute as @e[tag=brush,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run tp @s ~ ~-1000 ~
execute if score @s maxbrushcount.va < tmp brushcount.va run execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run scoreboard players set @s brushcount.va 0
execute if score @s maxbrushcount.va < tmp brushcount.va run execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run tag @s remove large.bID
execute if score @s maxbrushcount.va < tmp brushcount.va run execute as @e[tag=brush,nbt=!{CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run kill @s
