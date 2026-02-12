function bitfuzz:output/read
scoreboard players operation #inc bitfuzz = @n[tag=bitfuzz.input,nbt={data:{name:incin}}] bitfuzz
scoreboard players add #inc bitfuzz 1
execute store success score #correct bitfuzz if score #inc bitfuzz = @n[tag=bitfuzz.output,nbt={data:{name:incout}}] bitfuzz

tellraw @a ["Incremented ", {score:{name:"@n[tag=bitfuzz.input,nbt={data:{name:incin}}]",objective:"bitfuzz"}}, " to ", {score:{name:"@n[tag=bitfuzz.output,nbt={data:{name:incout}}]",objective:"bitfuzz"}}, ", correct=", {score:{name:"#correct", objective:"bitfuzz"},color:"aqua"}]

function bitfuzz:input/random {name:incin}