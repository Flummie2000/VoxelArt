#is executed by all selector tagged villagers if the players page score matches
#page functions update the names on the mobiledisplays gui and define the effects of triggering an option

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#renames the displays
execute as @s[tag=!lock,tag=item] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Lock display\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @s[tag=lock,tag=item] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Unlock display\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=1.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"score\":{\"name\":\"tmp\",\"objective\":\"Player.va\"}}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=2,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Player:\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=3,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"<\",\"color\":\"grey\",\"underlined\":\"true\"}"}
execute as @s[tag=!public.va,tag=4] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Private\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @s[tag=public.va,tag=4] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=4,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Public\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=4.5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"-\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @s[tag=!bg.va,tag=5] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Background off\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @s[tag=bg.va,tag=5] if score @s Player.va = tmp Player.va as @e[type=area_effect_cloud,sort=nearest,tag=5,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Background on\",\"color\":\"blue\",\"underlined\":\"false\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=6,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\">\",\"color\":\"grey\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=7,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Back\",\"color\":\"dark_red\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=8,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Display Settings\",\"bold\":\"true\",\"color\":\"green\",\"underlined\":\"true\"}"}
execute as @e[type=area_effect_cloud,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {CustomName:"{\"text\":\"Reposition\",\"color\":\"blue\",\"underlined\":\"false\"}"}

#performs action for selector 1 (lock display)
execute as @s[tag=click,tag=1] as @e[tag=!lock,tag=selector,tag=item,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run tag @s add lock
execute as @s[tag=click,tag=1] as @e[type=area_effect_cloud,sort=nearest,tag=1,limit=1] unless entity @s[nbt={CustomName:"{\"underlined\":false,\"color\":\"blue\",\"text\":\"Lock display\"}"}] as @e[tag=lock,tag=selector,sort=nearest,tag=item,limit=1] if score @s Player.va = tmp Player.va run tag @s remove lock

#performs action for selector 2 (Player)
execute as @s[tag=click,tag=2] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s [{"text":" Your player id is: ","color":"grey"},{"score":{"name":"@s","objective":"Player.va"},"bold":"true"}]

#performs action for selector 3 (page left)
execute as @s[tag=click,tag=3] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

#performs action for selector 4 (Private/Public)
execute as @s[tag=click,tag=4] if score @s Player.va = tmp Player.va run tag @s add public.va
execute as @s[tag=click,tag=4] as @e[tag=4,type=area_effect_cloud,sort=nearest,limit=1] if score @s Player.va = tmp Player.va unless entity @s[nbt={CustomName:"{\"underlined\":false,\"color\":\"blue\",\"text\":\"Private\"}"}] as @e[tag=selector,tag=4,tag=click] if score @s Player.va = tmp Player.va run tag @s remove public.va

#performs action for selector 5 (toggle background)
execute as @s[tag=click,tag=5] if score @s Player.va = tmp Player.va run tag @s add bg.va
execute as @s[tag=click,tag=5] as @e[tag=5,type=area_effect_cloud,sort=nearest,limit=1] if score @s Player.va = tmp Player.va unless entity @s[nbt={CustomName:"{\"underlined\":false,\"color\":\"blue\",\"text\":\"Background off\"}"}] as @e[tag=selector,tag=5,tag=click] if score @s Player.va = tmp Player.va run tag @s remove bg.va

#performs action for selector 6 (page right)
execute as @s[tag=click,tag=6] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 3

#performs action for selector 7 (Back)
execute as @s[tag=click,tag=7] as @e[tag=item,tag=selector,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run scoreboard players set @s page.va 1

#performs action for selector 8 (Categroy Info)
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"This category contains settings for this display:","color":"blue","underlined":"true"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":" "}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"1) Lock/Unlock Display: Will stop this displays movement.","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"2) Private/Public: Will toggle wether this display is useable by the nearest player, or only by you.","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"3) Background off/on: Will toggle the displays background.","color":"green"}]
execute as @s[tag=click,tag=8] as @a[sort=nearest] if score @s Player.va = tmp Player.va run tellraw @s ["",{"text":"4) Player: Displays which Player owns/uses this display at the time. Clicking will transfer ownership to next Player","color":"green"}]

#performs action for selector item (reposition)
execute as @s[tag=click,tag=item] as @a[sort=nearest,limit=1] if score @s Player.va = tmp Player.va at @s positioned ^ ^ ^1.5 run function vart:editor/tpparts

execute as @s[tag=click] if score @s Player.va = tmp Player.va run tag @s remove click
