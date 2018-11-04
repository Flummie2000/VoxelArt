#calls all functions for reading from a held brush
function vart:brushstats/slotcalc
execute as @s run function vart:brushstats/syncbrush/syncmat
execute as @s run function vart:brushstats/syncbrush/syncmov
execute as @s run function vart:brushstats/syncbrush/syncpat
execute as @s run function vart:brushstats/syncbrush/synclpat
execute as @s run function vart:brushstats/syncbrush/syncrot
execute as @s run function vart:brushstats/syncbrush/syncsiz
