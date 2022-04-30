clear @s fern{CustomModelData:369001} 1
execute as @a[tag=shield,scores={craft_hp_potion=1..}] run give @s potion{display:{Name:'{"text":"Health Soothing Potion","color":"#FF144B","italic":true}',Lore:['{"text":"quality: good"}','{"text":"restores hp"}']},CustomModelData:3690042,CustomPotionEffects:[{Id:6b,Amplifier:2b,Duration:1,ShowParticles:0b},{Id:22b,Amplifier:5b,Duration:1,ShowParticles:0b}],Potion:"minecraft:mundane",CustomPotionColor:16715021} 1
scoreboard players remove @a[tag=shield,scores={craft_hp_potion=1..}] craft_hp_potion 1
tellraw @s {"text":"[NOTICE] Potion Successfully Crafted!","italic":true,"color":"#32CD1D"}
