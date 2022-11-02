execute at @s run summon armor_stand ^ ^1 ^2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["sh-wb"],DisabledSlots:4144959}
execute as @e[tag=sh-wb] at @s rotated as @a[tag=shield,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
execute at @s positioned ^ ^1 ^1 run function shield_hero:particles/blast1
execute at @s positioned ^ ^1 ^1.5 run function shield_hero:particles/blast2
execute at @s positioned ^ ^1 ^2 run function shield_hero:particles/blast3
