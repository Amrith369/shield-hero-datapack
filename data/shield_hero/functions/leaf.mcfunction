#-Leaf Shield
execute at @a[tag=shield,scores={wheatbreak=1..,leafprof=..99}] run function shield_hero:abilities/crop-wheat
execute at @a[tag=shield,scores={wheatbreak=1..,leafprof=100..}] run function shield_hero:abilities/crop-wheatii
execute at @a[tag=shield,scores={carrotbreak=1..,leafprof=..99}] run function shield_hero:abilities/crop-carrot
execute at @a[tag=shield,scores={carrotbreak=1..,leafprof=100..}] run function shield_hero:abilities/crop-carrotii
execute at @a[tag=shield,scores={potatobreak=1..,leafprof=..99}] run function shield_hero:abilities/crop-potato
execute at @a[tag=shield,scores={potatobreak=1..,leafprof=100..}] run function shield_hero:abilities/crop-potatoii
execute at @a[tag=shield,scores={beetbreak=1..,leafprof=..99}] run function shield_hero:abilities/crop-beet
execute at @a[tag=shield,scores={beetbreak=1..,leafprof=100..}] run function shield_hero:abilities/crop-beetii
#tag @e[nbt={Item:{id:"minecraft:wheat",Count:1b,tag:{CustomModelData:369001}}}] add doubled
#tag @e[nbt={Item:{id:"minecraft:carrot",Count:1b,tag:{CustomModelData:369001}}}] add doubled
#tag @e[nbt={Item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:369001}}}] add doubled
#tag @e[nbt={Item:{id:"minecraft:beetroot",Count:1b,tag:{CustomModelData:369001}}}] add doubled
#tag @e[nbt={Item:{id:"minecraft:sweet_berries",Count:1b,tag:{CustomModelData:369001}}}] add doubled
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run execute at @e[tag=!doubled,distance=0..3,type=item,nbt={Item:{id:"minecraft:wheat",Count:1b}}] run summon item ~ ~ ~ {Tags:["doubled"],Item:{id:"minecraft:wheat",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run data merge entity @e[type=item,limit=1,distance=0..3,nbt={Item:{id:"minecraft:wheat",Count:1b}}] {Tags:["doubled"],Item:{id:"minecraft:wheat",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run execute at @e[tag=!doubled,distance=0..3,type=item,nbt={Item:{id:"minecraft:carrot",Count:1b}}] run summon item ~ ~ ~ {Tags:["doubled"],Item:{id:"minecraft:carrot",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run data merge entity @e[tag=!doubled,type=item,limit=1,distance=0..3,nbt={Item:{id:"minecraft:carrot",Count:1b}}] {Tags:["doubled"],Item:{id:"minecraft:carrot",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run execute at @e[tag=!doubled,distance=0..3,type=item,nbt={Item:{id:"minecraft:potato",Count:1b}}] run summon item ~ ~ ~ {Tags:["doubled"],Item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run data merge entity @e[tag=!doubled,type=item,limit=1,distance=0..3,nbt={Item:{id:"minecraft:potato",Count:1b}}] {Tags:["doubled"],Item:{id:"minecraft:potato",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run execute at @e[tag=!doubled,distance=0..3,type=item,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] run summon item ~ ~ ~ {Tags:["doubled"],Item:{id:"minecraft:beetroot",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run data merge entity @e[tag=!doubled,type=item,limit=1,distance=0..3,nbt={Item:{id:"minecraft:beetroot",Count:1b}}] {Tags:["doubled"],Item:{id:"minecraft:beetroot",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run execute at @e[tag=!doubled,distance=0..3,type=item,nbt={Item:{id:"minecraft:sweet_berries",Count:1b}}] run summon item ~ ~ ~ {Tags:["doubled"],Item:{id:"minecraft:sweet_berries",Count:1b,tag:{CustomModelData:369001}}}
#execute at @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run data merge entity @e[tag=!doubled,type=item,limit=1,distance=0..3,nbt={Item:{id:"minecraft:sweet_berries",Count:1b}}] {Tags:["doubled"],Item:{id:"minecraft:sweet_berries",Count:1b,tag:{CustomModelData:369001}}}
execute at @a[tag=shield,scores={grassbreak=1..,leafprof=..99}] run function shield_hero:herb
execute at @a[tag=shield,scores={grassbreak=1..,leafprof=100..}] run function shield_hero:herbii
#Effects
execute at @e[tag=doubled] run particle minecraft:happy_villager ~ ~ ~ 0 0 0 1 2
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,leafprof=0..100},tag=shield] leafprof 1
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"leafprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,leafprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369002}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
