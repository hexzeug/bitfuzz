function bitfuzz:output/read

scoreboard players operation #sum bitfuzz = @n[tag=bitfuzz.input,nbt={data:{name:in1}}] bitfuzz
execute if score @n[tag=bitfuzz.input,nbt={data:{name:sub}}] bitfuzz matches 1 run scoreboard players operation #sum bitfuzz += @n[tag=bitfuzz.input,nbt={data:{name:in2}}] bitfuzz
execute if score @n[tag=bitfuzz.input,nbt={data:{name:sub}}] bitfuzz matches 0 run scoreboard players operation #sum bitfuzz -= @n[tag=bitfuzz.input,nbt={data:{name:in2}}] bitfuzz
execute store success score #correct bitfuzz if score #sum bitfuzz = @n[tag=bitfuzz.output,nbt={data:{name:sum}}] bitfuzz

tellraw @a [" = ", {score:{name:"@n[tag=bitfuzz.output,nbt={data:{name:sum}}]",objective:"bitfuzz"}}, ", correct=", {score:{name:"#correct", objective:"bitfuzz"},color:"aqua"}]