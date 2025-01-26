// binary searching
const std = @import("std");

fn binary_search(x: i8, A: []const i8, n: i8) i8 {

    // to take the begin and end of array
    var low: i8 = 0;
    var high: i8 = n - 1;

    while (low <= high) {
        // take the mid of array
        const mid: i8 = @divTrunc(low + high, 2);

        if (x < A[mid]) {
            high = mid - 1;
        } else if (x > A[mid]) {
            low = mid + 1;
        } else {
            return mid; // found match
        }
    }
    return -1; // not match
}

pub fn main() !void {
    const array = [_]i8{ 1, 2, 3, 4, 5 };
    const lenn = array.len;
    // const slice = array[0..5];
    // const len = slice.len; // take the length

    // value to be found
    const x: i8 = 3;

    const result = binary_search(x, &array, lenn);

    if (result != x) {
        std.debug.print("Found value {} at index\n", .{ x, result });
    } else {
        std.debug.print("Value {} not found\n", .{x});
    }
}
