execute unless block ~ ~ ~ lever run return fail
$execute if block ~ ~ ~ lever[powered=$(powered)] run return 0

execute if block ~ ~ ~ lever[face=wall,facing=north] run rotate @s 0 0
execute if block ~ ~ ~ lever[face=wall,facing=east] run rotate @s 90 0
execute if block ~ ~ ~ lever[face=wall,facing=south] run rotate @s 180 0
execute if block ~ ~ ~ lever[face=wall,facing=west] run rotate @s 270 0
execute if block ~ ~ ~ lever[face=floor] run rotate @s 0 90
execute if block ~ ~ ~ lever[face=ceiling] run rotate @s 0 -90

execute rotated as @s run setblock ^ ^ ^1 bedrock

$execute if block ~ ~ ~ lever[face=wall,facing=north] run setblock ~ ~ ~ lever[face=wall,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=east] run setblock ~ ~ ~ lever[face=wall,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=south] run setblock ~ ~ ~ lever[face=wall,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=wall,facing=west] run setblock ~ ~ ~ lever[face=wall,facing=west,powered=$(powered)]

$execute if block ~ ~ ~ lever[face=floor,facing=north] run setblock ~ ~ ~ lever[face=floor,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=east] run setblock ~ ~ ~ lever[face=floor,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=south] run setblock ~ ~ ~ lever[face=floor,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=floor,facing=west] run setblock ~ ~ ~ lever[face=floor,facing=west,powered=$(powered)]

$execute if block ~ ~ ~ lever[face=ceiling,facing=north] run setblock ~ ~ ~ lever[face=ceiling,facing=north,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=east] run setblock ~ ~ ~ lever[face=ceiling,facing=east,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=south] run setblock ~ ~ ~ lever[face=ceiling,facing=south,powered=$(powered)]
$execute if block ~ ~ ~ lever[face=ceiling,facing=west] run setblock ~ ~ ~ lever[face=ceiling,facing=west,powered=$(powered)]

$execute rotated as @s run setblock ^ ^ ^1 redstone_lamp[lit=$(powered)]