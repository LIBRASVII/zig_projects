const std = @import("std");

// To make a multi-line string, put '\\' at the beginning of each
// line just like a code comment but with backslashes instead:
//
//     const two_lines =
//         \\Line One
//         \\Line Two
//     ;

pub fn main() !void {
    const lyrics =
        \\Ziggy played guitar
        \\Jamming good with Andrew Kelley
        \\And the Spiders from Mars
    ;
    std.debug.print("{s}\n", .{lyrics});
}
