execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 10
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
execute at @a[tag=shield,scores={grassbreak=1..}] if score number RNG_77 matches 7 run summon item ^ ^1 ^3 {CustomNameVisible:1b,CustomName:'{"text":"Herb","color":"#1FFFD2","bold":true}',Item:{id:"minecraft:fern",Count:1b,tag:{display:{Name:'{"text":"Medicinal Herb","color":"#40FF86","bold":true}',Lore:['{"text":"Can Be Used To Craft"}','{"text":"Healing Potions"}','{"text":"quality: good"}']},CustomModelData:369001}}}
scoreboard players set @a[tag=shield,scores={grassbreak=1..}] grassbreak 0
