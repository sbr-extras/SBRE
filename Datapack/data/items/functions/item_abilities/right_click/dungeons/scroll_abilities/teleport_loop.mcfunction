#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#--------------ITEM ABILITIES--------------#
scoreboard players add $Raycast Temp 1
execute at @s run tp @s ^ ^ ^0.5
execute at @s if block ~ ~ ~ #skyblock:allowed if block ~ ~1 ~ #skyblock:allowed positioned ~ ~1.62 ~ if block ^ ^ ^1 #skyblock:allowed if score $Raycast Temp matches ..18 run function items:item_abilities/right_click/dungeons/scroll_abilities/teleport_loop
execute if score $Raycast Temp matches ..8 run tag @s remove Ability_FreeSpace

#---------------Implosion---------------#
execute unless score @s Implosion_Timer matches 20
execute unless score @s Implosion_Timer matches 19
execute unless score @s Implosion_Timer matches 18
execute unless score @s Implosion_Timer matches 17
execute unless score @s Implosion_Timer matches 16
execute unless score @s Implosion_Timer matches 15
execute unless score @s Implosion_Timer matches 14
execute unless score @s Implosion_Timer matches 13
execute unless score @s Implosion_Timer matches 12
execute unless score @s Implosion_Timer matches 11
execute unless score @s Implosion_Timer matches 10
execute unless score @s Implosion_Timer matches 9
execute unless score @s Implosion_Timer matches 8
execute unless score @s Implosion_Timer matches 7
execute unless score @s Implosion_Timer matches 6
execute unless score @s Implosion_Timer matches 5
execute unless score @s Implosion_Timer matches 4
execute unless score @s Implosion_Timer matches 3
execute unless score @s Implosion_Timer matches 2
execute unless score @s Implosion_Timer matches 1

# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 10000
scoreboard players set $ABCScl Temp 30
scoreboard players operation $ABCInt Temp = @s P_Intelligence

function sbre:ability_damage

scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..8] ApplyDamage = $ABCRes Temp

# Particle & Noise
playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .3 .3 .3 1 20 force
#------------------------------------------#​