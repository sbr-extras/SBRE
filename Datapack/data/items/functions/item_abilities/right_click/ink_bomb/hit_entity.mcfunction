#-----------INK BOMB KILLS STUFF-----------#
kill @s

# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 10000
scoreboard players set $ABCScl Temp 100
scoreboard players operation $ABCInt Temp = @p P_Intelligence

function sbre:ability_damage

scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] ApplyDamage = $ABCRes Temp

execute at @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] anchored eyes run particle minecraft:smoke ~ ~1 ~ 0.5 0.5 0.5 0 20 normal
effect give @e[tag=!NPC,type=!#stats:show_hp,dx=0,sort=nearest,limit=1] blindness 10 0
#------------------------------------------#