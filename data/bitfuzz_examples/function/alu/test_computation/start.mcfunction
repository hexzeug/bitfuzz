function bitfuzz:input/random {name:in1}
function bitfuzz:input/random {name:in2}

execute if score @n[tag=bitfuzz.input,nbt={data:{name:sub}}] bitfuzz matches 1 run tellraw @a ["Adding ", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:in1}}]",objective:"bitfuzz"}}, " + (", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:in2}}]",objective:"bitfuzz"}}, ")"]
execute if score @n[tag=bitfuzz.input,nbt={data:{name:sub}}] bitfuzz matches 0 run tellraw @a ["Subtracting ", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:in1}}]",objective:"bitfuzz"}}, " - (", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:in2}}]",objective:"bitfuzz"}}, ")"]

schedule function bitfuzz_examples:alu/test_computation/end 22t append
