pub const User = struct {
    power: u64 = 0,
    name: []const u8,

    // function to initiate the structure
    pub fn init(name: []const u8, power: u64) User {
        return User{ // also can use 'return .{...}' instead of 'return User{...}'
            .name = name,
            .power = power,
        };
    }
};

// can't modify user with const variable
const user = User{
    .power = 9001,
    .name = "Goku",
};

// this way is possible to change the values
var user1 = User{
    .power = 9001,
    .name = "Goku",
};

// explicit form
const user2: User = User{
    .power = 9001,
    .name = "Goku",
};
