execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={netherbreak=1..}] if score number RNG_77 matches 1..5 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Ancient Debris","color":"#47080c","bold":true}',Item:{id:"minecraft:ancient_debris",Count:2b}}
scoreboard players set @a[tag=shield,scores={netherbreak=1..}] netherbreak 0
