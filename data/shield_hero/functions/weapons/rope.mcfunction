execute as @a[tag=shield,scores={shield_rope=1..}] run clear @s shield{shh:1b}
execute as @a[tag=shield,scores={shield_rope=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=shield,scores={shield_rope=1..}] ropeprof 0
scoreboard players add @a[tag=shield,scores={shield_rope=1..}] rope_smelt 0
execute as @a[tag=shield,scores={shield_rope=1..,ropeprof=0..9}] run give @s minecraft:shield{display:{Name:'{"text":"Rope Shield 0/10 C","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"Skill: Air Strike Shield"}','{"text":"mastery level: 0"}']},Unbreakable:1b,CustomModelData:369004,AttributeModifiers:[{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;1292209216,625492818,-1149681624,283251881],Slot:"mainhand"}]} 1
execute as @a[tag=shield,scores={shield_rope=1..,ropeprof=10..}] run function shield_hero:level_up/basic
execute as @a[tag=shield,scores={shield_rope=1..,rope_smelt=1..}] run item modify entity @s weapon.mainhand shield_hero:rope_smelt/rope_smelt
execute as @a[tag=shield,scores={shield_rope=1..,rope_smelt=1..}] run item modify entity @s weapon.mainhand shield_hero:rope_smelt/rope_smelt_name
