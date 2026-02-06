execute store result score #size bitfuzz run data get entity @s data.size 1
scoreboard players set @s bitfuzz 0
function bitfuzz:input/clear/loop_body

execute store result entity @s data.value int 1 run scoreboard players get @s bitfuzz