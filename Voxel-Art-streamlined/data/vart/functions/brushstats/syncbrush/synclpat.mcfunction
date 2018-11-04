#syncs layerpattern from brush
execute store result score tmp layerpattern.va run data get entity @s SelectedItem.tag.lpat
scoreboard players remove tmp layerpattern.va 1
execute unless score tmp layerpattern.va matches -1 store result score @s layerpattern.va run scoreboard players get tmp layerpattern.va
