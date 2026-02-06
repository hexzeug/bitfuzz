execute unless score #alu_testing bitfuzz matches 1 run return fail

execute store result score #random bitfuzz run random value 1..6

execute if score #random bitfuzz matches 6 run function bitfuzz:input/increment {name:sub}

execute if score #random bitfuzz matches 1..5 run function bitfuzz_examples:alu/test_computation/start
execute if score #random bitfuzz matches 6 run schedule function bitfuzz_examples:alu/test_computation/start 18t append

execute if score #random bitfuzz matches 1..5 run schedule function bitfuzz_examples:alu/test_random/loop 22t append
execute if score #random bitfuzz matches 6 run schedule function bitfuzz_examples:alu/test_random/loop 42t append
