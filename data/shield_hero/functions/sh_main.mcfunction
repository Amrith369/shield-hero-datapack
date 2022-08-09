#tag Amrith_Erilaz add shield
execute as @a[tag=shield] run title @s[tag=shield,x_rotation=45..90] actionbar [{"text":"SP: "},{"score":{"name":"@s","objective":"sp"},"bold":"true","color":"green"},{"text":"/300","bold":"true","color":"green"}]
bossbar remove minecraft:sp
scoreboard players add @a[tag=shield] sp 0
scoreboard players add @a[tag=shield,scores={sp=..300,shieldcounter=600}] sp 5
scoreboard players add @a[tag=shield,scores={sp=..300,shieldcounter=1200}] sp 5
scoreboard players add @a[tag=shield,scores={sp=..300,shieldcounter=1800}] sp 5
scoreboard players add @a[tag=hero,advancements={shield_hero:shields/soul=true},scores={sp=300..400,shieldcounter=1800}] sp 5
scoreboard players add @a[tag=shield] shieldcounter 1
scoreboard players set @a[tag=shield,scores={shieldcounter=1800..}] shieldcounter 0
effect give @a[tag=mine] haste 2 3 true
effect clear @a[tag=snake] poison
execute as @e[tag=aj.maiden] run function shield_hero:abilities/maiden-effects
execute as @e[tag=aj.blutopher] run function shield_hero:abilities/blood-effects
#WRATH
scoreboard players add @e[tag=skill-select] counter 1
tp @e[tag=skill-select,scores={counter=10}] ~ ~-400 ~
scoreboard players remove @a[scores={timer=1..601},advancements={shield_hero:shields/wrath=true}] timer 1
execute as @a[scores={timer=1..2},advancements={shield_hero:shields/wrath=true}] run function shield_hero:heal
execute as @a[tag=shield,scores={status_all=1..}] run function shield_hero:level_up/status_all
effect give @a[tag=blue] conduit_power 5 3 true
effect give @a[tag=blue] minecraft:dolphins_grace 10 3 true
execute as @a[scores={skill-alert=1..}] run function shield_hero:dog
execute as @a[tag=shield,scores={check_energy=1..}] run tellraw @s ["",{"text":"Weapon Energy Points: ","bold":true,"color":"dark_green"},{"score":{"name":"@s","objective":"shield_ep"},"bold":true,"color":"gold"},{"text":" available.","color":"gold"}]
scoreboard players set @a[tag=shield,scores={check_energy=1..}] check_energy 0
execute at @a[tag=shield,scores={give_energy=1..}] run particle minecraft:totem_of_undying ~ ~1 ~ 0.3 0 0.3 0.03 1
#scoreboard players set @a[tag=hero,scores={take_energy=2..}] take_energy 0
#scoreboard players set @a[tag=hero,scores={give_energy=2..}] give_energy 0
execute as @a[tag=shield,scores={give_energy=1..}] run function shield_hero:level_up/energy_reset
execute as @a[tag=shield,scores={take_energy=1..}] run function shield_hero:level_up/energy_reset
scoreboard players set @a[tag=hero,scores={alert=1..}] alert 0
tag @a[tag=shield,tag=lead-pending,scores={shield_rope=1..}] remove lead-pending
execute as @a[tag=shield,scores={weapon_copy=1..}] run function shield_hero:weapon_copy/identify
scoreboard players set @a[tag=shield,scores={weapon_copy=1..}] weapon_copy 0
execute as @a[tag=shield] run function shield_hero:sh_shield
#RETRIEVE SHIELD
execute at @e[type=item,nbt={Item:{id:"minecraft:lead"}}] run scoreboard players add @a[distance=0..5,tag=lead-pending] shield_rope 1
execute at @e[type=leash_knot,tag=!found] run scoreboard players add @a[distance=0..5,tag=lead-pending] shield_rope 1
execute at @a[tag=shield] run tag @e[distance=0..5,tag=!found] add found
execute at @a[tag=lead-pending] run kill @e[type=item,nbt={Item:{id:"minecraft:lead"}},distance=0..10]
#SLEEP PROF
scoreboard players set @a[tag=shield,scores={sleep-counter=1..}] sleep-prof 0
scoreboard players set @a[tag=shield,scores={sleep-prof=1..}] sleep-counter 110
scoreboard players remove @a[tag=shield,scores={sleep-counter=1..}] sleep-counter 1
execute as @a[tag=shield,scores={sleep-counter=1}] if predicate shield_hero:nite run scoreboard players add @s sp 100
execute as @a[tag=shield,scores={sleep-counter=1}] if predicate shield_hero:nite run scoreboard players add @s shield_ep 200
#execute as @a if predicate shield_hero:nite run say hi
#FAFIK RANDOMNESS
function fafik77:rng/tick
