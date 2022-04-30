effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] conduit_power 5 3 true
effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] minecraft:dolphins_grace 10 3 true
execute at @s[scores={skill-bubble=1..,sp=1..}] run effect give @e[distance=0..5] water_breathing 20 1
execute at @s[scores={skill-bubble=1..,sp=1..}] run particle minecraft:bubble_column_up ~ ~ ~ 1 1 1 1 100
scoreboard players remove @s[scores={skill-bubble=1..,sp=1..}] sp 2
scoreboard players set @s[scores={skill-bubble=1..}] skill-bubble 0
#execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] run particle minecraft:underwater ~ ~ ~ 1 1 1 0.03 100
#execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] run effect give @e[distance=1..4] water_breathing 10 2
#scoreboard players remove @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] sp 1
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,whaleprof=0..100},tag=shield] whaleprof 1
tag @a[tag=shield,scores={whaleprof=100}] add blue
execute as @s[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] run tellraw @p ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"whaleprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,whaleprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369013}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
