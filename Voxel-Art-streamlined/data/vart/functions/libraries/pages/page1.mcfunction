#is executed by all selector tagged villagers if the players page score matches
#page functions update the names on the mobiledisplays gui and define the effects of triggering an option

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#renames the displays
execute as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Brush Settings\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=1.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"-\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=2,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Tools\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=3,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"<\",\"color\":\"grey\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Brush sets\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"-\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Commands\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=6,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\">\",\"color\":\"grey\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=7,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Close\",\"color\":\"dark_red\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=8,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"General Settings\",\"bold\":\"true\",\"color\":\"green\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va unless entity @e[tag=caught,distance=..3] run data merge entity @s {CustomName:"{\"text\":\"drop Brush\",\"color\":\"red\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va if entity @e[tag=caught,distance=..3] run data merge entity @s {CustomName:"{\"text\":\"take Brush\",\"color\":\"blue\",\"underlined\":\"false\"}"}

#performs action for selector 1 (brush settings)
execute as @s[tag=click,tag=1] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 10

#performs action for selector 2 (get clean brush)
scoreboard players operation newbrush config.va = gunmodelr config.va
execute as @s[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va at @s run function vart:entitybased/newbrush

#performs action for selector 3 (page left)
execute as @s[tag=click,tag=3] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 3

#performs action for selector 4 (brush sets)
execute as @s[tag=click,tag=4] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run say WIP

#performs action for selector 5 (commands page)
execute as @s[tag=click,tag=5] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run say WIP

#performs action for selector 6 (page right)
execute as @s[tag=click,tag=6] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 2

#performs action for selector 7 (Close)
execute as @s[tag=click,tag=7] as @a[sort=nearest,limit=1] if score @s Player.va = tmp Player.va run give @s minecraft:gold_block{display:{Name:"{\"text\":\"Voxel Core\"}"}}
execute as @s[tag=click,tag=7] as @e[type=area_effect_cloud,distance=..2] if score @s Player.va = tmp Player.va run kill @s
execute as @s[tag=click,tag=7] as @e[tag=caught,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {PickupDelay:0}
execute as @s[tag=click,tag=7] as @e[tag=selector,distance=..2] if score @s Player.va = tmp Player.va run teleport @s ~ ~-1000 ~
execute as @s[tag=click,tag=7] as @e[tag=selector,distance=..10] if score @s Player.va = tmp Player.va run kill @s

#performs action for selector 8 (Catgory Info)
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"This category contains main subcategorys:","color":"blue","underlined":"true"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":" "}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"1) Commands: Has handy commands to control the world around you.","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"2) Brush Settings: All settings for VoxelArt brushes!","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"3) Palette sets: Premade palettes for a quick start!","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"4) Tools: Give yourself the VoxelArt tools.","color":"green"}]

#performs action for item (drop brush)
execute as @s[tag=click,tag=item] as @e[tag=caught,tag=setup] run data merge entity @s {NoGravity:0b,PickupDelay:0}
execute as @s[tag=click,tag=item] as @e[tag=caught,tag=setup] run teleport @s @p

execute as @s[tag=click] if score @s Player.va = tmp Player.va run tag @s remove click
