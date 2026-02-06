function bitfuzz:input/increment {name:aw}
execute if score @n[tag=bitfuzz.input,nbt={data:{name:aw}}] bitfuzz matches 0 run return 1

tellraw @a ["Writing r", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:aw}}]",objective:"bitfuzz"}}, "=", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:din}}]",objective:"bitfuzz"}}]
function bitfuzz_examples:register_file/write with entity @n[tag=bitfuzz.input,nbt={data:{name:aw}}] data

schedule function bitfuzz_examples:register_file/test_clear/write_loop 10t append