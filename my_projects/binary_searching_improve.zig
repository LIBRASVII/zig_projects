/// Performs a binary search for `x` in the sorted array `A`.
/// Returns the index of `x` if found, or null if not found.
const std = @import("std");

// Use a larger integer type, such as usize, for indexing.
// This will allow the function to work with larger arrays and avoid potential overflow issues.
// n: i8 to usize
// fn return i8 to usize
fn binary_search(x: i8, A: []const i8, n: usize) i8 {
    // ensure that n is within the bounds of the array
    if (n > A.len) {
        return -1;
    }

    // Initialize the low and high pointers for the binary search
    var low: i8 = 0; // i8 to usize
    var high: i8 = n - 1; // i8 to usize

    // Continue searching while the low pointer is less than or equal to the high pointer
    while (low <= high) {
        // Calculate the mid-point of the current search range
        const mid: i8 = @divTrunc(low + high, 2);

        if (x < A[mid]) {
            high = mid - 1;
        } else if (x > A[mid]) {
            low = mid + 1;
        } else {
            // found match
            return mid;
        }
    }
    // not match
    return -1; // -1 to special constant, can use also an option type
}

pub fn main() !void {
    const array = [_]i8{ 1, 2, 3, 4, 5 };
    const len: usize = array.len; // added usize to len

    // const slice = array[0..5];
    // const len = slice.len; // take the length

    // value to be found
    const x: i8 = 3;

    const result = binary_search(x, &array, len);

    if (result != x) { // change the logic, x to usize.max
        std.debug.print("Found value {} at index\n", .{ x, result });
    } else {
        std.debug.print("Value {} not found\n", .{x});
    }
}
