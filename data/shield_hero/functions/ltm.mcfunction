#execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run particle dust 0.000 1.000 0.969 1 ~ ~ ~ 1 0 1 0.03 10 normal
execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] positioned ^ ^ ^1.5 run function shield_hero:particles/circle
execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run kill @e[type=potion,distance=0..3]
execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run kill @e[type=vex,distance=0..3]
execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run kill @e[type=evoker_fangs,distance=0..3]
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,ltmprof=0..100},tag=shield] ltmprof 1
tag @a[tag=shield,scores={ltmprof=100}] add magic
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"ltmprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,ltmprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369006}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
