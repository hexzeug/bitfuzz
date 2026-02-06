execute if score #alu_testing bitfuzz matches 1 run return run tellraw @p {text:"ALU testing is already started", color:"red"}

scoreboard players set #alu_testing bitfuzz 1

function bitfuzz_examples:alu/test_random/loop