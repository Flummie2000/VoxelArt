#is executed by all selector tagged villagers if the players page score matches
#page functions update the names on the mobiledisplays gui and define the effects of triggering an option

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#renames the displays
execute as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˅\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=1.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"ID\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=2,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˄\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=3,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"<\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Var: 1\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\" \",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"North\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=6,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\">\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=7,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Back\",\"color\":\"dark_red\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=8,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Material Settings\",\"color\":\"yellow\",\"bold\":\"true\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Bind to brush\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}

#performs action for selector 1 (ID down)
execute as @e[tag=click,tag=1] run kill @e[type=falling_block]
execute as @e[tag=click,tag=1] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players remove @s material.va 1
execute as @e[tag=click,tag=1] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s [{"text":"Your material ID is now ","color":"blue"},{"score":{"name":"@s","objective":"material.va"},"color":"gold"}]
execute if entity @e[tag=click,tag=1] store result score @s material.bID as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players get @s material.va
tag @s add sand.bID
execute if entity @e[tag=click,tag=1] positioned ^ ^.5 ^-1.5 run function bid:placeblocks
execute if entity @e[tag=click,tag=1] run data merge entity @e[type=falling_block,limit=1,sort=nearest] {DropItem:0,NoGravity:1,Time:-99999}

#performs action for selector 2 (ID up)
execute as @e[tag=click,tag=2] run kill @e[type=falling_block]
execute as @e[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players add @s material.va 1
execute as @e[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s [{"text":"Your material ID is now ","color":"blue"},{"score":{"name":"@s","objective":"material.va"},"color":"gold"}]
execute if entity @e[tag=click,tag=2] store result score @s material.bID as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players get @s material.va
tag @s add sand.bID
execute if entity @e[tag=click,tag=2] positioned ^ ^.5 ^-1.5 run function bid:placeblocks
execute if entity @e[tag=click,tag=2] run data merge entity @e[type=falling_block,limit=1,sort=nearest] {DropItem:0,NoGravity:1,Time:-99999}

#performs action for selector 3 (page left)
execute as @e[tag=click,tag=3] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 10

#performs action for selector 4 ()
execute as @e[tag=click,tag=4] as @a[sort=nearest] if score @s Player.va = tmp Player.va run say WIP

#performs action for selector 5 ()
execute as @e[tag=click,tag=5] as @a[sort=nearest] if score @s Player.va = tmp Player.va run say WIP

#performs action for selector 6 (page right)
execute as @e[tag=click,tag=6] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 12

#performs action for selector 7 (Back)
execute as @e[tag=click,tag=7] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

#performs action for selector item (save to brush)
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["Saving material with ID ",{"score":{"name":"@s","objective":"material.va"},"color":"green","bold":false,"underlined":false,"strikethrough":false}," to all brushes caught by the display or held by the player."]
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savemat
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savecaughtmat

execute as @e[tag=click] if score @s Player.va = tmp Player.va run tag @s remove click
