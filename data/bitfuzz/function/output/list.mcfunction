tellraw @p "--- Bitfuzz output list ---"
execute as @e[tag=bitfuzz.input] run tellraw @p ["  [", {nbt:"data.name",entity:"@s"}, "]: ", {score:{name:"@s", objective:"bitfuzz"}}, ", (", {nbt:"data.size",entity:"@s"}, " bits)"]
tellraw @p "--- EOL ---"