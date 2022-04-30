execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={ironbreak=1..}] if score number RNG_77 matches 0..6 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Raw Iron","color":"#c4bcb0","bold":true}',Item:{id:"minecraft:raw_iron",Count:2b}}
execute at @a[tag=shield,scores={ironbreak=1..}] if score number RNG_77 matches 1..3 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Light Metal Ore","color":"#e8e6e3","bold":true}',Item:{id:"minecraft:iron_nugget",Count:1b,tag:{display:{Name:'{"text":"Light Metal Ore","color":"#0AFFF7","bold":true}'},CustomModelData:369205}}}
execute at @a[tag=shield,scores={ironbreak=1..}] if score number RNG_77 matches 1..3 run particle minecraft:electric_spark ^ ^1 ^3 0.5 0.5 0.5 0.001 10
scoreboard players set @a[tag=shield,scores={ironbreak=1..}] ironbreak 0
