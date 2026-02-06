function bitfuzz:input/random {name:din}
function bitfuzz:input/increment {name:aw}

tellraw @a ["Writing r", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:aw}}]",objective:"bitfuzz"}}, "=", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:din}}]",objective:"bitfuzz"}}]
function bitfuzz_examples:register_file/write with entity @n[tag=bitfuzz.input,nbt={data:{name:aw}}] data


execute unless score @n[tag=bitfuzz.input,nbt={data:{name:aw}}] bitfuzz matches 15 run schedule function bitfuzz_examples:register_file/test_random/write_loop 26t append
