execute at @a[tag=shield,scores={ass=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^3 {Radius:2f,Duration:100,Age:0,Particle:"underwater",Tags:["as"]}
execute at @a[tag=shield,scores={ass=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^5 {Radius:2f,Duration:100,Age:0,Particle:"underwater",Tags:["as"]}
execute at @e[tag=as,scores={counter=1}] run fill ~ ~2 ~ ~ ~ ~ lime_stained_glass replace air
execute at @e[tag=as,scores={counter=1}] if block ~ ~ ~ cave_air run fill ~ ~2 ~ ~ ~ ~ lime_stained_glass replace cave_air
scoreboard players remove @a[tag=shield,scores={ass=1..,sp=2..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] sp 2
title @a[tag=shield,scores={ass=1..,sp=5..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] actionbar {"text":"Second Shield!","color":"green","bold":true,"italic":true}
scoreboard players add @a[scores={block=1..,sp=..400,soulprof=..99},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] sp 10
scoreboard players add @a[scores={block=1..,sp=..400,soulprof=100..109},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] sp 20
scoreboard players add @a[scores={block=1..,sp=..400,soulprof=300..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] sp 30
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run particle dust 0.686 0.059 1.000 4 ^ ^0.5 ^1 1 1 1 1 25 normal
execute as @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run title @s actionbar {"text":"Soul Eat","color":"dark_purple","bold":true,"italic":true}
execute as @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run scoreboard players remove @a[tag=hero,distance=1..3,scores={sp=5..}] sp 4
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,soulprof=0..100},tag=shield] soulprof 1
tag @a[tag=shield,scores={soulprof=100}] add spirit
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"soulprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,soulprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369010}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
