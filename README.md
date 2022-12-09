# ProPrint
A basic printing utility scripted by nicK.

## Installation
There is no package manager required or anything, you literally just have to copy and paste the source from [here](https://github.com/probablYnicKxD/ProPrint/blob/main/Source.lua) and put it into a file called `proprint.lua`.

Then, in your main file, do:
```lua
local pro = require "proprint"
```

## Keys

|    Key   | Value      |
|:--------:|------------|
| `<magenta>` | Magenta text. |
| `<highlight>` | Highlight text. |
| `<cyan>` | Cyan text. |
| `<white>` | White text. |
| `<blue>` | Blue text. |
| `<underline>` | Underline text. |
| `<black>` | Black text. |
| `<red>` | Red text. |
| `<blink>` | Blink text. |
| `<dim>` | Dim text. |
| `<green>` | Green text. |
| `<bold>` | Bold text. |
| `<yellow>` | Yellow text. |
| `<hidden>` | Hidden text. |
| `<reset>` | Reset text. |

## Using ProPrint

ProPrint comes with 2 functions: `pro:colorize()` and `pro:print()`.

### pro:colorize()

The `pro:colorize()` function returns a colorized and formatted string that is readable by Lua.

The only argument this function takes is the `string`.

Example:
```lua
print(pro:colorize("<blue>This is some blue text.</blue>"))
```

### pro:print()

The `pro:print()` function is the equivalent to `print(pro:colorize())`.

The only argument this function takes is the `string`.

Example:
```lua
pro:print("<blue>This is some blue text.</blue>")
```

### More coming soon!
