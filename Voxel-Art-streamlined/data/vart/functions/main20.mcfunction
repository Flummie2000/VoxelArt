#contains everything active for players running VoxelArt
execute as @a[tag=runVoxel] at @s run function vart:vartrun/vartrun20

#function entitybased for brushheads
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] at @s run function vart:entitybased/brushhead20

#resets stoprotation.va score ##repos to vartrun
execute if score sneakrot config.va matches 1 run function vart:libraries/stoprotation
