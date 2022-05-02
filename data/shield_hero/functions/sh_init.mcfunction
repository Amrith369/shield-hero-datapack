#Comment
function fafik77:rng/init
#bossbar add sp "SP"
#bossbar set minecraft:sp max 300
bossbar remove minecraft:sp
scoreboard objectives add a_coords dummy
scoreboard objectives add b_coords dummy
scoreboard objectives add c_coords dummy
scoreboard objectives add leaf_smelt dummy
scoreboard objectives add rope_smelt dummy
scoreboard objectives add dog_smelt dummy
scoreboard objectives add ltm_smelt dummy
scoreboard objectives add pick_smelt dummy
scoreboard objectives add pipe_smelt dummy
scoreboard objectives add portal_smelt dummy
scoreboard objectives add soul_smelt dummy
scoreboard objectives add star_smelt dummy
scoreboard objectives add viper_smelt dummy
scoreboard objectives add whale_smelt dummy
scoreboard objectives add wrath_smelt dummy
scoreboard objectives add craft_sp_potion trigger
scoreboard objectives add craft_hp_potion trigger
scoreboard objectives add smelt trigger
scoreboard objectives add party trigger
scoreboard objectives add disband trigger
scoreboard objectives add staroff trigger
scoreboard objectives add skill-bubble trigger
scoreboard objectives add sp dummy
scoreboard objectives add starCounter dummy
scoreboard objectives add shield_leaf trigger
scoreboard objectives add check_energy trigger
scoreboard objectives add take_energy trigger
scoreboard objectives add give_energy trigger
scoreboard objectives add shield_portal trigger
scoreboard objectives add shield_whale trigger
scoreboard objectives add set_warp_a trigger
scoreboard objectives add set_warp_b trigger
scoreboard objectives add set_warp_c trigger
scoreboard objectives add warp_a trigger
scoreboard objectives add warp_b trigger
scoreboard objectives add warp_c trigger
scoreboard objectives add shield_dog trigger
scoreboard objectives add shield_pick trigger
scoreboard objectives add shield_rope trigger
scoreboard objectives add shield_pipe trigger
scoreboard objectives add shield_ltm trigger
scoreboard objectives add shield_viper trigger
scoreboard objectives add shield_wrath trigger
scoreboard objectives add maiden trigger
scoreboard objectives add blood trigger
scoreboard objectives add shield_soul trigger
scoreboard objectives add shield_star trigger
scoreboard objectives add absorb trigger
scoreboard objectives add basic_sh trigger
scoreboard objectives add skill-alert trigger
scoreboard objectives add status trigger
scoreboard objectives add status_all trigger
scoreboard objectives add weapon_copy trigger
scoreboard objectives add select minecraft.custom:minecraft.drop
scoreboard objectives add ass minecraft.custom:minecraft.sneak_time
scoreboard objectives add block minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add counter dummy
scoreboard objectives add skillcounter dummy
scoreboard objectives add shield_ep dummy
scoreboard objectives add shieldcounter dummy
scoreboard objectives add leafprof dummy
scoreboard objectives add portalprof dummy
scoreboard objectives add whaleprof dummy
scoreboard objectives add dogprof dummy
scoreboard objectives add pickprof dummy
scoreboard objectives add ropeprof dummy
scoreboard objectives add pipeprof dummy
scoreboard objectives add ltmprof dummy
scoreboard objectives add viperprof dummy
scoreboard objectives add wrathprof dummy
scoreboard objectives add soulprof dummy
scoreboard objectives add starprof dummy
scoreboard objectives add timer dummy
scoreboard objectives add starx1 dummy
scoreboard objectives add stary1 dummy
scoreboard objectives add starz1 dummy
scoreboard objectives add starx2 dummy
scoreboard objectives add stary2 dummy
scoreboard objectives add starz2 dummy
scoreboard objectives remove point_a_warp
scoreboard objectives remove point_b_warp
scoreboard objectives remove point_a
scoreboard objectives remove point_b
scoreboard objectives add stat-counter dummy
scoreboard objectives add grassbreak minecraft.mined:minecraft.grass
scoreboard objectives add wheatbreak minecraft.mined:minecraft.wheat
scoreboard objectives add carrotbreak minecraft.mined:minecraft.carrots
scoreboard objectives add potatobreak minecraft.mined:minecraft.potatoes
scoreboard objectives add beetbreak minecraft.mined:minecraft.beetroots
scoreboard objectives add ironbreak minecraft.mined:minecraft.iron_ore
scoreboard objectives add goldbreak minecraft.mined:minecraft.gold_ore
scoreboard objectives add diamondbreak minecraft.mined:minecraft.diamond_ore
scoreboard objectives add netherbreak minecraft.mined:minecraft.ancient_debris
#gamerule sendCommandFeedback false
#tellraw @a ["",{"text":"["},{"text":"Rising Of The Shield Hero","color":"green"},{"text":"] Datapack Successfully Loaded!"}]
scoreboard objectives add sleep-prof minecraft.custom:minecraft.sleep_in_bed
scoreboard objectives add sleep-counter dummy
