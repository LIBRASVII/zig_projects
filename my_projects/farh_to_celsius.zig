const std = @import("std");

// print Farhrenheit-Celsius table
pub fn main() !void {
    const lower: u8 = 0;
    const upper: u16 = 300;
    const step: u8 = 20;

    var farh: i32 = 0;
    var celsius: i32 = 0;

    farh = lower;
    while (farh <= upper) {
        // @divTruc(numerator, denominator)
        // ensures that the division produces a truncated result (it ignores the remainder)
        celsius = @divTrunc(5 * (farh - 32), 9);
        std.debug.print("{}\t{}\n", .{ farh, celsius });
        farh = farh + step;
    }
}
