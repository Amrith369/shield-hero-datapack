#ORE UP
execute as @a[scores={ironbreak=1..,pickprof=..99},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-iron
execute as @a[scores={ironbreak=1..,pickprof=100..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-ironii
execute as @a[scores={goldbreak=1..,pickprof=..99},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-gold
execute as @a[scores={goldbreak=1..,pickprof=100..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-goldii
execute as @a[scores={diamondbreak=1..,pickprof=100..199},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-diamond
execute as @a[scores={diamondbreak=1..,pickprof=200..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-diamondii
execute as @a[scores={netherbreak=1..,pickprof=200..299},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-nether
execute as @a[scores={netherbreak=1..,pickprof=300..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-netherii
#DEEPSLasE BECAUSE MINECRAFT DUMB
execute as @a[scores={ironbreakii=1..,pickprof=..99},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-iron
execute as @a[scores={ironbreakii=1..,pickprof=100..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-ironii
execute as @a[scores={goldbreakii=1..,pickprof=..99},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-gold
execute as @a[scores={goldbreakii=1..,pickprof=100..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-goldii
execute as @a[scores={diamondbreakii=1..,pickprof=100..199},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-diamond
execute as @a[scores={diamondbreakii=1..,pickprof=200..},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] run function shield_hero:abilities/ore-diamondii
#EQUIPBONUS
effect give @a[tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] haste 2 3 true
effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}}] haste 2 3 true
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,pickprof=0..100},tag=shield] pickprof 1
tag @a[tag=shield,scores={pickprof=100}] add mine
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"pickprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
tellraw @a[scores={status=1},tag=shield,nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}]}] ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"pickprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,pickprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369003}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
#
