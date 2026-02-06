execute if score #size bitfuzz matches ..0 run return run scoreboard players set @s bitfuzz 0

execute if block ~ ~ ~ lever[powered=false] run return run function bitfuzz:input/set_lever {powered:"true"}
function bitfuzz:input/set_lever {powered:"false"}

scoreboard players remove #size bitfuzz 1
execute positioned ~ ~2 ~ run function bitfuzz:input/increment/loop_body