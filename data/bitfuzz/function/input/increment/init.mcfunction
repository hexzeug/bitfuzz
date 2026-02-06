execute unless score @s bitfuzz matches -2147483648..2147483647 run return fail

execute store result score #size bitfuzz run data get entity @s data.size 1
scoreboard players add @s bitfuzz 1

function bitfuzz:input/increment/loop_body