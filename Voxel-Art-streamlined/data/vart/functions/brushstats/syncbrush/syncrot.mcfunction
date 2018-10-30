#syncs rotation from brush
execute store result score tmp rotate.va run data get entity @s SelectedItem.tag.Rot
scoreboard players remove tmp rotate.va 1
execute unless score tmp rotate.va matches -1 store result score @s rotate.va run scoreboard players get tmp rotate.va
