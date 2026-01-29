# cycle-linemode.yazi

[Yazi](https://github.com/sxyazi/yazi) plugin for dynamically cycling through the [linemode](https://yazi-rs.github.io/docs/configuration/yazi/#mgr.linemode) settings

## Screenshot

![Screenshot](/demo.gif)

## Requirements

- [Yazi](https://github.com/sxyazi/yazi) v26.1.22+

## Installation

```bash
ya pkg add jessefarinacci/cycle-linemode
```

## Setup

Add this to your `init.lua`:

```lua
require("cycle-linemode"):setup({
  linemodes = { "size", "btime", "mtime", "owner", "permissions", "none" }
})
```

Add this to your `keymap.toml`:

```toml
[[mgr.prepend_keymap]]
desc = "Cycle to next linemode"
on   = ","
run  = "plugin cycle-linemode"
```

## Configuration

Here is the full configuration:

- `linemodes` override the default linemodes to cycle (`{ "size", "btime", "mtime", "owner", "permissions", "none" }`)
