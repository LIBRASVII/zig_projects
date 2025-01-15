const std = @import("std");

pub fn main() void {
    const sum = add(9000, 1);
    std.debug.print("9000 + 1 = {d}\n", .{sum});
}

// to sum two elements
fn add(x: i64, y: i64) i64 {
    return x + y;
}
