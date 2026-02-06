$execute if entity @e[tag=bitfuzz.output,nbt={data:{name:"$(name)"}}] run return run tellraw @p {"text":"An output with name '$(name)' already exists.","color":"red"}

$execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["bitfuzz.output"],data:{name:"$(name)",size:$(size)}}

$execute as @e[tag=bitfuzz.output,nbt={data:{name:"$(name)"}}] at @s run function bitfuzz:output/read/init