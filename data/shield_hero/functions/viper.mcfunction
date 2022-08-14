execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] run execute anchored eyes run summon evoker_fangs ^0.5 ^ ^1.2 {Tags:["viperfang"]}
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] run execute anchored eyes run summon evoker_fangs ^-0.5 ^ ^1.2 {Tags:["viperfang"]}
execute at @e[tag=viperfang] run effect give @e[distance=0..2,type=!#shield_hero:exclude,tag=!shield.party] poison 600 3
effect clear @a[tag=shield,nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] poison
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,viperprof=0..100},tag=shield] viperprof 1
tag @a[tag=shield,scores={viperprof=100}] add snake
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"viperprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,viperprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369008}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
