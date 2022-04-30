scoreboard players enable @a[advancements={shield_hero:shields/portal=true}] set_warp_a
scoreboard players enable @a[advancements={shield_hero:shields/portal=true}] set_warp_b
scoreboard players enable @a[scores={portalprof=100..},advancements={shield_hero:shields/portal=true}] set_warp_c
scoreboard players enable @a[advancements={shield_hero:shields/portal=true}] warp_a
scoreboard players enable @a[advancements={shield_hero:shields/portal=true}] warp_b
scoreboard players enable @a[scores={portalprof=100..},advancements={shield_hero:shields/portal=true}] warp_c
#SET WARP A
tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={set_warp_a=1..}] {"text":"[NOTICE] Warp Point A Set","color":"#9DE1A9"}
execute at @a[tag=shield,scores={set_warp_a=1..}] run execute store result score z a_coords run data get entity @p[tag=shield] Pos[2]
execute at @a[tag=shield,scores={set_warp_a=1..}] run execute store result score y a_coords run data get entity @p[tag=shield] Pos[1]
execute at @a[tag=shield,scores={set_warp_a=1..}] run execute store result score x a_coords run data get entity @p[tag=shield] Pos[0]
#execute at @a[tag=shield,scores={set_warp_a=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_a"]}
#SET WARP B
tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={set_warp_b=1..}] {"text":"[NOTICE] Warp Point B Set","color":"#9DE1A9"}
execute at @a[tag=shield,scores={set_warp_b=1..}] run execute store result score z b_coords run data get entity @p[tag=shield] Pos[2]
execute at @a[tag=shield,scores={set_warp_b=1..}] run execute store result score y b_coords run data get entity @p[tag=shield] Pos[1]
execute at @a[tag=shield,scores={set_warp_b=1..}] run execute store result score x b_coords run data get entity @p[tag=shield] Pos[0]
#SET WARP C
tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={set_warp_c=1..}] {"text":"[NOTICE] Warp Point C Set","color":"#9DE1A9"}
execute at @a[tag=shield,scores={set_warp_c=1..}] run execute store result score z c_coords run data get entity @p[tag=shield] Pos[2]
execute at @a[tag=shield,scores={set_warp_c=1..}] run execute store result score y c_coords run data get entity @p[tag=shield] Pos[1]
execute at @a[tag=shield,scores={set_warp_c=1..}] run execute store result score x c_coords run data get entity @p[tag=shield] Pos[0]
#TELEPORT TO POINT A
tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={warp_a=1..,sp=20..}] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=shield,scores={warp_a=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_a"]}
execute as @e[tag=point_a] run execute store result entity @s Pos[0] double 1 run scoreboard players get x a_coords
execute as @e[tag=point_a] run execute store result entity @s Pos[1] double 1 run scoreboard players get y a_coords
execute as @e[tag=point_a] run execute store result entity @s Pos[2] double 1 run scoreboard players get z a_coords
execute as @e[tag=point_a] run execute at @s run tp @a[tag=shield,scores={warp_a=1..,sp=20..}] ~0.5 ~1 ~0.5
execute at @a[tag=shield,scores={warp_a=1..,sp=20..}] run tp @a[tag=shield-party,distance=0..4] ~ ~ ~
execute at @a[tag=shield,scores={warp_a=1..,sp=20..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT B
execute as @e[tag=point_b] run execute at @s run tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={warp_b=1..,sp=20..},distance=0..3] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=shield,scores={warp_b=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_b"]}
execute as @e[tag=point_b] run execute store result entity @s Pos[0] double 1 run scoreboard players get x b_coords
execute as @e[tag=point_b] run execute store result entity @s Pos[1] double 1 run scoreboard players get y b_coords
execute as @e[tag=point_b] run execute store result entity @s Pos[2] double 1 run scoreboard players get z b_coords
execute as @e[tag=point_b] run execute at @s run tp @a[tag=shield,scores={warp_b=1..,sp=20..}] ~0.5 ~1 ~0.5
execute at @a[tag=shield,scores={warp_b=1..,sp=20..}] run tp @a[tag=shield-party,distance=0..4] ~ ~ ~
execute at @a[tag=shield,scores={warp_b=1..,sp=20..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#TELEPORT TO POINT C
tellraw @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}},tag=shield,scores={warp_c=1..,sp=50..}] {"text":"[NOTICE] Warp Successful","color":"#70FF8A"}
execute at @a[tag=shield,scores={warp_c=1..}] run summon armor_stand ~ ~ ~ {Invisible:1,Marker:1,Invulnerable:1,Tags:["point_c"]}
execute store result entity @e[tag=point_c,limit=1] Pos[0] double 1 run scoreboard players get x c_coords
execute store result entity @e[tag=point_c,limit=1] Pos[1] double 1 run scoreboard players get y c_coords
execute store result entity @e[tag=point_c,limit=1] Pos[2] double 1 run scoreboard players get z c_coords
tp @a[tag=shield,scores={warp_c=1..,sp=50..}] @e[tag=point_c,limit=1]
execute at @a[tag=shield,scores={warp_c=1..,sp=50..}] run tp @a[tag=shield-party,distance=0..4] @e[tag=point_c,limit=1]
execute at @a[tag=shield,scores={warp_c=1..,sp=50..}] run particle minecraft:flash ~ ~ ~ 1 1 1 0.03 100
#REMOVE SP & SCORES
scoreboard players remove @a[tag=shield,scores={warp_a=1..,sp=20..}] sp 20
scoreboard players remove @a[tag=shield,scores={warp_b=1..,sp=20..}] sp 20
scoreboard players remove @a[tag=shield,scores={warp_c=1..,sp=20..}] sp 20
scoreboard players set @a[tag=shield,scores={warp_b=1..}] warp_b 0
scoreboard players set @a[tag=shield,scores={warp_a=1..}] warp_a 0
scoreboard players set @a[tag=shield,scores={warp_c=1..}] warp_c 0
scoreboard players set @a[tag=shield,scores={set_warp_a=1..}] set_warp_a 0
scoreboard players set @a[tag=shield,scores={set_warp_b=1..}] set_warp_b 0
scoreboard players set @a[tag=shield,scores={set_warp_c=1..}] set_warp_c 0
kill @e[tag=point_a]
kill @e[tag=point_b]
kill @e[tag=point_c]
#Proficiency
scoreboard players add @a[scores={shieldcounter=1799,portalprof=0..100},tag=shield] portalprof 1
tag @a[tag=shield,scores={portalprof=100}] add port
execute as @a[scores={status=1},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}}] run tellraw @s ["",{"text":"Current Shield Proficiency: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"portalprof"},"bold":true,"color":"green"},{"text":"%","color":"dark_green"}]
execute as @a[scores={take_energy=1..,portalprof=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}}] run function shield_hero:energy_reset
execute as @a[scores={give_energy=1..},nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:369012}}}] run function shield_hero:energy_reset
#scoreboard players set @a[tag=shield,scores={status=1..}] status 0
