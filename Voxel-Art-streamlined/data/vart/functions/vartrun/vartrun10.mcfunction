#sets max values for options
execute as @s at @s run function vart:libraries/maxset

#inits f switching
execute if entity @s[nbt=!{SelectedItem:{}}] if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Voxel Brush\""}}}]}] run function vart:fswitch/main
scoreboard players reset @s fsneak.va

#stops VoxelArt for players without a Voxel Core or a brush
execute as @s[nbt=!{SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Voxel Brush\""}}}}] as @s run function vart:vartrun/start_stop/stop

#stops VoxelArt for players in spectator mode
execute as @s[gamemode=spectator] at @s run function vart:vartrun/start_stop/stop

#plays a sound
playsound minecraft:vart.draw block @s[tag=playsound] ~ ~ ~ 1 1 1
tag @s[tag=playsound] remove playsound

#syncs your scores to the brush you're holding
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] at @s run function vart:brushstats/sync

#turns the brushsettings on and off for the first 10 Players
#more general? functions which runs when ANY vart using players are in the world
bossbar set vart:0 players @a[scores={Player.va=0},tag=runVoxel]
bossbar set vart:1 players @a[scores={Player.va=1},tag=runVoxel]
bossbar set vart:2 players @a[scores={Player.va=2},tag=runVoxel]
bossbar set vart:3 players @a[scores={Player.va=3},tag=runVoxel]
bossbar set vart:4 players @a[scores={Player.va=4},tag=runVoxel]
bossbar set vart:5 players @a[scores={Player.va=5},tag=runVoxel]
bossbar set vart:6 players @a[scores={Player.va=6},tag=runVoxel]
bossbar set vart:7 players @a[scores={Player.va=7},tag=runVoxel]
bossbar set vart:8 players @a[scores={Player.va=8},tag=runVoxel]
bossbar set vart:9 players @a[scores={Player.va=9},tag=runVoxel]
bossbar set vart:10 players @a[scores={Player.va=10},tag=runVoxel]

#function to refill lower Player scores (playerrefill config.va)

#syncs the brush settings bar for the first 10 Players with a clean brush
execute as @s[scores={Player.va=0},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:0 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=1},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:1 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=2},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:2 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=3},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:3 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=4},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:4 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=5},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:5 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=6},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:6 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=7},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:7 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=8},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:8 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=9},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:9 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]
execute as @s[scores={Player.va=10},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:10 name ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]

#syncs the brush settings bar for the first 10 Players without a clean brush
execute as @s[scores={Player.va=0},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:0 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=1},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:1 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=2},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:2 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=3},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:3 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=4},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:4 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=5},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:5 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=6},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:6 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=7},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:7 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=8},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:8 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=9},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:9 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
execute as @s[scores={Player.va=10},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run bossbar set vart:10 name ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]


#displays settings for brush, distance, grow, layerpattern and material ID in actionbar
execute as @s[scores={Player.va=11..},nbt={SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run title @s actionbar ["",{"text":"Movement: ","color":"green"},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow"},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red"},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue"},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Rotation: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"rotate.va"},"color":"dark_aqua","bold":true,"underlined":true}]

#displays locked stats when brush isnt clean
execute as @s[scores={Player.va=11..},nbt=!{SelectedItem:{tag:{display:{Lore:["Clean brush: set your options using /trigger!"]}}}}] run title @s actionbar ["",{"text":"Movement: ","color":"green","strikethrough":true},{"score":{"name":"@s","objective":"movement.va"},"color":"green","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Material ID: ","color":"dark_blue","strikethrough":true},{"score":{"name":"@s","objective":"material.va"},"color":"dark_blue","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Size: ","color":"yellow","strikethrough":true},{"score":{"name":"@s","objective":"grow.va"},"color":"yellow","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Shape: ","color":"red","strikethrough":true},{"score":{"name":"@s","objective":"shape.va"},"color":"red","bold":true,"underlined":true,"strikethrough":true},{"text":" | ","color":"gray","bold":false,"underlined":false},{"text":"Layerpattern: ","color":"dark_aqua","strikethrough":true},{"score":{"name":"@s","objective":"layerpattern.va"},"color":"dark_aqua","bold":true,"underlined":true,"strikethrough":true}]
