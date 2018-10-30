#gets executed for all selectors with the item tag
#executed from main10

#tmp stores the Player score
scoreboard players operation tmp Player.va = @s Player.va

#makes brushes caught and bound to mobiledisplay (NoGravity,Motion)
execute as @s unless entity @e[tag=caught,distance=..2] run tag @e[distance=..2,type=item,limit=1,nbt={Item: {tag:{display: {Name:"\"Voxel Brush\""}}}}] add caught
execute as @e[tag=caught,tag=!setup] run data merge entity @s {Motion:[0],NoGravity:1,PickupDelay:32768,Age:-32768}
execute as @e[tag=caught,tag=!setup] store result score @s Player.va run scoreboard players get tmp Player.va
execute as @e[tag=caught,tag=!setup] run tag @s add setup

#runs something for all display selectors
execute as @e[tag=selector] run function vart:editor/selectors

#makes the display follow unless locked
scoreboard players operation tmp Player.va = @s Player.va
execute as @s[tag=!lock] as @a if score @s Player.va = tmp Player.va at @s positioned ^ ^ ^1.5 unless entity @e[tag=selector,distance=..2,limit=9] run function vart:editor/tpparts

#teleports the caught brush
execute at @s rotated as @s as @e[tag=caught] if score @s Player.va = tmp Player.va run teleport @s ^ ^1 ^-1

#updates the page
scoreboard players operation tmp Player.va = @s Player.va
execute if score @s page.va matches 1 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page1
execute if score @s page.va matches 2 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page2
execute if score @s page.va matches 3 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page3
execute if score @s page.va matches 4 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page4
execute if score @s page.va matches 5 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page5
execute if score @s page.va matches 6 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page6
execute if score @s page.va matches 7 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page7
execute if score @s page.va matches 8 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page8
execute if score @s page.va matches 9 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page9
execute if score @s page.va matches 10 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page10
execute if score @s page.va matches 11 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page11
execute if score @s page.va matches 12 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page12
execute if score @s page.va matches 13 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page13
execute if score @s page.va matches 14 as @e[tag=selector,sort=nearest,limit=9] if score @s Player.va = tmp Player.va run function vart:libraries/pages/page14

#makes mobiledisplay check the villagers option tag when players click count triggers and executes the command
