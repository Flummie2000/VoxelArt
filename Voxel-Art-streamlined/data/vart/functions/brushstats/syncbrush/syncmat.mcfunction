#syncs material from brush
execute store result score tmp material.va run data get entity @s SelectedItem.tag.Material
scoreboard players remove tmp material.va 1
execute unless score tmp material.va matches -1 store result score @s material.va run scoreboard players get tmp material.va
