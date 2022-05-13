#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,woodenprof=0..100},tag=shield,nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369014}}}] woodenprof 1
#tag @a[tag=shield,scores={starprof=100}] add shooting
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369014}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"woodenprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,woodenprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369014}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369014}}}] run function shield_hero:energy_reset
