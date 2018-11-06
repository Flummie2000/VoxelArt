tag @a remove norotate
tag @a remove switch
tag @a remove runVoxel

scoreboard objectives remove Player.va
scoreboard objectives remove tick.va
scoreboard objectives remove brushcount.va
scoreboard objectives remove age.va
scoreboard objectives remove config.va
scoreboard objectives remove cooldown.va
scoreboard objectives remove displaytap.va
scoreboard objectives remove drawmethod.va
scoreboard objectives remove editoreffect.va
scoreboard objectives remove grow.va
scoreboard objectives remove layerpattern.va
scoreboard objectives remove m1.va
scoreboard objectives remove m2.va
scoreboard objectives remove m3.va
scoreboard objectives remove m4.va
scoreboard objectives remove m5.va
scoreboard objectives remove m6.va
scoreboard objectives remove m7.va
scoreboard objectives remove m8.va
scoreboard objectives remove m9.va
scoreboard objectives remove m10.va
scoreboard objectives remove maxbrushcount.va
scoreboard objectives remove minbrushcount.va
scoreboard objectives remove movement.va
scoreboard objectives remove offset.va
scoreboard objectives remove p1.va
scoreboard objectives remove p2.va
scoreboard objectives remove p3.va
scoreboard objectives remove p4.va
scoreboard objectives remove p5.va
scoreboard objectives remove p6.va
scoreboard objectives remove p7.va
scoreboard objectives remove p8.va
scoreboard objectives remove p9.va
scoreboard objectives remove p10.va
scoreboard objectives remove page.va
scoreboard objectives remove path.va
scoreboard objectives remove replace.va
scoreboard objectives remove rotate.va
scoreboard objectives remove size.va
scoreboard objectives remove brushmodel.va
scoreboard objectives remove smooth.va
scoreboard objectives remove snapping.va
scoreboard objectives remove stoprotation.va
scoreboard objectives remove tmp.va
scoreboard objectives remove trigger.va
scoreboard objectives remove override.va
scoreboard objectives remove fsneak.va
scoreboard objectives remove shape.va
scoreboard objectives remove gridsize.va
scoreboard objectives remove fswitch.va
scoreboard objectives remove material.va
scoreboard objectives remove brush.va
scoreboard objectives remove fillmode.va

bossbar remove vart:0
bossbar remove vart:1
bossbar remove vart:2
bossbar remove vart:3
bossbar remove vart:4
bossbar remove vart:5
bossbar remove vart:6
bossbar remove vart:7
bossbar remove vart:8
bossbar remove vart:9
bossbar remove vart:10

tp @e[tag=brush] ~ ~-250 ~
kill @e[tag=brush]

tag @a remove vartsetup
datapack disable "file/Voxel-Art-streamlined"
