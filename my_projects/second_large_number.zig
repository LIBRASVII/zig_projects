const std = @import("std");

fn swap(x: *u8, y: *u8) !void {
    const temp: u8 = *x;
    x.* = *y;
    y.* = temp;
}

// fn quick_sort(arr: [6]u8, len: u8) !void {
//     const med = (len / 2) - 1;
//
//     for (arr[0..]) |elem| {
//         if (elem <= med) {
//             swap(arr[0], med);
//         }
//     }
// }

// fn second_large(arr: [6]u8) u8 {}

pub fn main() !void {
    // const arr: [6]u8 = .{ 12, 35, 1, 10, 34, 1 };
    // const len = arr.len;

    // quick_sort(arr[0..], len);
    // second_large(arr[0..]);

    const a = 10;
    const b = 5;

    swap(a, b);

    std.debug.print("{d} {d}", .{ a, b });
}
