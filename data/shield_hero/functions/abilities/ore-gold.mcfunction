execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @s if score number RNG_77 matches 7 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Raw Gold","color":"#eacc48","bold":true}',Item:{id:"minecraft:raw_gold",Count:1b}}
execute at @s if score number RNG_77 matches 1 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Blaze Powder","color":"ffeb93","bold":true}',Item:{id:"minecraft:blaze_powder",Count:1b,tag:{CustomModelData:369206}}}
execute at @s if score number RNG_77 matches 1 run particle minecraft:electric_spark ^ ^1 ^3 0.5 0.5 0.5 0.001 10
scoreboard players set @a[tag=shield,scores={goldbreak=1..}] goldbreak 0
scoreboard players set @a[tag=shield,scores={goldbreakii=1..}] goldbreakii 0
