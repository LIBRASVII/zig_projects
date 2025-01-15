// Where possible, const values are preferred over var values.
const constant: i32 = 10; // signed 32-bit constant
var variable: u32 = 5000; // unsigned 32-bit variable
// var float_: f32 = 53.4;

// @as performs as explicit type coercion
const inferred_constant = @as(i32, 5);
var inferred_variable = @as(u32, 5000);
