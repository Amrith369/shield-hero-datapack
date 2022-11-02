execute as @e[tag=sh-wb] run execute at @s run tp ^ ^0.01 ^1
execute at @s if entity @a[tag=shield,distance=16..] run kill @s
execute at @s run particle dust 1.000 0.847 0.420 3 ~ ~ ~ 0 0 0 0.001 10 normal
execute at @s if entity @e[distance=1..2,type=!#shield_hero:exclude,tag=!shield.party] run summon fireball ~ ~0.5 ~ {Silent:1b,ExplosionPower:2b,power:[0.0,-10.0,0.0]}
