const User = @import("models/import_example.zig").User; // to import all at once

// to import more than one thing
const user = @import("models/import_example.zig");
// const User = user.User;
const MAX_POWER = user.MAX_POWER;
