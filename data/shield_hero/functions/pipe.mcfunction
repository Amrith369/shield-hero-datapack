execute at @a[tag=shield,x_rotation=-90..-60,scores={ass=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:2f,Duration:300,Age:0,Particle:"underwater",Tags:["sp","shield.longer"]}
execute at @a[tag=shield,x_rotation=-59..45,scores={ass=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] run summon minecraft:area_effect_cloud ^ ^1 ^5 {Radius:2f,Duration:300,Age:0,Particle:"underwater",Tags:["sp","shield.longer"]}
execute at @a[tag=cage,x_rotation=-59..30,scores={ass=1..,sp=40..},nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}]}] run summon minecraft:area_effect_cloud ^ ^1 ^5 {Radius:2f,Duration:300,Age:0,Particle:"underwater",Tags:["sp","shield.longer"]}
execute at @a[tag=cage,x_rotation=-90..-60,scores={ass=1..,sp=40..},nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}]}] run summon minecraft:area_effect_cloud ^ ^ ^ {Radius:2f,Duration:300,Age:0,Particle:"underwater",Tags:["sp","shield.longer"]}
execute at @e[tag=sp,scores={counter=1}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 green_concrete replace air
execute at @e[tag=sp,scores={counter=1}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 green_concrete replace cave_air
execute at @e[tag=sp] run kill @e[distance=0..7,type=item,nbt={Item:{id:"minecraft:green_concrete"}}]
execute at @e[tag=sp,scores={counter=2..3}] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace green_concrete
scoreboard players remove @a[tag=shield,scores={ass=1..,sp=40..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] sp 20
scoreboard players remove @a[tag=shield,scores={ass=1..,sp=40..},nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369001}}]}] sp 20
title @a[tag=shield,scores={ass=1..,sp=30..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] actionbar {"text":"Shield Prison!","color":"green","bold":true,"italic":true}
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,pipeprof=0..100},tag=shield] pipeprof 1
tag @a[tag=shield,scores={pipeprof=100}] add cage
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"pipeprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,pipeprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369005}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
