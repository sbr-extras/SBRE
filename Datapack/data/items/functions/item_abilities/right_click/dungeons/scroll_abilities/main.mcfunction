#===================NOTE====================#
# This function was coded by Xnightslayer99 #
# Please don't claim this as your own work  #
#   LINK www.youtube.com/c/BlueCommander    #
#===========================================#
#-----RESETS THE BLOCK TRAVEL TRACKER------#
scoreboard players set $Raycast Temp 0
#--------CHECKS IF BLOCKS IN THE WAY-------#
execute at @s positioned ~ ~1.62 ~ if block ^ ^ ^1 #skyblock:allowed run tag @s add Ability_FreeSpace
#-----GIVE MANA BACK IF NO FREE SPACE------#
scoreboard players operation @s[tag=!Ability_FreeSpace] PlayerMana += $ManaCost Temp
scoreboard players reset @s I_ActionbarTimer
function stats:actionbar
#---------------TELEPORT LOOP--------------#
# Using Instant Transmission Tele Loop Because Hyperion Teleport Loop Doesn't Work ATM
execute if entity @s[tag=Ability_FreeSpace] run function items:item_abilities/right_click/dungeons/scroll_abilities/teleport_loop
execute at @s unless block ~ ~ ~ #skyblock:allowed run tp @s ~ ~1 ~
#--------------RESET MOMENTUM--------------#
execute if entity @s[tag=Ability_FreeSpace] at @s run tp @s @s
#-----------BLOCKS IN WAY ERROR------------#
execute if entity @s[tag=!Ability_FreeSpace] run tellraw @s ["",{"text":"There are blocks in the way!","color":"red"}]
#----------------RESET TAGS----------------#
tag @s remove Ability_FreeSpace
#---------------Implosion---------------#
execute unless score @s Implosion_Timer matches 20
execute unless score @s Implosion_Timer matches 19
execute unless score @s Implosion_Timer matches 18
execute unless score @s Implosion_Timer matches 17
execute unless score @s Implosion_Timer matches 16
execute unless score @s Implosion_Timer matches 15
execute unless score @s Implosion_Timer matches 14
execute unless score @s Implosion_Timer matches 13
execute unless score @s Implosion_Timer matches 12
execute unless score @s Implosion_Timer matches 11
execute unless score @s Implosion_Timer matches 10
execute unless score @s Implosion_Timer matches 9
execute unless score @s Implosion_Timer matches 8
execute unless score @s Implosion_Timer matches 7
execute unless score @s Implosion_Timer matches 6
execute unless score @s Implosion_Timer matches 5
execute unless score @s Implosion_Timer matches 4
execute unless score @s Implosion_Timer matches 3
execute unless score @s Implosion_Timer matches 2
execute unless score @s Implosion_Timer matches 1

# Calculate Damage
scoreboard players set $IntValue Temp 100000
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg += $IntValue Temp
scoreboard players operation $IntScale Temp = @s P_Intelligence
scoreboard players set $IntValue Temp 100
scoreboard players operation $IntScale Temp /= $IntValue Temp
# Is =xxx% Magic Damage DMG * xxx%/100? or is it DMG + xxx%/100?
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg *= $IntScale Temp

# Apply Damage
scoreboard players operation @e[tag=!NPC,type=!#stats:show_hp,distance=..5] ApplyDamage = @e[tag=!NPC,type=!#stats:show_hp,distance=..5] QueueADmg

playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~.3 ~ .3 .33 .3 1 20 force
#---------------Wither Shield--------------#
# Add 30% damage reduce (TODO: Fix Wither Shield)
#scoreboard players set @s I_OperValue 0.3
#scoreboard players operation @s P_Defense *= @s I_OperValue

# Calculate absorption shield (2 * CritDamage)
scoreboard players operation @s I_WitherShield = @s P_CritDamage
scoreboard players set @s I_OperValue 2
scoreboard players operation @s I_WitherShield *= @s I_OperValue

# Add Shield (SBR doesn't yet support Absorption so we add Health here)
scoreboard players operation @s I_WitherShield += @s P_Health

# Convert (after 5 seconds, divide by 2, subtract health, add healing, also remove damage reduce)
execute if score @s I_TempShield matches 5 run scoreboard players set @s I_TempShield 0
execute if score @s I_TempShield matches 5 run scoreboard players operation @s I_WitherShield /= 2
execute if score @s I_TempShield matches 5 run scoreboard players operation @s P_Health -= @s I_WitherShield
execute if score @s I_TempShield matches 5 run scoreboard players operation @s PlayerHP += @s I_WitherShield
#execute if score @s I_TempShield matches 5 run scoreboard players set @s I_OperValue 0.3
execute if score @s I_TempShield matches 5 run scoreboard players operation @s P_Defense /= @s I_OperValue
#----------------PLAY SOUND----------------#
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1 1