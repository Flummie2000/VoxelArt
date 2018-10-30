#gets executed by all selector tagged villagers
scoreboard players operation tmp Player.va = @s Player.va

#turns background on and off
execute as @s[tag=5,tag=bg.va] at @s as @e[tag=item,sort=nearest,tag=selector,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",tag:{Damage:3s,Unbreakable:1},Count:1b}]}
execute as @s[tag=5,tag=bg.va] at @s as @e[tag=item,sort=nearest,tag=selector,limit=1] if score @s Player.va = tmp Player.va store result entity @s ArmorItems[3].tag.Damage int 1 run scoreboard players get backmodel config.va
execute as @s[tag=5,tag=!bg.va] at @s as @e[tag=item,sort=nearest,tag=selector,limit=1] if score @s Player.va = tmp Player.va run data merge entity @s {ArmorItems:[{},{},{},{}]}

#execute at @s[tag=item,tag=public]
