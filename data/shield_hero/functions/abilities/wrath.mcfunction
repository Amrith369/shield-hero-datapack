#-Wrath Shield
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run summon minecraft:bat ^ ^0.5 ^2 {Silent:1,Invulnerable:1b,Tags:["dark_gas","shield.longer"],ActiveEffects:[{Id:14b,Amplifier:2b,Duration:400,ShowParticles:1b}]}
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run playsound minecraft:block.fire.ambient ambient @a[distance=0..12] ~ ~ ~ 20 2
execute at @e[tag=dark_gas] run effect give @e[distance=1..3,tag=!wrath] wither 10 1
execute at @e[tag=dark_gas] run execute as @e[distance=1..2,tag=!wrath,type=!bat] run data merge entity @s {Fire:300}
#tellraw @a[scores={block=1..},tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] [{"text":"Dark Gas Burning!","color":"red","bold":true,"italic":true}]
execute as @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run title @s actionbar {"text":"Dark Curse Burning!","color":"red","bold":true,"italic":true}
execute at @e[tag=dark_gas] run particle dust 0.729 0.255 0.016 3 ~ ~ ~ 1 1 1 1 5 normal
execute at @e[tag=dark_gas] run particle dust 0.729 0.000 0.000 3 ~ ~ ~ 1 1 1 1 5 normal
effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] fire_resistance 1 3 true
effect give @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}]}] fire_resistance 1 3 true
#CURSED SKILLS
execute at @a[scores={ass=1..,sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run summon armor_stand ^ ^0.5 ^4 {Tags:[curse_select],Invisible:1,Invulnerable:1,Marker:1}
execute at @e[tag=curse_select] run particle flame ~ ~ ~ 0 0 0 0.03 1
execute at @e[tag=curse_select] run scoreboard players set @e[distance=0,scores={counter=80..}] counter 0
execute at @e[tag=selected] run kill @e[tag=curse_select]
execute at @e[tag=curse_select] run tag @e[limit=1,distance=0..3,tag=!wrath,type=!#shield_hero:exclude] add selected
execute at @e[tag=curse_select] run effect give @e[limit=1,distance=0..3,tag=!wrath] glowing 7 4 true
execute as @e[tag=selected] run execute as @a[tag=shield] run title @a[tag=shield,x_rotation=-28..-18,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] title {"text":"\uE373"}
execute as @e[tag=selected] run execute as @a[tag=shield] run title @a[tag=shield,x_rotation=-5..5,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] title {"text":"X"}
execute as @e[tag=selected] run execute as @a[tag=shield] run title @a[tag=shield,x_rotation=18..28,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] title {"text":"\uE374"}
#execute at @e[tag=selected,scores={counter=60..}] if entity @a[tag=shield,x_rotation=-90..-18,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:abilities:maiden
#execute at @e[tag=selected,scores={counter=60..}] if entity @a[tag=shield,x_rotation=18..90,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:abilities:blood
execute at @a[tag=shield,x_rotation=-90..-18,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run execute as @e[tag=selected,scores={counter=60}] run function shield_hero:abilities/maiden
execute at @a[tag=shield,x_rotation=18..90,scores={sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run execute as @e[tag=selected,scores={counter=60}] run function shield_hero:abilities/blood
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,wrathprof=0..100},tag=shield] wrathprof 1
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"wrathprof"},"bold":true,"color":"red"},{"text":"%","color":"dark_red"}]
execute as @a[scores={take_energy=1..,wrathprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
