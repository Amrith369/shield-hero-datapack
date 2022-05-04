execute at @s run execute as @e[distance=1..30,type=!player] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
execute at @s run execute as @e[distance=1..30,type=!player] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:30}]}
execute at @s run execute at @e[distance=1..30,type=#undead] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["aggro"]}
execute as @e[tag=aggro] run data merge
