#is executed by all selector tagged villagers if the players page score matches
#page functions update the names on the mobiledisplays gui and define the effects of triggering an option

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#renames the displays
execute as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˅\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=1.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Size\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=2,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˄\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=3,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"<\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˅\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Shape\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"˄\",\"color\":\"dark_blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=6,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\">\",\"color\":\"grey\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=7,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Back\",\"color\":\"dark_red\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=8,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Shape Settings\",\"color\":\"yellow\",\"bold\":\"true\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Bind to brush\",\"color\":\"dark_green\",\"underlined\":\"true\"}"}

#performs action for selector 1 (Size down)
execute as @e[tag=click,tag=1] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players remove @s grow.va 1

#performs action for selector 2 (Size up)
execute as @e[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players add @s grow.va 1

#performs action for selector 3 (page left)
execute as @e[tag=click,tag=3] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 11

#performs action for selector 4 (Shape down)
execute as @e[tag=click,tag=4] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players remove @s pattern.va 1

#performs action for selector 5 (Shape up)
execute as @e[tag=click,tag=5] as @a[sort=nearest] if score @s Player.va = tmp Player.va run scoreboard players add @s pattern.va 1

#performs action for selector 6 (page right)
execute as @e[tag=click,tag=6] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 9

#performs action for selector 7 (Back)
execute as @e[tag=click,tag=7] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

#performs action for selector item (save to brush)
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savepat
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savegrow
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savecaughtpat
execute as @e[tag=click,tag=item] as @a[sort=nearest] if score @s Player.va = tmp Player.va run function vart:libraries/savebrush/savecaughtgrow

execute as @e[tag=click] if score @s Player.va = tmp Player.va run tag @s remove click
