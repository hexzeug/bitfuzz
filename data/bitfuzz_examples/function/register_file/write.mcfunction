$scoreboard players operation #r$(value) bitfuzz = @n[tag=bitfuzz.input,nbt={data:{name:din}}] bitfuzz

function bitfuzz:input/increment {name:w}
execute if score @n[tag=bitfuzz.input,nbt={data:{name:w}}] bitfuzz matches 1 run schedule function bitfuzz_examples:register_file/write 4t append