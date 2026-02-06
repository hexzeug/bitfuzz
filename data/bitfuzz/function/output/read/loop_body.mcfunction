execute if score #size bitfuzz matches ..0 run return 1

execute if block ~ ~ ~ redstone_lamp[lit=true] run scoreboard players operation @s bitfuzz += #bit_value bitfuzz

scoreboard players remove #size bitfuzz 1
scoreboard players operation #bit_value bitfuzz *= #const_2 bitfuzz
execute positioned ~ ~2 ~ run function bitfuzz:output/read/loop_body