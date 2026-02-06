$execute if block ~ ~ ~ lever[powered=$(powered)] run return 0

execute if block ~ ~ ~ lever[face=wall,facing=north] run setblock ~ ~ ~1 bedrock
$execute if block ~ ~ ~ lever[face=wall,facing=north] run setblock ~ ~ ~ lever[face=wall,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=north] run setblock ~ ~ ~1 redstone_lamp[lit=$(powered)]
execute if block ~ ~ ~ lever[face=wall,facing=east] run setblock ~-1 ~ ~ bedrock
$execute if block ~ ~ ~ lever[face=wall,facing=east] run setblock ~ ~ ~ lever[face=wall,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=east] run setblock ~-1 ~ ~ redstone_lamp[lit=$(powered)]
execute if block ~ ~ ~ lever[face=wall,facing=south] run setblock ~ ~ ~-1 bedrock
$execute if block ~ ~ ~ lever[face=wall,facing=south] run setblock ~ ~ ~ lever[face=wall,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=south] run setblock ~ ~ ~-1 redstone_lamp[lit=$(powered)]
execute if block ~ ~ ~ lever[face=wall,facing=west] run setblock ~1 ~ ~ bedrock
$execute if block ~ ~ ~ lever[face=wall,facing=west] run setblock ~1 ~ ~ lever[face=wall,facing=west,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=west] run setblock ~1 ~ ~ redstone_lamp[lit=$(powered)]

execute if block ~ ~ ~ lever[face=floor] run setblock ~ ~-1 ~ bedrock
$execute if block ~ ~ ~ lever[face=floor,facing=north] run setblock ~ ~ ~ lever[face=floor,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=east] run setblock ~ ~ ~ lever[face=floor,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=south] run setblock ~ ~ ~ lever[face=floor,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=west] run setblock ~ ~ ~ lever[face=floor,facing=west,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor] run setblock ~ ~-1 ~ redstone_lamp[lit=$(powered)]

execute if block ~ ~ ~ lever[face=ceiling] run setblock ~ ~1 ~ bedrock
$execute if block ~ ~ ~ lever[face=ceiling,facing=north] run setblock ~ ~ ~ lever[face=ceiling,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=east] run setblock ~ ~ ~ lever[face=ceiling,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=south] run setblock ~ ~ ~ lever[face=ceiling,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=west] run setblock ~ ~ ~ lever[face=ceiling,facing=west,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling] run setblock ~ ~1 ~ redstone_lamp[lit=$(powered)]