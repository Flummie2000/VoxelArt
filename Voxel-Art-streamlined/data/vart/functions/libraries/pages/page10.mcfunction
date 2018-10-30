#is executed by all selector tagged villagers if the players page score matches
#page functions update the names on the mobiledisplays gui and define the effects of triggering an option

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va
execute as @a if score @s Player.va = tmp Player.va run scoreboard players operation tmp movement.va = @s movement.va
scoreboard players operation @s movement.va = tmp movement.va

#renames the displays
execute as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˅\",\"color\":\"black\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=1.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"type\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=2,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˄\",\"color\":\"black\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=3,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"<\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˅\",\"color\":\"black\",\"underlined\":\"false\"}"}
execute unless entity @s[scores={movement.va=20..29}] as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"distance\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute if entity @s[scores={movement.va=20..29}] as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"speed\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˄\",\"color\":\"black\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=6,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\">\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=7,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Back\",\"color\":\"dark_red\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=8,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Movement Settings\",\"color\":\"yellow\",\"bold\":\"true\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=0}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"small distance globe\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=1}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"medium distance globe\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=2}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"high distance globe\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=10}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"raycast\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=20}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"slow following globe\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}
execute if entity @s[scores={movement.va=30}] as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"area fill\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}

#performs action for selector 1 (type down)
execute as @e[tag=click,tag=1] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players remove @s movement.va 10

execute as @a[sort=nearest,scores={movement.va=..-1}] if score @s Player.va = tmp Player.va run scoreboard players set @s movement.va 30

#performs action for selector 2 (type up)
execute as @e[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players add @s movement.va 10

execute as @a[sort=nearest,scores={movement.va=40..}] if score @s Player.va = tmp Player.va run scoreboard players set @s movement.va 0

#performs action for selector 3 (page left)
execute as @e[tag=click,tag=3] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 9

#performs action for selector 4 (distance down)
execute as @e[tag=click,tag=4] store success score @s config.va as @p unless entity @s[scores={movement.va=-1}] unless entity @s[scores={movement.va=10}] unless entity @s[scores={movement.va=20}] unless entity @s[scores={movement.va=30}] if score @s Player.va = tmp Player.va run scoreboard players remove @s movement.va 1
execute as @e[tag=click,tag=4] unless entity @s[scores={config.va=1}] as @p if entity @s[scores={movement.va=..-1}] run scoreboard players set @s movement.va 9
execute as @e[tag=click,tag=4] unless entity @s[scores={config.va=1}] as @p if entity @s[scores={movement.va=10}] run scoreboard players set @s movement.va 19
execute as @e[tag=click,tag=4] unless entity @s[scores={config.va=1}] as @p if entity @s[scores={movement.va=20}] run scoreboard players set @s movement.va 29
execute as @e[tag=click,tag=4] unless entity @s[scores={config.va=1}] as @p if entity @s[scores={movement.va=30}] run scoreboard players set @s movement.va 39
execute as @e[tag=click,tag=4] run scoreboard players reset @s config.va

#performs action for selector 5 (distance up)
execute as @e[tag=click,tag=5] as @a[sort=nearest] unless entity @s[scores={movement.va=9}] unless entity @s[scores={movement.va=19}] unless entity @s[scores={movement.va=29}] unless entity @s[scores={movement.va=39}] if score @s Player.va = tmp Player.va run scoreboard players add @s movement.va 1
execute as @e[tag=click,tag=5] as @a[sort=nearest] if entity @s[scores={movement.va=9}] run scoreboard players set @s movement.va 0
execute as @e[tag=click,tag=5] as @a[sort=nearest] if entity @s[scores={movement.va=19}] run scoreboard players set @s movement.va 10
execute as @e[tag=click,tag=5] as @a[sort=nearest] if entity @s[scores={movement.va=29}] run scoreboard players set @s movement.va 20
execute as @e[tag=click,tag=5] as @a[sort=nearest] if entity @s[scores={movement.va=39}] run scoreboard players set @s movement.va 30

#performs action for selector 6 (page right)
execute as @e[tag=click,tag=6] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 11

#performs action for selector 7 (Back)
execute as @e[tag=click,tag=7] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

#performs action for selector 8 (Category Info)
execute as @e[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"This category contains movement settings for your Voxel brush:","color":"blue","underlined":"true"}]
execute as @e[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":" "}]
execute as @e[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"1) Type: Changes the type of movement your brush is using.","color":"green"}]
execute as @e[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"2) Distance/Speed: Changes the movement types specifications.","color":"green"}]
execute as @e[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"3) Clicking the displayed name of the movement will save your movement settings to caught palettes.","color":"green"}]

#performs action for selector item (safe to Brush)
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savemov
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savecaughtmov

execute as @e[tag=click] if score @s Player.va = tmp Player.va run tag @s remove click
