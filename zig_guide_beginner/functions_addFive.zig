const std = @import("std");
const expect = std.testing.expect;

fn add_five(x: u32) u32 {
    return x + 5;
}

test "function" {
    const y = add_five(0);
    try expect(@TypeOf(y) == u32);
    try expect(y == 5);
}
