const std = @import("std");

fn fibonacci(n: i8) i8 {
    if ((n == 1) or (n == 2)) {
        return 1;
    }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

pub fn main() !void {
    fibonacci(10);
}
