effect give @s slowness 5 3 true
# Calculate Damage
scoreboard players set $IntValue Temp 500
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = @s P_Intelligence
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg