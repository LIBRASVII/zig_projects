const std = @import("std");
const print = std.debug.print;

pub fn main() void {
    // ways to print a message
    std.debug.print("{s}\n", .{"Hello, World"});
    std.debug.print("Hello, World!\n", .{});
    print("Hello, World!\n", .{});
}
