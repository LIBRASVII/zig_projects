const std = @import("std");

// error code for loop
pub fn main() !void {
    for (0..300) |fahrenheit| {
        const celsius = (fahrenheit - 32) * 5 / 9;
        std.debug.print("{} fahr  = {} celsius\n", .{ fahrenheit, celsius });
    }
}
