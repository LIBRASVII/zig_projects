const std = @import("std"); // standard library

// This code won't compile if 'main' isn't 'pub' (public)
pub fn main() void {
    const user = User{
        .power = 10001,
        .name = "Vegetta",
    };

    std.debug.print("{s}'s power is {d}\n", .{ user.name, user.power });
}

pub const User = struct {
    power: u64 = 0,
    name: []const u8,
};
