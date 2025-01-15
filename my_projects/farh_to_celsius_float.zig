const std = @import("std");

// not complete
// code issue
pub fn main() !void {
    const lower: i32 = 0;
    const upper: i32 = 300;
    const step: i32 = 20;

    var fahr: f64 = 0;
    var celsius: f64 = 0;

    fahr = lower;
    while (fahr <= upper) {
        celsius = (fahr - 32.0) * (5.0 / 9.0);
        std.debug.print("{:.1f}\t{:.1f}\n", .{ fahr, celsius });
        fahr += @as(f64, step);
    }
}
