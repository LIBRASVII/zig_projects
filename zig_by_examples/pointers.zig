const std = @import("std");
const print = std.debug.print;

const Single = *bool;

const Many = [*]bool;

const Null = ?*bool;

pub fn main() !void {
    var v = false;
    // point to v
    // &v is used to get the address of v
    const ptr: *bool = &v;
    // print the address stored in ptr
    // the memory location where v is stored
    print("pointer: {}\n", .{ptr});

    // To access the value located at the memory address stored by a single-item pointer,
    // use the * operator.
    ptr.* = true; // dereferences the pointer ptr and sets the value of v (the variable ptr is pointing to) to true.
    print("value: {}\n", .{ptr.*}); // print the value pointed to by ptr

    // points to v
    // similar to earlier ptr
    const const_ptr: *bool = &v;
    // dereferences const_ptr and sets the value of v back to false
    const_ptr.* = false;

    const cf = false;
    const ct = true;
    var ptr_to_const: *const bool = &cf; // a pointer to a constant bool(*const bool) that point to cf
    // is then reassigned to point to ct
    // which is allowed since the pointer is to a const value
    // meaning the pointer itself can be reassigned to point to a different constant
    ptr_to_const = &ct;
}
