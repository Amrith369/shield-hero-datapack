execute store result score @s starx1 run data get entity @a[tag=shield,distance=0..6,limit=1] Pos[0] 1000
execute store result score @s stary1 run data get entity @a[tag=shield,distance=0..6,limit=1] Pos[1] 1000
execute store result score @s starz1 run data get entity @a[tag=shield,distance=0..6,limit=1] Pos[2] 1000
execute store result score @s starx2 run data get entity @s Pos[0] 1000
execute store result score @s stary2 run data get entity @s Pos[1] 1000
execute store result score @s starz2 run data get entity @s Pos[2] 1000
execute store result entity @s Motion[0] double 0.0001 run scoreboard players operation @s starx2 -= @s starx1
execute store result entity @s Motion[1] double 0.0001 run scoreboard players operation @s stary2 -= @s stary1
execute store result entity @s Motion[2] double 0.0001 run scoreboard players operation @s starz2 -= @s starz1
scoreboard players reset @s
