const std = @import("std");
const SocketConf = @import("config.zig");
var stdout_buffer:[1024]u8 = undefined;
var stdout_writer = std.fs.File.stdout().writer(&stdout_buffer);
const stdout = &stdout_writer.interface;
