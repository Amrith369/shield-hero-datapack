execute at @s run function maiden:install
execute at @s run function maiden:summon/default
execute at @s run execute as @e[tag=aj.maiden.root] run function maiden:animations/iron.maiden.animation/play
execute at @s run summon lightning_bolt ~ ~50 ~
