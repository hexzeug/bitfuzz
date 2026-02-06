execute if score #size bitfuzz matches ..0 run return 1

execute store result score #bit bitfuzz run random value 0..1
execute if score #bit bitfuzz matches 0 run function bitfuzz:input/set_lever {powered:"false"}
execute if score #bit bitfuzz matches 1 run function bitfuzz:input/set_lever {powered:"true"}
execute if score #bit bitfuzz matches 1 run scoreboard players operation @s bitfuzz += #bit_value bitfuzz

scoreboard players remove #size bitfuzz 1
scoreboard players operation #bit_value bitfuzz *= #const_2 bitfuzz
execute positioned ~ ~2 ~ run function bitfuzz:input/random/loop_body