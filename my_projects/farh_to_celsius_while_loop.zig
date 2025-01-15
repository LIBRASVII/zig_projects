const std = @import("std");

// error code
pub fn main() !void {
    var x: f32 = 0;

    while (x <= 300.0) : (x += 20.0) {
        const fahr: f32 = (5.0 / 9.0) * (x - 32);
        std.debug.print("{f:.[1]} {f:.[1]}\n", .{ fahr, x });
    }
}
