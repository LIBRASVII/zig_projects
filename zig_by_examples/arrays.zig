const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const a = [3]i32{ 1, 2, 3 };

    // an array with a size of _
    // this tells the compiler to infer the array’s size for us (in this case, 3)
    const b = [_]i32{ 4, 5, 6 };

    // array using an anonymous list literal
    const c: [3]i32 = .{ 7, 8, 9 };

    var d: [3]i32 = undefined;
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;

    print("len: {}\n", .{c.len});

    // if an array is compile-time known, it can be repeated
    print("repeate: {any}\n", .{a ** 3});

    // if two arrays are compile-time known, they can be concatenated
    print("concat: {any}\n", .{a ++ b});

    for (d) |elem| {
        print("elem: {}\n", .{elem});
    }
}
