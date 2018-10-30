#Based on concept taken from a video by NOPEname!
#Idea by ZockerAxel

#gets the player id
scoreboard players operation tmp Player.va = @s Player.va

#adds 1 offset each cycle
scoreboard players add @s offset.va 1

#defines option nessesary to stop casting
execute if entity @e[tag=selector,distance=0] run scoreboard players set @s offset.va 21
execute if entity @e[type=villager,tag=!selector,distance=0] run scoreboard players set @s offset.va 21
###
#defines action if option is met
execute as @s[scores={offset.va=21}] as @e[tag=selector,tag=4,tag=public.va,limit=1,sort=nearest,distance=..1] run scoreboard players operation @e[tag=selector,distance=..3,limit=9] Player.va = tmp Player.va
execute as @s[scores={offset.va=21}] as @e[tag=selector,tag=4,tag=public.va,limit=1,sort=nearest,distance=..1] run scoreboard players operation @e[type=area_effect_cloud,distance=..3,limit=11] Player.va = tmp Player.va
execute as @s[scores={offset.va=21}] if entity @e[tag=selector,distance=..1] run playsound minecraft:ui.button.click ambient @s ~ ~ ~ 1 1 1
execute as @s[scores={offset.va=21},tag=!admin.va] as @e[tag=selector,limit=1,sort=nearest,distance=..1] if score tmp Player.va = @s Player.va run tag @s add click
execute as @s[scores={offset.va=21},tag=admin.va] as @e[tag=selector,limit=1,sort=nearest,distance=..1] run tag @s add click
###

#continues casting if condition isn't met
execute as @s[scores={offset.va=..20}] anchored feet positioned ^ ^ ^.1 run function vart:libraries/pages/pagecast
