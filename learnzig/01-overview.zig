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

    // call diagnose on user
    new_user.diagnose();

    std.debug.print("{s}'s power is {d}\n'", .{ new_user.name, new_user.power });

    const sum = add(8999, 2);
    std.debug.print("8999 + 2 = {d}\n", .{sum});
}

fn add(a: i64, b: i64) i64 {
    // cant use a+=b
    // return a;
    // because function parameters are constants.
    return a + b;
}
