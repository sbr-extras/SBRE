#===================NOTE===================#
#   This function was coded by PixOnePro   #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#---------------DETECT BLOCK---------------#
scoreboard players set in RandMath 1
scoreboard players set in1 RandMath 5
function skyblock:random/range_lcg

execute if score out RandMath matches 1 run summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11743532,14602026]}]}}}}

execute if score out RandMath matches 2 run summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;8073150,4312372]}]}}}}

execute if score out RandMath matches 3 run summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603,15435844]}]}}}}

execute if score out RandMath matches 4 run summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;5320730,2651799]}]}}}}

execute if score out RandMath matches 5 run summon firework_rocket ~ ~1.5 ~ {LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;2437522,12801229]}]}}}}

# Calculate Damage
scoreboard players set $IntValue Temp 1000
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = @s P_Intelligence
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg

playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..20]
kill @s
#------------------------------------------#