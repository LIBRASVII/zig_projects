const std = @import("std");
const expect = std.testing.expect;

test "always_fails" {
    try expect(false);
}
