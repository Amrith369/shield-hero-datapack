execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={wheatbreak=1..}] if score number RNG_77 matches 0..7 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Wheat","color":"#ddb027","bold":true}',Item:{id:"minecraft:wheat",Count:2b}}
scoreboard players set @a[tag=shield,scores={wheatbreak=1..}] wheatbreak 0
