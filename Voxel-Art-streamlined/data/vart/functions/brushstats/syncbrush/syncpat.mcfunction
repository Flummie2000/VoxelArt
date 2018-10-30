#syncs pattern from brush
execute store result score tmp shape.va run data get entity @s SelectedItem.tag.Pat
scoreboard players remove tmp shape.va 1
execute unless score tmp shape.va matches -1 store result score @s shape.va run scoreboard players get tmp shape.va
