#this function makes some presets to how VoxelArt will act on your world! It will be updated each time a new player joins or when the game reloads.

#keeppage config  -0 = mobileeditor page will be remembered / 1 = mobileeditor page will be reset
scoreboard players set keeppage config.va 0

#crosshair config  -0 = crosshair particles disabled / 1 = crosshair particles enabled
scoreboard players set crosshair config.va 1

#placehelp config  -0 = coloring brushparts disabled / 1 = coloring brushparts enabled
scoreboard players set placehelp config.va 1

#sneakrot config  -0 = stopping brushrotation on sneak disabled / 1 = stopping brushrotation on sneaking enabled
scoreboard players set sneakrot config.va 0

#placelimit config -VoxelArt will move to this many positions every tick with the fill movement (impacts tickrate)
scoreboard players set placelimit config.va 10

#welcomeonjoin config -0 = welcome message won't be send on first connect / 1 = welcome message will be send on first join
scoreboard players set welcomeonjoin config.va 1

#backmodel config -VoxelArt will use this damage state for this model (diamond_hoe)
scoreboard players set backmodel config.va 3

#gunmodelb config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodelb config.va 4

#gunmodeld config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodeld config.va 6

#gunmodelg config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodelg config.va 5

#gunmodelp config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodelp config.va 1

#gunmodelr config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodelr config.va 2

#gunmodely config -VoxelArt will use this damage state for this model (carrot_on_a_stick)
scoreboard players set gunmodely config.va 3
