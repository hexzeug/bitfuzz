function bitfuzz:output/read
scoreboard players set #correct bitfuzz 0
execute store success score #comp bitfuzz run function bitfuzz_examples:register_file/check_dout1 with entity @n[tag=bitfuzz.input,nbt={data:{name:ar1}}] data
scoreboard players operation #correct bitfuzz += #comp bitfuzz
execute store success score #comp bitfuzz run function bitfuzz_examples:register_file/check_dout2 with entity @n[tag=bitfuzz.input,nbt={data:{name:ar2}}] data
scoreboard players operation #correct bitfuzz += #comp bitfuzz

tellraw @a ["Reading r", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:ar1}}]",objective:"bitfuzz"}}, " and r", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:ar2}}]",objective:"bitfuzz"}}, ": correct=", {score:{name:"#correct", objective:"bitfuzz"}}, "/2"]

function bitfuzz:input/increment {name:ar1}
function bitfuzz:input/increment {name:ar2}
execute unless score @n[tag=bitfuzz.input,nbt={data:{name:ar1}}] bitfuzz matches 0 run schedule function bitfuzz_examples:register_file/checker/linear_loop 30t