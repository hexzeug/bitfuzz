execute unless score #size bitfuzz matches 1.. run return 1
scoreboard players remove #size bitfuzz 1

execute store result score #bit bitfuzz run random value 0..1
execute if score #bit bitfuzz matches 0 run function bitfuzz:random/set_lever {powered:"false"}
execute if score #bit bitfuzz matches 1 run function bitfuzz:random/set_lever {powered:"true"}
scoreboard players operation @s bitfuzz *= #const_2 bitfuzz
scoreboard players operation @s bitfuzz += #bit bitfuzz

execute positioned ~ ~2 ~ run function bitfuzz:random/generate