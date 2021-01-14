# Calculate Damage
scoreboard players set $IntValue Temp 16000
scoreboard players operation @s QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = $MWPLR Temp
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @s QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @s ApplyDamage = @s QueueADmg