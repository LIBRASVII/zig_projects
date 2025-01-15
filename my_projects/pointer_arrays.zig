const std = @import("std");

// const my_struct = struct {
//     const my_string: [3][]const u8 = &[_][]const u8{ " Illegal month", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
// };

fn month_name() []const []const u8 {
    const my_string: [3][]const u8 = &[_][]const u8{ " Illegal month", "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December" };
    return my_string;
}

pub fn main() !void {
    const months = month_name();

    for (months, 0..) |month, i| {
        std.debug.print("Month {}: {}", .{ i, month });
    }
}
