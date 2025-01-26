// binary searching
// array already sorting

const std = @import("std");

pub fn main() !void {
    const array = [5]u8{ 1, 2, 3, 4, 5 };

    // to take the begin and end of array
    const low = 0;
    const upper: u8 = array - 1;

    // value to be found
    const x: i32 = 3;

    while (low <= upper) {
        // take the mid of array
        const mid = (low - upper) / 2;

        if (x == array[mid]) {
            std.debug.print("The value {} was found", .{array[mid]});
        } else {
            std.debug.print("{} wasn't found in the array", .{x});
        }
    }
}
