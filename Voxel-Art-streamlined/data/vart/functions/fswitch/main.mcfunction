#xchange
execute unless score @s fsneak.va matches 1.. run function vart:fswitch/xcycl

#ychange
execute if score @s fsneak.va matches 1.. run function vart:fswitch/ycycl

#reset
execute at @s run function vart:fswitch/reset
