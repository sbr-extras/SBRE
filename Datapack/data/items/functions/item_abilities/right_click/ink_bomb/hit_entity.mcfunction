#-----------INK BOMB KILLS STUFF-----------#
kill @s

# Calculate Damage
scoreboard players set $IntValue Temp 10000
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = @s P_Intelligence
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg

execute at @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] anchored eyes run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
effect give @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] blindness 10 0
#------------------------------------------#