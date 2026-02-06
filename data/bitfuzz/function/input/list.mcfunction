tellraw @p "--- Bitfuzz input list ---"
tellraw @p ["[", {"text":"Enabled",color:"green"},"] inputs:"]
execute as @e[tag=bitfuzz.input,nbt={data:{enabled:true}}] run tellraw @p ["  [", {nbt:"data.name",entity:"@s"}, "]: ", {score:{name:"@s", objective:"bitfuzz"}}, ", (", {nbt:"data.size",entity:"@s"}, " bits)"]
tellraw @p ["[", {"text":"Disbaled",color:"red"},"] inputs:"]
execute as @e[tag=bitfuzz.input,nbt={data:{enabled:false}}] run tellraw @p ["  ", {nbt:"data.name",entity:"@s"}, ", (", {nbt:"data.size",entity:"@s"}, " bits)"]
tellraw @p "--- EOL ---"