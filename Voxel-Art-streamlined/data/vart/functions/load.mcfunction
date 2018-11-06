#triggers on reloads
#creating scoreboards
scoreboard objectives add tick.va dummy
scoreboard objectives add config.va dummy
scoreboard objectives add trigger.va minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add Player.va dummy
scoreboard objectives add material.va trigger
scoreboard objectives add movement.va dummy
scoreboard objectives add brush.va dummy
scoreboard objectives add fillmode.va dummy
scoreboard objectives add path.va dummy
scoreboard objectives add cooldown.va dummy
scoreboard objectives add age.va dummy
scoreboard objectives add drawmethod.va dummy
scoreboard objectives add override.va dummy
scoreboard objectives add size.va dummy
scoreboard objectives add brushmodel.va dummy
scoreboard objectives add tmp.va dummy
scoreboard objectives add smooth.va dummy
scoreboard objectives add brushcount.va dummy
scoreboard objectives add shape.va dummy
scoreboard objectives add gridsize.va dummy
scoreboard objectives add minbrushcount.va dummy
scoreboard objectives add maxbrushcount.va dummy
scoreboard objectives add grow.va dummy
scoreboard objectives add rotate.va dummy
scoreboard objectives add layerpattern.va dummy
scoreboard objectives add offset.va dummy
scoreboard objectives add snapping.va dummy
#which block should this be replaced with?
scoreboard objectives add replace.va dummy
scoreboard objectives add displaytap.va minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add stoprotation.va minecraft.custom:minecraft.sneak_time
scoreboard objectives add fsneak.va minecraft.custom:minecraft.sneak_time
#used to track the fswitch menu
scoreboard objectives add fswitch.va dummy
#used to track the display page
scoreboard objectives add page.va dummy
#used to store extra materials
scoreboard objectives add m1.va dummy
scoreboard objectives add m2.va dummy
scoreboard objectives add m3.va dummy
scoreboard objectives add m4.va dummy
scoreboard objectives add m5.va dummy
scoreboard objectives add m6.va dummy
scoreboard objectives add m7.va dummy
scoreboard objectives add m8.va dummy
scoreboard objectives add m9.va dummy
scoreboard objectives add m10.va dummy
#used to define percents
scoreboard objectives add p1.va dummy
scoreboard objectives add p2.va dummy
scoreboard objectives add p3.va dummy
scoreboard objectives add p4.va dummy
scoreboard objectives add p5.va dummy
scoreboard objectives add p6.va dummy
scoreboard objectives add p7.va dummy
scoreboard objectives add p8.va dummy
scoreboard objectives add p9.va dummy
scoreboard objectives add p10.va dummy
scoreboard objectives add rand.va dummy

function vart:libraries/config

execute unless score Reference Player.va matches 0.. run scoreboard players set Reference Player.va 1
scoreboard players set tmp rotate.va -90

#creating teams
team add inblock
team modify inblock color red
team modify inblock seeFriendlyInvisibles false
team modify inblock collisionRule never
team add collision
team modify collision color blue
team modify collision collisionRule never
team modify collision friendlyFire false

#creating bossbars
bossbar add vart:0 0
bossbar add vart:1 1
bossbar add vart:2 2
bossbar add vart:3 3
bossbar add vart:4 4
bossbar add vart:5 5
bossbar add vart:6 6
bossbar add vart:7 7
bossbar add vart:8 8
bossbar add vart:9 9
bossbar add vart:10 10

#calculation ints
scoreboard players set #negate config.va -1