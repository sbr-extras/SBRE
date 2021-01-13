#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#------------------MENUS-------------------#
execute if entity @s[scores={M_CurrentPage=-1}] run function menu:menus/mainmenu
execute if entity @s[scores={M_CurrentPage=0}] run function menu:menus/collectionmenu
execute if entity @s[scores={M_CurrentPage=1}] run function menu:menus/farming
execute if entity @s[scores={M_CurrentPage=2}] run function menu:menus/mining
execute if entity @s[scores={M_CurrentPage=3}] run function menu:menus/combat
execute if entity @s[scores={M_CurrentPage=4}] run function menu:menus/foraging
execute if entity @s[scores={M_CurrentPage=5}] run function menu:menus/fishing
execute if entity @s[scores={M_CurrentPage=6}] run function menu:menus/farming2
execute if entity @s[scores={M_CurrentPage=7}] run function menu:menus/farming3
execute if entity @s[scores={M_CurrentPage=8}] run function menu:menus/mining2
execute if entity @s[scores={M_CurrentPage=9}] run function menu:menus/mining3
execute if entity @s[scores={M_CurrentPage=10}] run function menu:menus/combat2
execute if entity @s[scores={M_CurrentPage=11}] run function menu:menus/fishing2
execute if entity @s[scores={M_CurrentPage=12}] run function menu:menus/trades
execute if entity @s[scores={M_CurrentPage=13}] run function menu:menus/trades2
execute if entity @s[scores={M_CurrentPage=14}] run function menu:menus/trades3
execute if entity @s[scores={M_CurrentPage=15}] run function menu:menus/trades4
execute if entity @s[scores={M_CurrentPage=16}] run function menu:menus/skillsmenu
execute if entity @s[scores={M_CurrentPage=17}] run function menu:menus/recipemenu
execute if entity @s[scores={M_CurrentPage=18}] run function menu:menus/profile
execute if entity @s[scores={M_CurrentPage=19}] run function menu:menus/craftingtable
execute if entity @s[scores={M_CurrentPage=20..81}] run function menu:collection_pages
execute if entity @s[scores={M_CurrentPage=82}] run function menu:menus/profile2
execute if entity @s[scores={M_CurrentPage=83}] run function menu:menus/skillsmenu2
execute if entity @s[scores={M_CurrentPage=84}] run function menu:menus/block/crafting
execute if entity @s[scores={M_CurrentPage=85}] run function menu:menus/block/enchanting
execute if entity @s[scores={M_CurrentPage=86}] run function menu:menus/block/anvil
execute if entity @s[scores={M_CurrentPage=87}] run function menu:menus/recipepreview
execute if entity @s[scores={M_CurrentPage=88}] run function menu:menus/accessory_bag
execute if entity @s[scores={M_CurrentPage=89}] run function menu:menus/cheats
execute if entity @s[scores={M_CurrentPage=90}] run function menu:menus/cheats/teleports
execute if entity @s[scores={M_CurrentPage=91}] run function menu:menus/cheats/settings
execute if entity @s[scores={M_CurrentPage=92}] run function menu:menus/cheats/get_items/categories
execute if entity @s[scores={M_CurrentPage=93}] run function menu:menus/cheats/get_items/swords
execute if entity @s[scores={M_CurrentPage=94}] run function menu:menus/cheats/get_items/bows
execute if entity @s[scores={M_CurrentPage=95}] run function menu:menus/cheats/get_items/armors
execute if entity @s[scores={M_CurrentPage=96}] run function menu:menus/cheats/get_items/tools
execute if entity @s[scores={M_CurrentPage=97}] run function menu:menus/cheats/get_items/pets
execute if entity @s[scores={M_CurrentPage=98}] run function menu:menus/cheats/get_items/accessories
execute if entity @s[scores={M_CurrentPage=99}] run function menu:menus/cheats/get_items/other/main
execute if entity @s[scores={M_CurrentPage=100}] run function menu:menus/cheats/get_items/spawn_eggs
execute if entity @s[scores={M_CurrentPage=101}] run function menu:menus/cheats/get_items/admin
execute if entity @s[scores={M_CurrentPage=102}] run function menu:menus/cheats/get_items/swords_2
execute if entity @s[scores={M_CurrentPage=103}] run function menu:menus/cheats/get_items/swords_3
execute if entity @s[scores={M_CurrentPage=104}] run function menu:menus/cheats/get_items/armors_2
execute if entity @s[scores={M_CurrentPage=105}] run function menu:menus/cheats/get_items/armors_3
execute if entity @s[scores={M_CurrentPage=106}] run function menu:menus/cheats/get_items/armors_4
execute if entity @s[scores={M_CurrentPage=107}] run function menu:menus/cheats/get_items/armors_5
execute if entity @s[scores={M_CurrentPage=108}] run function menu:menus/cheats/get_items/tools/fishing_rod
execute if entity @s[scores={M_CurrentPage=109}] run function menu:menus/cheats/get_items/tools/pickaxe
execute if entity @s[scores={M_CurrentPage=110}] run function menu:menus/cheats/get_items/tools/axe
execute if entity @s[scores={M_CurrentPage=111}] run function menu:menus/cheats/get_items/tools/shovel
execute if entity @s[scores={M_CurrentPage=112}] run function menu:menus/cheats/get_items/tools/hoe
execute if entity @s[scores={M_CurrentPage=113}] run function menu:menus/cheats/get_items/accessories_2
execute if entity @s[scores={M_CurrentPage=114}] run function menu:menus/cheats/get_items/accessories_3
execute if entity @s[scores={M_CurrentPage=115}] run function menu:menus/cheats/get_items/accessories_4
execute if entity @s[scores={M_CurrentPage=116}] run function menu:menus/cheats/get_items/accessories_5
execute if entity @s[scores={M_CurrentPage=117}] run function menu:menus/cheats/get_items/accessories_6
execute if entity @s[scores={M_CurrentPage=118}] run function menu:menus/cheats/custom_enchanting/main
execute if entity @s[scores={M_CurrentPage=119}] run function menu:menus/cheats/custom_enchanting/swords
execute if entity @s[scores={M_CurrentPage=120}] run function menu:menus/cheats/custom_enchanting/swords_2
execute if entity @s[scores={M_CurrentPage=121}] run function menu:menus/cheats/custom_enchanting/bows
execute if entity @s[scores={M_CurrentPage=122}] run function menu:menus/cheats/get_items/spawn_eggs/blazing_fortress
execute if entity @s[scores={M_CurrentPage=123}] run function menu:menus/cheats/get_items/spawn_eggs/coal_mines
execute if entity @s[scores={M_CurrentPage=124}] run function menu:menus/cheats/get_items/spawn_eggs/deep_caverns
execute if entity @s[scores={M_CurrentPage=125}] run function menu:menus/cheats/get_items/spawn_eggs/graveyard
execute if entity @s[scores={M_CurrentPage=126}] run function menu:menus/cheats/get_items/spawn_eggs/high_level
execute if entity @s[scores={M_CurrentPage=127}] run function menu:menus/cheats/get_items/spawn_eggs/howling_caves
execute if entity @s[scores={M_CurrentPage=128}] run function menu:menus/cheats/get_items/spawn_eggs/ruins
execute if entity @s[scores={M_CurrentPage=129}] run function menu:menus/cheats/get_items/spawn_eggs/spiders_den
execute if entity @s[scores={M_CurrentPage=130}] run function menu:menus/cheats/get_items/spawn_eggs/the_end
execute if entity @s[scores={M_CurrentPage=131}] run function menu:menus/cheats/get_items/admin_2
execute if entity @s[scores={M_CurrentPage=132}] run function menu:menus/cheats/get_items/other/materials
execute if entity @s[scores={M_CurrentPage=133}] run function menu:menus/cheats/get_items/other/materials_2
execute if entity @s[scores={M_CurrentPage=134}] run function menu:menus/cheats/get_items/other/materials_3
execute if entity @s[scores={M_CurrentPage=135}] run function menu:menus/cheats/get_items/other/materials_4
execute if entity @s[scores={M_CurrentPage=136}] run function menu:menus/cheats/get_items/other/materials_5
execute if entity @s[scores={M_CurrentPage=137}] run function menu:menus/cheats/get_items/other/materials_6
execute if entity @s[scores={M_CurrentPage=138}] run function menu:menus/cheats/get_items/other/materials_7
execute if entity @s[scores={M_CurrentPage=139}] run function menu:menus/cheats/custom_enchanting/create_enchant
execute if entity @s[scores={M_CurrentPage=140}] run function menu:menus/cheats/custom_enchanting/armors
execute if entity @s[scores={M_CurrentPage=141}] run function menu:menus/cheats/custom_enchanting/fishing_rods
execute if entity @s[scores={M_CurrentPage=142}] run function menu:menus/cheats/custom_enchanting/pickaxes
execute if entity @s[scores={M_CurrentPage=143}] run function menu:menus/cheats/custom_enchanting/axes
execute if entity @s[scores={M_CurrentPage=144}] run function menu:menus/cheats/custom_enchanting/shovels
execute if entity @s[scores={M_CurrentPage=145}] run function menu:menus/cheats/custom_enchanting/hoes
execute if entity @s[scores={M_CurrentPage=146}] run function menu:menus/cheats/custom_enchanting/shears
execute if entity @s[scores={M_CurrentPage=147}] run function menu:menus/cheats/change_base_stats/main
execute if entity @s[scores={M_CurrentPage=148}] run function menu:menus/cheats/change_base_stats/health
execute if entity @s[scores={M_CurrentPage=149}] run function menu:menus/cheats/change_base_stats/defense
execute if entity @s[scores={M_CurrentPage=150}] run function menu:menus/cheats/change_base_stats/strength
execute if entity @s[scores={M_CurrentPage=151}] run function menu:menus/cheats/change_base_stats/speed
execute if entity @s[scores={M_CurrentPage=152}] run function menu:menus/cheats/change_base_stats/crit_chance
execute if entity @s[scores={M_CurrentPage=153}] run function menu:menus/cheats/change_base_stats/crit_damage
execute if entity @s[scores={M_CurrentPage=154}] run function menu:menus/cheats/change_base_stats/bonus_attack_speed
execute if entity @s[scores={M_CurrentPage=155}] run function menu:menus/cheats/change_base_stats/intelligence
execute if entity @s[scores={M_CurrentPage=156}] run function menu:menus/cheats/change_base_stats/sea_creature_chance
execute if entity @s[scores={M_CurrentPage=157}] run function menu:menus/cheats/change_base_stats/magic_find
execute if entity @s[scores={M_CurrentPage=158}] run function menu:menus/cheats/change_base_stats/pet_luck
execute if entity @s[scores={M_CurrentPage=159}] run function menu:menus/cheats/change_base_stats/true_defense
execute if entity @s[scores={M_CurrentPage=160}] run function menu:menus/cheats/set_coins
execute if entity @s[scores={M_CurrentPage=161}] run function menu:menus/cheats/get_items/swords_4
execute if entity @s[scores={M_CurrentPage=162}] run function menu:menus/cheats/get_items/swords_5

# Below is code from SBRE
# SBRE for SBR 1.0

#----------------SBRE IMPLEMENTATION------------------#

execute if entity @s[scores={M_CurrentPage=163}] run function menu:menus/cheats/get_items/other/dungeons

#-----------------------------------------------------#

#------------------------------------------#