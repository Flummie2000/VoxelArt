#casts tapping raycast
execute as @a[scores={displaytap.va=1..}] at @s run function vart:editor/tap

#function entitybased for brushheads
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] at @s run function vart:entitybased/brushhead10

#contains everything active for players running VoxelArt
execute as @a[tag=runVoxel] at @s run function vart:vartrun/vartrun10

#executes all functions of the editor
execute as @e[tag=selector,tag=item] at @s run function vart:entitybased/editorrun

#Starts up Voxel for players with a Voxelbrush
execute as @a[gamemode=!spectator,tag=!runVoxel,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Voxel Brush\""}}}}] run function vart:vartrun/start_stop/start

#brushvisuals (large,inblock)
execute as @e[tag=brush] run function vart:entitybased/brushvisuals
