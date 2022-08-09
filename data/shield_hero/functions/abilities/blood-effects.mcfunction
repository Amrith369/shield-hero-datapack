effect give @a[tag=shield,advancements={shield_hero:shields/wrath=true}] nausea 60 6
effect give @a[tag=shield,advancements={shield_hero:shields/wrath=true}] hunger 600 6
effect give @a[tag=shield,advancements={shield_hero:shields/wrath=true}] slowness 600 3
effect give @a[tag=shield,advancements={shield_hero:shields/wrath=true}] mining_fatigue 600 6
attribute @a[limit=1,tag=shield,advancements={shield_hero:shields/wrath=true}] minecraft:generic.max_health base set 7
execute at @a[limit=1,tag=shield,advancements={shield_hero:shields/wrath=true}] run particle block redstone_block ~ ~ ~ 0.1 0.6 0.1 0.01 1 force
execute at @s[scores={blood=30}] run particle block redstone_block ~ ~1 ~ 0.1 0.6 0.1 0.01 20 force
execute at @s[scores={blood=40}] run effect give @e[distance=0..2,type=!#shield_hero:undead] instant_damage 1 5 true
execute at @s[scores={blood=40}] run effect give @e[distance=0..2,type=#shield_hero:undead] instant_health 1 5 true
execute at @s[scores={blood=10..40}] run tp @e[tag=!shield,type=!#shield_hero:exclude,distance=0..2] ~ ~ ~
execute as @s[scores={blood=10}] run scoreboard players set @a[tag=shield,advancements={shield_hero:shields/wrath=true}] sp 0
