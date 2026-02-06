execute store result score #size bitfuzz run data get entity @s data.size 1
scoreboard players set #bit_value bitfuzz 1
scoreboard players set @s bitfuzz 0

function bitfuzz:output/read/loop_body