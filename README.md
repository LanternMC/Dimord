# Dimord

Dimord is a simple Minecraft data pack that outputs the order that
dimension-specific ticks execute in to all connected players on world (re)load.

This order is based on the memory addresses of the `DimensionType` objects,
meaning the order will probably stay the same unless the Minecraft client or
server is completely restarted.

## Usage

Download the [latest release], then add the ZIP to your world's `datapacks`
folder.

### Note

Dimord depends on [Lantern]. There is currently no tool to bundle data packs
that use Lantern, so either use an existing Dimord release, or test with the
[latest unbundled release] of Lantern.

## License

Dimord is licensed under the [MIT license].

### Contribution

Unless you explicitly state otherwise, any contributions intentionally submitted
for inclusion in Dimord by you shall be licensed as MIT, without any additional
terms or conditions.

[latest release]: https://github.com/lanternmc/dimord/releases
[Lantern]: https://github.com/lanternmc/lantern
[latest unbundled release]: https://github.com/lanternmc/lantern/releases
[MIT license]: https://github.com/lanternmc/dimord/blob/master/LICENSE
