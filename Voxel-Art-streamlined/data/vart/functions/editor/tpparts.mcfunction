#gets the player score
scoreboard players operation tmp Player.va = @s Player.va

#teleports the selectors
execute as @e[tag=selector,tag=1,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^1 ^ facing entity @p
execute as @e[tag=selector,tag=2,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^1.7 ^ facing entity @p
execute as @e[tag=selector,tag=3,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^ ^ facing entity @p
execute as @e[tag=selector,tag=4,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^1 ^ facing entity @p
execute as @e[tag=selector,tag=5,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^1.7 ^ facing entity @p
execute as @e[tag=selector,tag=6,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^ ^ facing entity @p
execute as @e[tag=selector,tag=7,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^.2 ^ facing entity @p
execute as @e[tag=selector,tag=8,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^1.9 ^ facing entity @p
execute as @e[tag=selector,tag=item,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^.7 ^ facing entity @p

#teleports display clouds
execute as @e[type=area_effect_cloud,tag=1,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^.8 ^
execute as @e[type=area_effect_cloud,tag=1.5,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^1.15 ^
execute as @e[type=area_effect_cloud,tag=2,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^1.5 ^
execute as @e[type=area_effect_cloud,tag=3,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^1 ^ ^
execute as @e[type=area_effect_cloud,tag=4,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^.8 ^
execute as @e[type=area_effect_cloud,tag=4.5,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^1.15 ^
execute as @e[type=area_effect_cloud,tag=5,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^1.5 ^
execute as @e[type=area_effect_cloud,tag=6,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^-1 ^ ^
execute as @e[type=area_effect_cloud,tag=7,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^ ^
execute as @e[type=area_effect_cloud,tag=8,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^2 ^
execute as @e[type=area_effect_cloud,tag=item,sort=nearest,limit=1] if score @s Player.va = tmp Player.va run teleport @s ^ ^.5 ^

#updates cloud visuals
execute as @e[type=area_effect_cloud,sort=nearest,limit=11] run data merge entity @s {Radius:0.1f}
execute as @e[type=area_effect_cloud,sort=nearest,limit=11] run data merge entity @s {Radius:0.0f}
