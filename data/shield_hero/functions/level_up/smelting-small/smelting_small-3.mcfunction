#execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["randomize_sh"]}
#execute at @e[tag=shield] run spreadplayers ~ ~ 7 7 false @e[tag=randomize_sh]
execute as @e[tag=shield] run scoreboard players set min RNG_77 0
execute as @e[tag=shield] run scoreboard players set max RNG_77 2048
execute as @e[tag=shield] run function fafik77:rng/rand
execute as @e[tag=shield] run scoreboard players get number RNG_77
scoreboard players add @s small_smelt 0
execute as @a[scores={small_smelt=11..,smelt=1..}] run tellraw @s {"text":"<Smelt> Maximum Item Smelt Achieved.","bold":true,"color":"#37D7D7","hoverEvent":{"action":"show_text","contents":[{"text":"Chance Too Low For Success","italic":true,"color":"dark_purple"}]}}
#LEVEL 3
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 0..256 run tellraw @p[tag=shield] {"text":"<Smelt> Successfully Smelted Item!","bold":true,"color":"#26FF43","hoverEvent":{"action":"show_text","contents":[{"text":"+1 smelt level","italic":true,"color":"dark_purple"}]}}
#execute at @a[scores={small_smelt=2..,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] run tellraw @p[tag=shield] {"text":"<Smelt> FAILED! Quartz Needed To Smelt Further","bold":true,"color":"#D5FFD4","hoverEvent":{"action":"show_text","contents":[{"text":"Different materials required each rank","italic":true,"color":"dark_purple"}]}}
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 0..256 run scoreboard players add @p small_smelt 1
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 0..256 run scoreboard players add @p shield-small 1
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 0..256 run function shield_hero:level_up/small_smelt
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 257..2048 run tellraw @p[tag=shield] {"text":"<Smelt> Item Smelt Failed!","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"+0 enchantment level","italic":true,"color":"dark_purple"}]}}
execute at @a[scores={small_smelt=2,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 257..2048 run scoreboard players set @p small_smelt 0
#================================================================================================================
execute at @a[scores={smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:copper_ingot"}],SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}}] if score number RNG_77 matches 0.. run clear @s minecraft:copper_ingot 1
#================================================================================================================
#RESETSCORE
scoreboard players set @s smelt 0
