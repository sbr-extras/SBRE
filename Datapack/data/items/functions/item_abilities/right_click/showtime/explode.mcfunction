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

# Calculate & Apply Damage
scoreboard players set $ABCDmg Temp 1000
scoreboard players set $ABCScl Temp 2
scoreboard players operation $ABCInt Temp = @p P_Intelligence

function sbre:ability_damage

scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = $ABCRes Temp

playsound minecraft:entity.firework_rocket.twinkle master @a[distance=..20]
kill @s
#------------------------------------------#