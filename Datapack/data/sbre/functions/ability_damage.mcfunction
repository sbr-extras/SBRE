#===================NOTE===================#
#     This function was coded by Magix     #
# Please don't claim this as your own work #
#==========================================#

# Formula (from the HSB Wiki):
# Base Ability Damage * (1 + (Intelligence/100) * Ability Scaling) = Final Ability Damage

# To use this calculator:
# 1. Setup Damage, Scaling, and Intelligence Scaling
# scoreboard players set $ABCDmg Temp (dmg)
# scoreboard players set $ABCScl Temp (scaling; usually a decimal number or 1; because of this, you need to calculate the amount of dmg per intelligence using the wiki calculator)
# scoreboard players operation $ABCInt Temp = (player) P_Intelligence

# 2. Call this function
# function sbre:ability_damage

# 3. Apply Damage
# scoreboard players operation (entity) ApplyDamage = $ABCRes Temp

# Notes:
# "$ABC" is a variable for "Ability Damage Calculator" and works like a fake player.
# You use an operation to apply ability damage because it works.
# "Dmg" = Ability Damage; "Scl" = Ability Damage Scaling; "Int" = Intelligence; "Res" = Result
# "P_Intelligence" already subtracts the base 100 (as P_Intelligence is extra intelligence) which in normal HSB isn't accounted for. (basically, don't subtract 100 from P_Intelligence)

# Calculator

# (1 + Mana/100); Sets Intelligence
scoreboard players operation $CP1 Temp = $ABCInt Temp

scoreboard players set $CVar Temp 100
scoreboard players operation $CP1 Temp += $CVar Temp
scoreboard players operation $CP1 Temp /= $CVar Temp

scoreboard players set $CVar Temp 1
scoreboard players operation $CP1 Temp += $CVar Temp

# Multiply First Formula by Scaling
#scoreboard players operation $CP1 Temp *= $ABCScl Temp (this is the old method before I thought about decimals and how they don't really work...)
scoreboard players operation $CP3 Temp = $ABCInt Temp
scoreboard players operation $CP3 Temp *= $ABCScl Temp

# Multiply Current Result by Base Ability Damage
scoreboard players operation $CP2 Temp = $ABCDmg Temp

scoreboard players operation $CP2 Temp *= $CP1 Temp
scoreboard players operation $CP2 Temp += $CP3 Temp

# Set Damage
scoreboard players operation $ABCRes Temp = $CP2 Temp

# Clear Values
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $CP1 Temp 0
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $CP2 Temp 0
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $CP3 Temp 0
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $CVar Temp 0

# If the (fake) Player $CDVal (or ClearDataValues)'s score value for "ClearDataValues" is 1, then clear data values.
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $ABCDmg Temp 0
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $ABCScl Temp 0
execute if score $CDVal ClearDataValues matches 1 run scoreboard players set $ABCInt Temp 0

# NOTE:
# This calculator is not perfect (because of the intelligence scaling part).