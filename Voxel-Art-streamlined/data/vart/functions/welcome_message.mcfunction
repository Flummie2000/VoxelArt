tellraw @s ["",{"text":"VoxelArt by Flummie2000 has been installed!","color":"blue"}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"To use the settings menu, name a gold block ","color":"gold"},{"text":"Voxel Core","color":"red","clickEvent":{"action": "run_command","value": "/replaceitem entity @s hotbar.4 minecraft:gold_block{display:{Name:\"{\\\"text\\\":\\\"Voxel Core\\\"}\"}}"}},{"text":" and throw it with Q.","color":"gold"}]
tellraw @s ["",{"text":" "}]
tellraw @s ["",{"text":"Visit ","color":"blue"},{"text":"MapLabs","color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/vqmm6TT"},"hoverEvent":{"action":"show_text","value":"Visit us!"}},{"text":" to learn more!","color":"blue"}]

title @s subtitle ["",{"text":"Thanks for installing!","color":"aqua","underlined":true}]
title @s title ["",{"text":"Voxel Art","color":"gold","bold":true,"underlined":true}]
