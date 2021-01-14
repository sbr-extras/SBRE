#===================NOTE===================#
# Part of this function was coded by Magix #
#    Some Functions coming from Others     #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#

# Wither Impact:
# Teleports the player 10 blocks ahead. (TODO: Set teleport distance to 10)
# Grants a shield for the player.
# Dealing a base 15,000 damage.

#=====Shadow Warp=====#

# Teleport Player (currently calls AOTE function)
function items:item_abilities/right_click/instant_transmission

# Suck all nearby entities to the player (this is sort of messy but I added for testing)
teleport @e[type=!player,tag=!NPC,type=#stats:show_hp] @s

#=====Implosion=====#

#-----Modified explode.mcfunction & main.mcfunction from N0GN0l-----#

# Call main.mcfunction (without the dragon sound)
execute anchored eyes positioned ~ ~1 ~ run summon bat ^ ^ ^.3 {NoAI:1b,NoGravity:1b,Invulnerable:1b,Tags:["HasHealthDisplay","NewGuidedBat","GuidedBat","Timeout","10SecTimeout"]}
scoreboard players operation @e[tag=NewGuidedBat,sort=nearest,limit=1] PlayerID = @s PlayerID
tag @e remove NewGuidedBat

# Call explode.mcfunction (dealing 15000 dmg instead of 2000)
scoreboard players add @e[tag=!NPC,type=!#stats:show_hp,distance=..5,type=!player] ApplyDamage 15000
playsound minecraft:entity.generic.explode master @a[distance=..20]
particle minecraft:explosion ~ ~ ~ .3 .3 .3 1 20 force
function skyblock:kill

#=====Wither Shield=====#

# Add 30% damage reduce
scoreboard players set @s I_OperValue 0.3
scoreboard players operation @s P_Defense *= @s I_OperValue

# Calculate absorption shield (2 * CritDamage)
scoreboard players operation @s I_WitherShield = @s P_CritDamage
scoreboard players set @s I_OperValue 2
scoreboard players operation @s I_WitherShield *= @s I_OperValue

# Add Shield (SBR doesn't yet support Absorption so we add Health here)
scoreboard player operation @s I_WitherShield += @s P_Health

# Convert (after 5 seconds, divide by 2, subtract health, add healing, also remove damage reduce)
execute if score @s I_TempShield matches 5 run scoreboard players set @s I_TempShield 0
execute if score @s I_TempShield matches 5 run scoreboard players operation @s I_WitherShield /= 2
execute if score @s I_TempShield matches 5 run scoreboard players operation @s P_Health -= @s I_WitherShield
execute if score @s I_TempShield matches 5 run scoreboard players operation @s PlayerHP += @s I_WitherShield
execute if score @s I_TempShield matches 5 run scoreboard players set @s I_OperValue 0.3
execute if score @s I_TempShield matches 5 run scoreboard players operation @s P_Defense /= @s I_OperValue