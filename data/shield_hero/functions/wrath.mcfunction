#-Wrath Shield
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run summon minecraft:bat ^ ^0.5 ^2 {Silent:1,Invulnerable:1b,Tags:["dark_gas"],ActiveEffects:[{Id:14b,Amplifier:2b,Duration:400,ShowParticles:1b}]}
execute at @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run playsound minecraft:block.fire.ambient ambient @a[distance=0..12] ~ ~ ~ 20 2
execute at @e[tag=dark_gas] run effect give @e[distance=1..3,tag=!wrath] wither 20 2
execute at @e[tag=dark_gas] run execute as @e[distance=1..2,tag=!wrath,type=!bat] run data merge entity @s {Fire:300}
#tellraw @a[scores={block=1..},tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] [{"text":"Dark Gas Burning!","color":"red","bold":true,"italic":true}]
execute as @a[scores={block=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run title @s actionbar {"text":"Dark Curse Burning!","color":"red","bold":true,"italic":true}
execute at @e[tag=dark_gas] run particle dust 0.729 0.255 0.016 3 ~ ~ ~ 1 1 1 1 5 normal
execute at @e[tag=dark_gas] run particle dust 0.729 0.000 0.000 3 ~ ~ ~ 1 1 1 1 5 normal
#execute at @e[tag=dark_gas] if block ~ ~ ~ air run setblock ~ ~ ~ fire
#execute at @e[tag=dark_gas] if block ~ ~ ~ cave_air run setblock ~ ~ ~ fire
effect give @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] fire_resistance 1 3 true
#Iron Maiden
execute at @a[scores={ass=1..,sp=50..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run summon armor_stand ^ ^0.5 ^4 {Tags:[curse_select],Invisible:1,Invulnerable:1,Marker:1}
execute at @e[tag=curse_select] run scoreboard players set @e[distance=0,scores={counter=80..}] counter 0
execute at @e[tag=selected] run kill @e[tag=curse_select]
execute at @e[tag=curse_select] run tag @e[limit=1,distance=0..3,tag=!wrath,type=!#shield_hero:exclude] add selected
execute at @e[tag=selected,scores={counter=1}] run tellraw @a[distance=0..20,advancements={shield_hero:shields/wrath=true}] {"text":"IRON MAIDEN","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/trigger maiden add 1"}}
execute at @e[tag=selected,scores={counter=1}] run tellraw @a[distance=0..20,advancements={shield_hero:shields/wrath=true}] {"text":"BLOOD SACRIFICE","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger blood add 1"}}
execute at @e[tag=curse_select] run effect give @e[limit=1,distance=0..3,tag=!wrath] glowing 7 4 true
execute at @a[scores={maiden=1..},advancements={shield_hero:shields/wrath=true}] run tag @e[tag=selected] add maidenlock
scoreboard players set @a[advancements={shield_hero:shields/wrath=true},scores={maiden=1..,sp=50..}] sp 0
#tellraw @a[advancements={shield_hero:shields/wrath=true},scores={maiden=1..,sp=..49}] {"text":"You Do Not Have Enough SP!","bold":true,"color":"#F53D3D","hoverEvent":{"action":"show_text","contents":{"text":"SP is below 50. Wait for it to recharge!","color":"#E0FFE7"}}}
#tellraw @a[advancements={shield_hero:shields/wrath=true},scores={blood=1..,sp=..49}] {"text":"You Do Not Have Enough SP!","bold":true,"color":"#F53D3D","hoverEvent":{"action":"show_text","contents":{"text":"SP is below 50. Wait for it to recharge!","color":"#E0FFE7"}}}
execute at @e[tag=maidenlock,scores={skillcounter=0..1}] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["maidenobject"],ArmorItems:[{},{},{},{id:"minecraft:brick",Count:1b,tag:{CustomModelData:369001}}]}
execute at @e[tag=maidenlock,scores={skillcounter=0..1}] run summon lightning_bolt ~ ~30 ~
execute at @e[tag=maidenobject] run tp @e[tag=maidenlock,distance=0..20] ~ ~ ~
execute at @e[tag=maidenlock,scores={skillcounter=5}] run item replace entity @e[type=minecraft:armor_stand,tag=maidenobject,distance=0..5] armor.head with brick{CustomModelData:369002}
execute at @e[tag=maidenlock,scores={skillcounter=10}] run item replace entity @e[type=minecraft:armor_stand,tag=maidenobject,distance=0..5] armor.head with brick{CustomModelData:369003}
execute at @e[tag=maidenlock,scores={skillcounter=4..30}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16711680,7012352],FadeColors:[I;2228038]}]}}}}
execute at @e[tag=maidenlock,scores={skillcounter=2}] run tellraw @a[scores={maiden=1..},tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] {"text":"Cry out in anguish as your entire body is stabbed and skewered!","color":"red","bold":true,"italic":true}
execute at @e[tag=maidenlock,scores={skillcounter=22}] run tellraw @a[scores={maiden=1..},tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] {"text":"Iron Maiden!","color":"red","bold":true,"italic":true}
execute at @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] run tag @e[tag=selected] add bloodlock
effect give @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] nausea 60 6
effect give @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] hunger 600 6
effect give @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] slowness 600 3
effect give @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] mining_fatigue 600 6
attribute @a[limit=1,scores={blood=1..},advancements={shield_hero:shields/wrath=true}] minecraft:generic.max_health base set 7
scoreboard players set @a[scores={blood=1..},advancements={shield_hero:shields/wrath=true}] timer 600
scoreboard players set @a[advancements={shield_hero:shields/wrath=true},scores={blood=1..,sp=50..}] sp 0
execute at @e[tag=bloodlock,scores={skillcounter=0..1}] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["bloodtimer"],Particle:"mycelium",Radius:1f,Duration:10,Color:9830400,Effects:[{Id:25b,Amplifier:1b,Duration:70,ShowParticles:0b}]}
execute at @e[tag=bloodlock,scores={skillcounter=0..65}] run summon evoker_fangs ~ ~ ~
execute at @e[tag=bloodlock,scores={skillcounter=0..2}] run effect give @a[distance=0..40,advancements={shield_hero:shields/wrath=true}] instant_damage 4 1
execute at @e[tag=bloodlock,scores={skillcounter=64..65}] run summon minecraft:firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16711680,7012352],FadeColors:[I;5177344]}]}}}}
kill @e[tag=bloodlock,scores={skillcounter=65}]
execute at @e[tag=bloodlock,scores={skillcounter=2}] run tellraw @a[tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] {"text":"Foolish sinner, cast your screams unto the heavens!","color":"red","bold":true,"italic":true}
execute at @e[tag=bloodlock,scores={skillcounter=22}] run tellraw @a[tag=shield,advancements={shield_hero:shields/wrath=true},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] {"text":"Blood Sacrifice!","color":"red","bold":true,"italic":true}
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,wrathprof=0..100},tag=shield] wrathprof 1
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_red"},{"score":{"name":"@s","objective":"wrathprof"},"bold":true,"color":"red"},{"text":"%","color":"dark_red"}]
execute as @a[scores={take_energy=1..,wrathprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369009}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
