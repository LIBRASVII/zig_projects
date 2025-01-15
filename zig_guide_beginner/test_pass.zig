const std = @import("std");
const expect = std.testing.expect;

test "always_succeeds" {
    try expect(true);
}
