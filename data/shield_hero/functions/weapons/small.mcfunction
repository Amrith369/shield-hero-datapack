execute as @a[tag=shield,scores={shield_small=1..}] run clear @s shield{shh:1b}
execute as @a[tag=shield,scores={shield_small=1..}] run tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
scoreboard players add @a[tag=shield,scores={shield_small=1..}] smallprof 0
scoreboard players add @a[tag=shield,scores={shield_small=1..}] small_smelt 0
execute as @a[tag=shield,scores={shield_small=1..,smallprof=0..9}] run give @s minecraft:shield{display:{Name:'{"text":"Small Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: defense 3"}']},HideFlags:1,shh:1b,Unbreakable:1b,CustomModelData:369001,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:790722,UUIDMost:572480,Slot:"mainhand"}]} 1
execute as @a[tag=shield,scores={shield_small=1..,smallprof=10..}] run function shield_hero:level_up/basic
execute as @a[tag=shield,scores={shield_small=1..,small_smelt=1..}] run item modify entity @s weapon.mainhand shield_hero:small_smelt/small_smelt
execute as @a[tag=shield,scores={shield_small=1..,small_smelt=1..}] run item modify entity @s weapon.mainhand shield_hero:small_smelt/small_smelt_name
