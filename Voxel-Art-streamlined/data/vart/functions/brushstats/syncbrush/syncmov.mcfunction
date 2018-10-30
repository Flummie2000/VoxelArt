#syncs movement from brush
execute store result score tmp movement.va run data get entity @s SelectedItem.tag.Move
scoreboard players remove tmp movement.va 1
execute unless score tmp movement.va matches -1 store result score @s movement.va run scoreboard players get tmp movement.va
