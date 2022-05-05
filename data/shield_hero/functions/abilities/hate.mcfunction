#execute at @s run execute as @e[distance=1..30,type=!player] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:0}]}
#execute at @s run execute as @e[distance=1..30,type=!player] run data merge entity @s {Attributes:[{Name:generic.follow_range,Base:30}]}
execute at @s run execute at @e[distance=1..30,type=#undead] run summon area_effect_cloud ~ ~ ~ {Tags:["aggro"],Age:-1,WaitTime:-1,Radius:1.0f,Duration:2,DurationOnUse:-2,Effects:[{Id:6b,Amplifier:30,Duration:1,ShowParticles:0b}]}
execute at @s run execute at @e[distance=1..30,type=!#undead] run summon area_effect_cloud ~ ~ ~ {Tags:["aggro"],Age:-1,WaitTime:-1,Radius:1.0f,Duration:2,DurationOnUse:-2,Effects:[{Id:7b,Amplifier:30,Duration:1,ShowParticles:0b}]}
execute as @e[tag=aggro] run data modify entity @s Owner set from entity @a[tag=shield,limit=1] UUID
execute at @e[tag=aggro] run particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0.03 1 force
