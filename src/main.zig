const std = @import("std");
const SocketConf = @import("config.zig");
var stdout_buffer:[1024]u8 = undefined;
var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
const stdout = &stdout_writer.interface;

pub fn main() !void {
    const socket = try SocketConf.Socket.init();
    try stdout.print("Server Address: {any}\n", .{socket._address});
    try stdout.flush();
    var server = try socket._address.listen(.{});
    const connection = try server.accept();
    _ = connection;
}
