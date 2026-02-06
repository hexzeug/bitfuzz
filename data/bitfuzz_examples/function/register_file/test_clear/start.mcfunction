function bitfuzz:input/clear {name:din}
function bitfuzz:input/clear {name:aw}
function bitfuzz:input/random {name:ar1}
function bitfuzz:input/random {name:ar2}

function bitfuzz_examples:register_file/test_clear/write_loop
schedule function bitfuzz_examples:register_file/checker/linear_access 150t append