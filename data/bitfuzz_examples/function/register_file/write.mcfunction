$scoreboard players operation #r$(value) bitfuzz = @n[tag=bitfuzz.input,nbt={data:{name:din}}] bitfuzz

function bitfuzz:input/clear {name:w}
function bitfuzz:input/increment {name:w}
schedule function bitfuzz_examples:register_file/write_stop 4t append