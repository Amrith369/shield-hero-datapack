execute at @s[scores={maiden=30}] run particle block redstone_block ~ ~1 ~ 0.1 0.6 0.1 0.01 20 force
execute at @s[scores={maiden=30}] run effect give @e[tag=!shield.party,distance=0..2,type=!#shield_hero:undead] instant_damage 1 4 true
execute at @s[scores={maiden=30}] run effect give @e[tag=!shield.party,distance=0..2,type=#shield_hero:undead] instant_health 1 4 true
execute at @s[scores={maiden=10..40}] run tp @e[tag=!shield,type=!#shield_hero:exclude,distance=0..2] ~ ~-0.5 ~
execute as @s[scores={maiden=10}] run scoreboard players set @a[tag=shield,advancements={shield_hero:shields/wrath=true}] sp 0
execute at @s[scores={maiden=95..}] run particle totem_of_undying ~ ~ ~ 0 0 0 0.01 1 normal
