scoreboard players set @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] starCounter 6000
execute at @a[tag=shield,scores={starCounter=1..}] run particle dust 0.000 1.000 0.969 1 ~ ~ ~3 1 2 0 0.03 20 normal
execute at @a[tag=shield,scores={starCounter=1..}] run particle dust 0.000 1.000 0.969 1 ~ ~ ~-3 1 2 0 0.03 20 normal
execute at @a[tag=shield,scores={starCounter=1..}] run particle dust 0.000 1.000 0.969 1 ~3 ~ ~ 0 2 1 0.03 20 normal
execute at @a[tag=shield,scores={starCounter=1..}] run particle dust 0.000 1.000 0.969 1 ~-3 ~ ~ 0 2 1 0.03 20 normal
execute at @a[tag=shield,scores={starCounter=1..}] run particle dust 0.000 1.000 0.969 1 ~ ~3 ~ 1 0 1 0.03 20 normal
scoreboard players remove @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] sp 30
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[type=#minecraft:arrows,type=#minecraft:impact_projectiles] run data merge entity @e[limit=1,distance=0] {Motion:[0.0,-10.0,0.0]}
#execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run execute at @e[distance =0..3,type=spectral_arrow] run data merge entity @e[limit=1,distance=0] {Motion:[0.0,-10.0,0.0]}
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[distance =0..3,type=fireball] run data merge entity @e[limit=1,distance=0] {Motion:[0.0,0.0,0.0]}
execute at @a[tag=shield,scores={starCounter=1..}] run kill @e[distance=0..3,type=dragon_fireball]
execute at @a[tag=shield,scores={starCounter=1..}] run kill @e[distance=0..3,type=small_fireball]
execute at @a[tag=shield,scores={starCounter=1..}] run kill @e[distance=0..3,type=wither_skull]
#execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run effect give @e[distance =1..3] slowness 3 50 true
#execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run effect give @e[distance =1..4,type=!player] jump_boost 3 150 true
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[distance=1..5,tag=!shield-party] run scoreboard players remove @a[tag=shield,scores={starCounter=1..}] starCounter 1
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[distance=1..5,tag=air_throw] run scoreboard players remove @a[tag=shield,scores={starCounter=1..}] starCounter 10
#PUSH ENITIES BACK
execute at @a[tag=shield,scores={starCounter=1..}] run execute as @a[distance=1..5,tag=!shield-party] run execute at @s if block ^ ^1 ^-1 air run tp @s ^ ^ ^-1
execute at @s[scores={starCounter=1..}] run execute as @e[type=!minecraft:item_frame,type=!area_effect_cloud,distance=1..5,tag=!shield-party] run function shield_hero:star-pushback
#SPEAR INTERACTIONS
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[tag=air_throw] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1
execute at @a[tag=shield,scores={starCounter=1..}] run execute at @e[tag=air_throw] run playsound minecraft:item.axe.scrape hostile @a[distance=0..10] ~ ~ ~ 10
execute at @a[tag=shield,scores={starCounter=1..}] run kill @e[tag=air_throw,distance=1..5]
execute at @a[tag=shield,scores={ass=1..,sp=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run title @s actionbar {"text":"Shooting Star Shield!","color":"aqua","bold":true,"italic":true}
scoreboard players remove @a[tag=shield,scores={starCounter=1..}] starCounter 1
execute at @a[tag=shield,scores={starCounter=1..80},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run title @a[tag=shield,scores={starCounter=..80}] actionbar {"text":"! Shield about to Break !","bold":true,"color":"#47E699"}
#scoreboard players remove @a[tag=shield,scores={starCounter=1..,sp=11..}] sp 1
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,starprof=0..100},tag=shield,nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] starprof 1
tag @a[tag=shield,scores={starprof=100}] add shooting
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"starprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,starprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..,shield_ep=20..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369011}}}] run function shield_hero:energy_reset
