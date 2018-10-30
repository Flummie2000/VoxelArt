#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#gets the players material percentages
scoreboard players operation tmp p1.va = @s p1.va
scoreboard players operation tmp p2.va = @s p2.va
scoreboard players operation tmp p3.va = @s p3.va
scoreboard players operation tmp p4.va = @s p4.va
scoreboard players operation tmp p5.va = @s p5.va
scoreboard players operation tmp p6.va = @s p6.va
scoreboard players operation tmp p7.va = @s p7.va
scoreboard players operation tmp p8.va = @s p8.va
scoreboard players operation tmp p9.va = @s p9.va
scoreboard players operation tmp p10.va = @s p10.va

#amount calculator

#calculates p1
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p1.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p1.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p2
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p2.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p2.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p3
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p3.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p3.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p4
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p4.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p4.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p5
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p5.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p5.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p6
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p6.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p6.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p7
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p7.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p7.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p8
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p8.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p8.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p9
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p9.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p9.va = tmp1 brushcount.va

#score reset step
#gets the total brushcount
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation tmp1 brushcount.va = @s brushcount.va
#adds 1 to the total brushcount (brush head)
scoreboard players add tmp1 brushcount.va 1

#calculates p10
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 10000
#multiplies the total brushcount to make calculation more accurate (30*10000=300000) in tmp brushcount
scoreboard players operation tmp1 brushcount.va *= calc brushcount.va
#sets a multiplier for calculation
scoreboard players set calc brushcount.va 1000000
#devides the multiplier with the players set percentage (1000000/35=28571)
scoreboard players operation calc brushcount.va /= tmp p10.va
#devides the total brushcount through the players percentage (300000/28571=10)
scoreboard players operation tmp1 brushcount.va /= calc brushcount.va
#saves the result of the calculation on the brushhead
execute as @e[nbt={CustomName:"{\"text\":\"Brush Head\"}"}] if score @s Player.va = tmp Player.va run scoreboard players operation @s p10.va = tmp1 brushcount.va
