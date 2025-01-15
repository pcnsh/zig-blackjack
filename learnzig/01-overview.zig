// Zig's standard library to print our output.
const std = @import("std");

const user = @import("models/user.zig");
const User = user.User;
const MAX_POWER = user.MAX_POWER;

// This code won't compile if `main` ins't `pub` (public)
pub fn main() void {
    const new_user = User{
        .power = 9001,
        .name = "Goku",
        // dots are used for initialize values
    };

    std.debug.print("{s}'s power is {d}\n'", .{ new_user.name, new_user.power });
}
