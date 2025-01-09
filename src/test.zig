const std = @import("std");

pub fn main() !void {
    std.debug.print("Press any key and hit enter!\n", .{});
    // [6]u8 means 6 characters (Enter is considered as character too), u8 -> unsigned 8 bit value
    var input: [2]u8 = undefined;
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    _ = try stdin.readUntilDelimiter(&input, '\n');

    try stdout.print("The user entered: {s}\n", .{input});
}
