function bitfuzz:input/set_lever {powered:"false"}
scoreboard players remove #size bitfuzz 1
execute if score #size bitfuzz matches 1.. positioned ~ ~2 ~ run function bitfuzz:input/clear/loop_body