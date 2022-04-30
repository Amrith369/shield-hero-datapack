execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={potatobreak=1..}] if score number RNG_77 matches 0..7 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Potato","color":"#ddb027","bold":true}',Item:{id:"minecraft:potato",Count:2b}}
scoreboard players set @a[tag=shield,scores={potatobreak=1..}] potatobreak 0
