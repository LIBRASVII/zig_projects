const std = @import("std");
const print = std.debug.print;

// common integer types
const a: u8 = 1;
const b: u32 = 10;
const c: i64 = 100;
const d: isize = 1_000;

// Not so commo integer types
const e: u21 = 10_000;
const f: i42 = 100_000;

// compile-time know integers
const g: comptime_int = 1_000_000;
const i = '💯';

pub fn main() !void {
    print("Integer:  {d}\n", .{i});
    print("Unicode:  {u}\n", .{i});
}
