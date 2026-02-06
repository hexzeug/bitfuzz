$execute if entity @e[tag=bitfuzz.input,nbt={data:{name:"$(name)"}}] run return run tellraw @p {"text":"An input with name '$(name)' already exists.","color":"red"}

$execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["bitfuzz.input"],data:{name:"$(name)",size:$(size),enabled:true}}
$execute as @n[tag=bitfuzz.input,nbt={data:{name:"$(name)"}}] at @s run function bitfuzz:input/clear/init