#Setup
execute as @a[tag=shield] run give @s[tag=!starto] minecraft:shield{display:{Name:'{"text":"Legendary Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: defense 3"}']},HideFlags:1,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:790722,UUIDMost:572480,Slot:"mainhand"}]} 1
execute as @a[tag=shield] run tellraw @s[tag=!starto] ["",{"text":"You have become the "},{"text":"Shield Hero","color":"green"}]
tag @a[tag=shield] add starto
tag @a[tag=shield] add hero
#------------Unlock Shields----------------
#-Leaf Shield
tellraw @a[tag=!leaf,nbt={Inventory:[{Slot:9b,id:"minecraft:grass"}]}] {"text":"Leaf Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:grass"}]}] add leaf
#-Pickaxe Shield
tellraw @a[tag=!pick,nbt={Inventory:[{Slot:9b,id:"minecraft:iron_pickaxe"}]}] {"text":"Pickax Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:iron_pickaxe"}]}] add pick
#-Rope Shield
tellraw @a[tag=!rope,nbt={Inventory:[{Slot:9b,id:"minecraft:string"}]}] {"text":"Rope Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:string"}]}] add rope
#-Pipe Shield
tellraw @a[tag=!pipe,nbt={Inventory:[{Slot:9b,id:"minecraft:iron_bars"}]}] {"text":"Pipe Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:iron_bars"}]}] add pipe
#-LTM Shield
tellraw @a[tag=!ltm,nbt={Inventory:[{Slot:9b,id:"minecraft:blaze_powder"}]}] {"text":"Light Metal Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:blaze_powder"}]}] add ltm
#-Black Dog Shield
tellraw @a[tag=!dog,nbt={Inventory:[{Slot:9b,id:"minecraft:black_dye"}]}] {"text":"Two Headed Dog Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:black_dye"}]}] add dog
#-Chimera Viper Shield
tellraw @a[tag=!viper,nbt={Inventory:[{Slot:9b,id:"minecraft:spider_eye"}]}] {"text":"Chimera Viper Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:spider_eye"}]}] add viper
#-Wrath Shield
tellraw @a[tag=!wrath,scores={wrath=1..}] {"text":"Cursed Series: conditions met","italic":true,"color":"dark_red"}
tag @a[tag=shield,scores={wrath=1..}] add wrath
#-Soul Eater Shield
tellraw @a[tag=!soul,nbt={Inventory:[{Slot:9b,id:"minecraft:ghast_tear"}]}] {"text":"Soul Eater Shield: conditions met","italic":true,"color":"gold"}
tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:ghast_tear"}]}] add soul
#-Siderite Shield
#tellraw @a[tag=!soul,nbt={Inventory:[{Slot:9b,id:"minecraft:ghast_tear"}]}] {"text":"Soul Eater Shield: conditions met","italic":true,"color":"gold"}
#tag @a[tag=shield,nbt={Inventory:[{Slot:9b,id:"minecraft:ghast_tear"}]}] add soul
#------------Change Shield-----------------
execute at @a[tag=shield,scores={select=1..}] run tp @e[distance=0..5,type=item,nbt={Item:{id:"minecraft:shield",Count:1b}}] ~ ~ ~
execute at @a[tag=shield,scores={select=1..}] run data merge entity @e[type=item,limit=1,distance=0..6,nbt={Item:{id:"minecraft:shield",Count:1b}}] {PickupDelay:1,Item:{id:"minecraft:shield",Count:1b}}
execute as @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run tellraw @a[tag=shield,scores={select=1..}] ["",{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Change Shield:","italic":true},{"text":"\n"},{"text":"===========","bold":true,"color":"white"},{"text":"\n"},{"text":"Small Shield","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger basic_sh add 1"}}]
#-Leaf Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=leaf] {"text":"Leaf Shield","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/trigger leaf add 1"}}
execute as @a[tag=shield,scores={leaf=1..}] run clear @s shield
execute as @a[tag=shield,scores={leaf=1..}] run give @s[scores={leaf=1..}] minecraft:shield{display:{Name:'{"text":"Leaf Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"absorption ability 1"}']},Unbreakable:1b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:890626,UUIDMost:727068,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={leaf=1..,sp=1..}] sp 100
#-Pickax Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run tellraw @p[distance=0..4,tag=pick,scores={select=1..}] {"text":"Pickax Shield","bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger pick add 1"}}
execute as @a[tag=shield,scores={pick=1..}] run clear @s shield
execute as @a[tag=shield,scores={pick=1..}] run give @s[scores={pick=1..}] minecraft:shield{display:{Name:'{"text":"Pickax Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"mining 1"}']},Unbreakable:1b,CustomModelData:3,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:890626,UUIDMost:727068,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={pick=1..,sp=1..}] sp 100
#-Rope Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=rope] {"text":"Rope Shield","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger rope add 1"}}
execute as @a[tag=shield,scores={rope=1..}] run clear @s shield
execute as @a[tag=shield,scores={rope=1..}] run give @s[scores={rope=1..}] minecraft:shield{display:{Name:'{"text":"Rope Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"Skill: Air Strike Shield"}']},Unbreakable:1b,CustomModelData:4,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:890626,UUIDMost:727068,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={rope=1..,sp=1..}] sp 100
#-Pipe Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=pipe] {"text":"Pipe Shield","bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger pipe add 1"}}
execute as @a[tag=shield,scores={pipe=1..}] run clear @s shield
execute as @a[tag=shield,scores={pipe=1..}] run give @s[scores={pipe=1..}] minecraft:shield{display:{Name:'{"text":"Pipe Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"Skill: Shield Prison"}']},Unbreakable:1b,CustomModelData:5,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUIDLeast:890626,UUIDMost:727068,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={pipe=1..,sp=1..}] sp 100
#-Light MTL Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=ltm] {"text":"Light Metal Shield","bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger ltm add 1"}}
execute as @a[tag=shield,scores={ltm=1..}] run clear @s shield
execute as @a[tag=shield,scores={ltm=1..}] run give @s[scores={ltm=1..}] minecraft:shield{display:{Name:'{"text":"Light Metal Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"defense 1"}','{"text":"Special Equip Effect:","italic":true}','{"text":"magic defense 1"}']},Unbreakable:1b,CustomModelData:6,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUIDLeast:890326,UUIDMost:727168,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={ltm=1..,sp=1..}] sp 100
#-Two Dog Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=dog] {"text":"Two Headed Dog Shield","bold":true,"color":"dark_gray","clickEvent":{"action":"run_command","value":"/trigger dog add 1"}}
execute as @a[tag=shield,scores={dog=1..}] run clear @s shield
execute as @a[tag=shield,scores={dog=1..}] run give @s[scores={dog=1..}] minecraft:shield{display:{Name:'{"text":"Two Headed Dog Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:","italic":true}','{"text":"alert shield"}','{"text":"Special Equip Effect:","italic":true}','{"text":"dog bite"}']},Unbreakable:1b,CustomModelData:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUIDLeast:890326,UUIDMost:727168,Slot:"mainhand"}]} 1
scoreboard players remove @a[tag=shield,tag=!viper,scores={dog=1..,sp=1..}] sp 100
#-Chimera Viper Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=viper] {"text":"Chimera Viper Shield","bold":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger viper add 1"}}
execute as @a[tag=shield,scores={viper=1..}] run clear @s shield
execute as @a[tag=shield,scores={viper=1..}] run give @s[scores={viper=1..}] minecraft:shield{Unbreakable:1,display:{Name:'{"text":"Chimera Viper Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:"}','{"text":"poison resistance (medium)"}','{"text":"Skill: change shield"}','{"text":"Special Equip Effect:"}','{"text":"snake venom fang, hook"}']},CustomModelData:8,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:4,Operation:0,UUIDLeast:342635,UUIDMost:435140,Slot:"mainhand"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:4,Operation:0,UUIDLeast:702808,UUIDMost:615966,Slot:"offhand"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:4,Operation:0,UUIDLeast:902317,UUIDMost:55715,Slot:"mainhand"}]} 1
#-Wrath Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=wrath] {"text":"Shield of Wrath","bold":true,"color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger wrath add 1"}}
execute as @a[tag=shield,scores={wrath=1..}] run clear @s shield
execute as @a[tag=shield,scores={wrath=1..}] run give @s[scores={wrath=1..}] minecraft:shield{Unbreakable:1,display:{Name:'{"text":"Shield of Wrath","color":"dark_red","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:"}','{"text":"skill:"}','{"text":"Iron Maiden & Blood Sacrifice"}','{"text":"Special Equip Effect:"}','{"text":"dark gas burning, robe of rage,"}','{"text":"familial violence, dragon rage, roar"}']},CustomModelData:9,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:8,Operation:0,UUIDLeast:342635,UUIDMost:435140,Slot:"mainhand"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:8,Operation:0,UUIDLeast:702808,UUIDMost:615966,Slot:"offhand"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:6,Operation:0,UUIDLeast:902317,UUIDMost:55715,Slot:"mainhand"}]} 1
effect give @a[tag=shield,scores={wrath=1..}] blindness 10 3 true
#-Soul Eater Shield
execute at @e[type=item,nbt={Item:{id:"minecraft:shield"}}] run execute at @a[distance=0..4,tag=shield,scores={select=1..}] run tellraw @p[distance=0,tag=soul] {"text":"Soul Eater Shield","bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/trigger soul add 1"}}
execute as @a[tag=shield,scores={soul=1..}] run clear @s shield
execute as @a[tag=shield,scores={soul=1..}] run give @s[scores={soul=1..}] minecraft:shield{Unbreakable:1,display:{Name:'{"text":"Soul Eater Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Locked-"}','{"text":"Equip Bonus:"}','{"text":"spirit resistance (medium)"}','{"text":"SP up"}','{"text":"Skill: Second Shield"}','{"text":"Special Equip Effect:"}','{"text":"soul eat, sp recovery (weak)"}']},CustomModelData:10,AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:6,Operation:0,UUIDLeast:342635,UUIDMost:435140,Slot:"mainhand"},{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:6,Operation:0,UUIDLeast:702808,UUIDMost:615966,Slot:"offhand"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:5,Operation:0,UUIDLeast:902317,UUIDMost:55715,Slot:"mainhand"}]} 1
#-Basic Shield
execute as @a[tag=shield,scores={basic_sh=1..}] run clear @s shield
execute as @a[tag=shield,scores={basic_sh=1..}] run give @s minecraft:shield{display:{Name:'{"text":"Legendary Shield","color":"gold","bold":true}',Lore:['{"text":"-Abilities Unlocked-","italic":true}','{"text":"Equip Bonus: defense 3"}']},HideFlags:1,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUIDLeast:790722,UUIDMost:572480,Slot:"mainhand"}]} 1
#------------Shield Effects------------------
#-Leaf Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:2}}}] run function leaf
#-Pickax Shield
execute as @a[nbt={Inventory:[{id:"minecraft:shield",Count:1b,tag:{CustomModelData:3}}]}] run function pickax
#Rope Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:4}}}] run function rope
scoreboard players add @e[tag=as] counter 1
execute at @e[tag=as,scores={counter=95..}] run fill ~1 ~2 ~1 ~-1 ~-2 ~-1 air replace lime_stained_glass
#-Pipe Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:5}}}] run function pipe
scoreboard players add @e[tag=sp] counter 1
execute at @e[tag=sp,scores={counter=295..}] run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace green_concrete
#-LTM Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:6}}}] run function ltm
#-Dog Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:7}}}] run function dog
#-Chimera Viper Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:8}}}] run function viper
#-Soul Eater Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:10}}}] run function soul
#-Wrath Shield
execute as @a[nbt={SelectedItem:{id:"minecraft:shield",Count:1b,tag:{CustomModelData:9}}}] run function minecraft:wrath
scoreboard players add @e[tag=dark_gas] counter 1
kill @e[tag=dark_gas,scores={counter=100..}]
scoreboard players add @e[tag=curse_select] counter 1
scoreboard players add @e[tag=selected] counter 1
kill @e[tag=curse_select,scores={counter=1..}]
tag @e[tag=selected,scores={counter=80..}] remove selected
scoreboard players add @e[tag=maidenlock] skillcounter 1
scoreboard players add @e[tag=maidentimer] skillcounter 1
scoreboard players add @e[tag=bloodlock] skillcounter 1
scoreboard players add @e[tag=bloodtimer] skillcounter 1
execute at @e[tag=maidentimer,scores={skillcounter=190}] run fill ~1 ~2 ~1 ~-1 ~ ~-1 air replace cobblestone
execute at @e[tag=maidentimer,scores={skillcounter=190}] run fill ~ ~ ~ ~ ~3 ~ air replace wither_skeleton_skull
tag @e[scores={skillcounter=200..}] remove maidenlock
tag @e[scores={skillcounter=200..}] remove bloodlock
scoreboard players reset @e[scores={skillcounter=200..}]
#Reset Scores
scoreboard players set @a[tag=shield,scores={leaf=1..}] leaf 0
scoreboard players set @a[tag=shield,scores={basic_sh=1..}] basic_sh 0
scoreboard players set @a[tag=shield,scores={pick=1..}] pick 0
scoreboard players set @a[tag=shield,scores={rope=1..}] rope 0
scoreboard players set @a[tag=shield,scores={pipe=1..}] pipe 0
scoreboard players set @a[tag=shield,scores={ltm=1..}] ltm 0
scoreboard players set @a[tag=shield,scores={dog=1..}] dog 0
scoreboard players set @a[tag=shield,scores={viper=1..}] viper 0
scoreboard players set @a[tag=shield,scores={wrath=1..}] wrath 0
scoreboard players set @a[tag=shield,scores={maiden=1..}] maiden 0
scoreboard players set @a[tag=shield,scores={blood=1..}] blood 0
scoreboard players set @a[tag=shield,scores={select=1..}] select 0
scoreboard players set @a[tag=shield,scores={soul=1..}] soul 0
scoreboard players set @a[tag=shield,scores={ass=1..}] ass 0
scoreboard players enable @a[tag=shield] leaf
scoreboard players enable @a[tag=shield] pick
scoreboard players enable @a[tag=shield] basic_sh
scoreboard players enable @a[tag=shield] rope
scoreboard players enable @a[tag=shield] pipe
scoreboard players enable @a[tag=shield] ltm
scoreboard players enable @a[tag=shield] dog
scoreboard players enable @a[tag=shield] viper
scoreboard players enable @a[tag=shield] wrath
scoreboard players enable @a[tag=shield] maiden
scoreboard players enable @a[tag=shield] blood
scoreboard players enable @a[tag=shield] soul
scoreboard players set @a[tag=shield,scores={block=1..}] block 0
execute as @a[tag=hero] run execute store result bossbar sp value run scoreboard players get @s sp
effect give @a[tag=shield] weakness 2 0 true
