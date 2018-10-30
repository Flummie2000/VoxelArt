#syncs size from brush
execute store result score tmp grow.va run data get entity @s SelectedItem.tag.Size
scoreboard players remove tmp grow.va 1
execute unless score tmp grow.va matches -1 store result score @s grow.va run scoreboard players get tmp grow.va
