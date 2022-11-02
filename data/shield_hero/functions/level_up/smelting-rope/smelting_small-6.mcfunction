#execute at @s run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,Tags:["randomize_sh"]}
#execute at @e[tag=sword] run spreadplayers ~ ~ 7 7 false @e[tag=randomize_sh]
execute as @e[tag=sword] run scoreboard players set min RNG_77 0
execute as @e[tag=sword] run scoreboard players set max RNG_77 2048
execute as @e[tag=sword] run function fafik77:rng/rand
execute as @e[tag=sword] run scoreboard players get number RNG_77
scoreboard players add @s diamond_smelt 0
execute as @a[scores={diamond_smelt=11..,smelt=1..}] run tellraw @s {"text":"<Smelt> Maximum Item Smelt Achieved.","bold":true,"color":"#37D7D7","hoverEvent":{"action":"show_text","contents":[{"text":"Chance Too Low For Success","italic":true,"color":"dark_purple"}]}}
#LEVEL 6
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 0..32 run tellraw @p[tag=sword] {"text":"<Smelt> Successfully Smelted Item!","bold":true,"color":"#26FF43","hoverEvent":{"action":"show_text","contents":[{"text":"+1 smelt level","italic":true,"color":"dark_purple"}]}}
#execute at @a[scores={diamond_smelt=5..,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] run tellraw @p[tag=sword] {"text":"<Smelt> FAILED! Quartz Needed To Smelt Further","bold":true,"color":"#D5FFD4","hoverEvent":{"action":"show_text","contents":[{"text":"Different materials required each rank","italic":true,"color":"dark_purple"}]}}
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 0..32 run scoreboard players add @p diamond_smelt 1
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 0..32 run scoreboard players add @p sword-diamond 1
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 0..32 run function sword_hero:level_up/diamond_smelt
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 33..2048 run tellraw @p[tag=sword] {"text":"<Smelt> Item Smelt Failed!","bold":true,"color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"+0 enchantment level","italic":true,"color":"dark_purple"}]}}
execute at @a[scores={diamond_smelt=5,smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 33..2048 run scoreboard players set @p diamond_smelt 0
#================================================================================================================
execute at @a[scores={smelt=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:gold_ingot"}],SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:3690020}}}] if score number RNG_77 matches 0.. run clear @s minecraft:gold_ingot 1
#================================================================================================================
#RESETSCORE
scoreboard players set @s smelt 0
