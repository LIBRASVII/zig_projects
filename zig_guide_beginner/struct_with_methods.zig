const std = @import("std"); // import the standard library

// Struct with method
pub const User = struct { // struct with two elements
    power: u64 = 0,
    nome: []const u8,

    pub const SUPER_POWER = 9000;

    // method that compare if the power is great than SUPER_POWER
    pub fn diagnose(user: User) void {
        if (user.power >= SUPER_POWER) {
            std.debug.print("it's over {d}!!!", .{SUPER_POWER});
        }
        user.diagnose(); // call diagnose on user
        User.diagnose(user); // another way to call
    }
};
