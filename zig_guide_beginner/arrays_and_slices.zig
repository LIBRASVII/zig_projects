const a = [5]i32{ 1, 2, 3, 4, 5 };
// .{...} it works with arrays too
const b: [5]i32 = .{ 1, 2, 3, 4, 5 };

// user _ to let the compiler infer the lenght
const c = [_]i32{ 1, 2, 3, 4, 5 };

// SLICE
// is a pointer to an array with a length
// the length is known at runtime
const x = [_]i32{ 1, 2, 3, 4, 5 }; // array
const y = x[1..4]; // a pointer to an array of intergers with length of 3

const z = [_]i32{1, 2, 3, 4, 5};
var end: usize = 3;
end += 1;
const w = z[1..end];
