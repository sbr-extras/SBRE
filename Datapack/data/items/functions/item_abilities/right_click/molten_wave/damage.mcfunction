# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 16000
scoreboard players set $ABCScl Temp 48
scoreboard players operation $ABCInt Temp = $MWPLR Temp

function sbre:ability_damage

scoreboard players operation @s ApplyDamage = $ABCRes Temp