effect give @s slowness 5 3 true
# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 2000
scoreboard players set $ABCScl Temp 4
scoreboard players operation $ABCInt Temp = @p P_Intelligence

function sbre:ability_damage

scoreboard players operation @s ApplyDamage = $ABCRes Temp