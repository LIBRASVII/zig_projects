// Array are denoted by [N]T
// N is the number of elements in the array
// T is the tyoe of those elements

const a = [5]u8{ 'h', 'e', 'l', 'l', 'o' };
// for array literals, N may be reaplaced by '_' to infer the size of the array
const b = [_]u8{ 'w', 'o', 'r', 'l', 'd' };

// len field to get the size of an array
const length = a.len; // 5
