#stored the player id
scoreboard players operation tmp Player.va = @s Player.va

#stores the players rotation
execute store result score tmp2 rotate.va run data get entity @s Rotation[0] 1
execute as @e[tag=position.va] if score @s Player.va = tmp Player.va store result score tmp2 rotate.va run data get entity @s Rotation[0] 1
execute store result score tmp3 rotate.va run data get entity @s Rotation[1] 1
execute as @e[tag=position.va] if score @s Player.va = tmp Player.va store result score tmp3 rotate.va run data get entity @s Rotation[1] 1

#applies staticmod
scoreboard players operation tmp3 rotate.va += staticmodv rotate.va
scoreboard players operation tmp2 rotate.va += staticmodh rotate.va

#calculates overflowing scores
execute if score tmp3 rotate.va matches ..-120 run scoreboard players add tmp3 rotate.va 180
execute if score tmp3 rotate.va matches ..-120 run scoreboard players add tmp3 rotate.va 180
execute if score tmp3 rotate.va matches 60..500 run scoreboard players remove tmp3 rotate.va 180
execute if score tmp3 rotate.va matches 60..500 run scoreboard players remove tmp3 rotate.va 180

#resets rotation
execute if score @s rotate.va matches 0..0 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] store result entity @s Rotation[0] float 1 if score tmp Player.va = @s Player.va run scoreboard players get staticmodh rotate.va
execute if score @s rotate.va matches 0..0 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] store result entity @s Rotation[1] float 1 if score tmp Player.va = @s Player.va run scoreboard players get staticmodv rotate.va
execute if score @s rotate.va matches 0..0 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~

#rotation stopped
execute if score @s rotate.va matches 1..1 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~

#player aligned rotation
execute if score @s rotate.va matches 2..2 unless entity @s[tag=norotate] as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va store result entity @s Rotation[0] float 1 run scoreboard players get tmp2 rotate.va
execute if score @s rotate.va matches 2..2 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~
execute if score @s rotate.va matches 3..3 unless entity @s[tag=norotate] as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va store result entity @s Rotation[1] float 1 run scoreboard players get tmp3 rotate.va
execute if score @s rotate.va matches 3..3 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~
execute if score @s rotate.va matches 4..4 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~

#dynamic rotation
execute if score @s rotate.va matches 6..6 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~
execute if score @s rotate.va matches 6..6 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va at @s run teleport @s ~ ~ ~ ~1 ~
execute if score @s rotate.va matches 7..7 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~
execute if score @s rotate.va matches 7..7 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va at @s run teleport @s ~ ~ ~ ~ ~1

#rotation = 8 = adding x
#rotation = 9 = adding y
#rotation = 10 = set x
#rotation = 11 = set y

execute if score @s rotate.va matches 13..13 unless entity @s[tag=norotate] as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] store result entity @s Rotation[0] float 1 if score tmp Player.va = @s Player.va run scoreboard players get tmp2 rotate.va
execute if score @s rotate.va matches 13..13 unless entity @s[tag=norotate] as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] store result entity @s Rotation[1] float 1 if score tmp Player.va = @s Player.va run scoreboard players get tmp3 rotate.va
execute if score @s rotate.va matches 13..13 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~

#rotation by adding
execute if score @s rotate.va matches 45..45 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~45 ~
execute if score @s rotate.va matches 90..90 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~90 ~
execute if score @s rotate.va matches 135..135 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~135 ~
execute if score @s rotate.va matches 180..180 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~180 ~
execute if score @s rotate.va matches 225..225 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~225 ~
execute if score @s rotate.va matches 270..270 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~270 ~
execute if score @s rotate.va matches 315..315 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~315 ~
execute if score @s rotate.va matches 360..360 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~360 ~

execute if score @s rotate.va matches 450..450 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~45
execute if score @s rotate.va matches 900..900 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~90
execute if score @s rotate.va matches 1350..1350 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~135
execute if score @s rotate.va matches 1800..1800 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~180
execute if score @s rotate.va matches 2250..2250 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~225
execute if score @s rotate.va matches 2700..2700 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~270
execute if score @s rotate.va matches 3150..3150 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~315
execute if score @s rotate.va matches 3600..3600 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ ~360

#rotation by degrees
execute if score @s rotate.va matches 4500..4500 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 45 ~
execute if score @s rotate.va matches 9000..9000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 90 ~
execute if score @s rotate.va matches 13500..13500 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 135 ~
execute if score @s rotate.va matches 18000..18000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 180 ~
execute if score @s rotate.va matches 22500..22500 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 225 ~
execute if score @s rotate.va matches 27000..27000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 270 ~
execute if score @s rotate.va matches 31500..31500 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 315 ~
execute if score @s rotate.va matches 36000..36000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ 360 ~

execute if score @s rotate.va matches 45000..45000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ 45
execute if score @s rotate.va matches 90000..90000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ 90
execute if score @s rotate.va matches 135000..135000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ -45
execute if score @s rotate.va matches 180000..180000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ -90
execute if score @s rotate.va matches 225000..225000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ 45
execute if score @s rotate.va matches 270000..270000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ 90
execute if score @s rotate.va matches 315000..315000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ -45
execute if score @s rotate.va matches 360000..360000 as @e[type=slime,nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score tmp Player.va = @s Player.va run teleport @s ~ ~ ~ ~ -90
