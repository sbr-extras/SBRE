playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute anchored eyes positioned ^-1 ^ ^1 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^ ^ ^1 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^1 ^ ^1 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^-1 ^ ^3.25 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^ ^ ^3.25 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^1 ^ ^5.5 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^-1 ^ ^5.5 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^ ^ ^5.5 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
execute anchored eyes positioned ^1 ^ ^5.5 as @e[tag=HasHealthDisplay,distance=..2.2,tag=!Motion_target] run tag @s add Motion_target
scoreboard players set speed Motion 5000

# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 12000
scoreboard players set $ABCScl Temp 12
scoreboard players operation $ABCInt Temp = @s P_Intelligence

function sbre:ability_damage

scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = $ABCRes Temp

execute as @e[tag=HasHealthDisplay,distance=..8,tag=Motion_target] at @s facing entity @p eyes rotated ~180 -3 run function skyblock:motion/motion

summon armor_stand ^ ^ ^-.1 {Tags:["DragonRageStand","NewDragonRageStand"],NoGravity:1b,Invisible:1b,Marker:1b}
execute as @e[tag=NewDragonRageStand] at @s run tp @s ~ ~ ~ facing entity @p feet
tag @e remove NewDragonRageStand