execute at @a[tag=shield,scores={ass=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run effect give @e[distance=1..20] glowing 1 1 true
execute at @a[scores={skill-alert=1..}] run effect give @e[distance=1..40] glowing 5 1 true
execute at @a[scores={block=1..,dogprof=..500},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run execute at @e[distance=1..3,type=!#shield_hero:exclude,tag=!shield.party] run summon evoker_fangs ~ ~ ~
execute at @a[scores={block=1..,dogprof=500..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run execute at @e[distance=1..5,type=!#shield_hero:exclude,tag=!shield.party] run summon evoker_fangs ~ ~ ~
execute at @a[scores={block=1..,dogprof=500..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run execute at @e[distance=2..6,type=!#shield_hero:exclude,tag=!shield.party] run summon evoker_fangs ~ ~ ~
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run particle dust 0.031 0.000 0.000 4 ^ ^0.8 ^1.5 0 1 0 1 10 normal
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run particle dust 0.910 0.000 0.000 2 ^-0.5 ^1.5 ^1.5 0 0 0 1 20 normal
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run particle dust 0.910 0.000 0.000 2 ^0.5 ^1.5 ^1.5 0 0 0 1 20 normal
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,dogprof=0..100},tag=shield] dogprof 1
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"dogprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,dogprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369007}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
