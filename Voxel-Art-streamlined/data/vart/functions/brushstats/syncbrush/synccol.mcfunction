#syncs size from brush
execute store result score tmp brushmodel.va run data get entity @s SelectedItem.tag.CustomModelData
execute unless score tmp brushmodel.va matches -1 store result score @s brushmodel.va run scoreboard players get tmp brushmodel.va
