const std = @import("std");
const expect = @import("std").testing.expect;

// without a continue expression
test "while" {
    var i: u8 = 2;
    while (i < 100) {
        i *= 2;
    }
    try expect(i == 128);
}

// with a continue expression
test "while with a continue expression" {
    var sum: u8 = 0;
    var i: u8 = 1;
    while (i <= 10) : (i += 1) {
        sum += 1;
    }
    try expect(sum == 55);
}

// with a continue
test "while with continue" {
    var sum: u8 = 0;
    var i: u8 = 0;
    while (i <= 3) : (i += 1) {
        if (i == 2) continue;
        sum += 1;
    }
    try expect(sum == 4);
}

// with a break
test "while with break" {
    var sum: u8 = 0;
    var i: u8 = 0;
    while (i <= 3) : (i += 1) {
        if (i == 2) break;
        sum += i;
    }
    try expect(sum == 1);
}
