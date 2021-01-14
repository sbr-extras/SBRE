#===================NOTE===================#
#   This function was coded by N0GN0l      #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DETECT BLOCK---------------#
# Calculate Damage
scoreboard players set $IntValue Temp 2000
scoreboard players operation @s QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = $GBPLR Temp
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @s QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @s ApplyDamage = @s QueueADmg

playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .3 .3 .3 1 20 force
function skyblock:kill
#------------------------------------------#