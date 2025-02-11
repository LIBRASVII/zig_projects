const std = @import("std");

// Bubble-Sort
fn sorted(arr: []i32) void {
    const len = arr.len;
    var swapped: bool = true;

    while (swapped) {
        swapped = false;
        for (0..len - 1) |i| {
            if (arr[i] < arr[i + 1]) {
                // Swap
                const temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;
                swapped = true;
            }
        }
    }
}

fn compare(to_payed: i32, largest_coin: i32) i32 {
    if (to_payed != 0) {
        return (to_payed - largest_coin);
    }
    return -1;
}

pub fn main() !void {
    var arr = [4]i32{ 10, 1, 5, 7 };
    var validation: bool = false;

    sorted(arr[0..]);

    std.debug.print("Sorted: {any}\n", .{arr});

    while (validation) {
        compare(47, arr[0]);
        if ()
    }

    // std.debug.print("Amount: {d}\n", .{amount});
}
