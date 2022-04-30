execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={beetbreak=1..}] if score number RNG_77 matches 7 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Beetroot","color":"#5e152d","bold":true}',Item:{id:"minecraft:beetroot",Count:1b}}
scoreboard players set @a[tag=shield,scores={beetbreak=1..}] beetbreak 0
