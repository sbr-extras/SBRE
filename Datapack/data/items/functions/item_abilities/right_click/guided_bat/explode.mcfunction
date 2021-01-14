#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DETECT BLOCK---------------#
# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 2000
scoreboard players set $ABCScl Temp 4
scoreboard players operation $ABCInt Temp = @p P_Intelligence

function sbre:ability_damage

scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5,type=!bat] ApplyDamage = $ABCRes Temp

playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .3 .3 .3 1 20 force
function skyblock:kill
#------------------------------------------#