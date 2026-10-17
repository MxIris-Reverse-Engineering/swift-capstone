# cstool

[capstone's cstool](https://github.com/capstone-engine/capstone/tree/next/cstool)
in Swift, for AArch64, the one architecture swift-capstone wraps. It shows the
package in use end to end, and depends on the checkout it sits in.

```sh
swift run cstool aarch64 "62 00 04 8b c0 03 5f d6" 1000
1000  62 00 04 8b  add	x2, x3, x4
1004  c0 03 5f d6  ret
```

The mode is `aarch64` or `aarch64be`, with `+apple` for Apple's proprietary
instructions. The flags follow capstone's cstool:

| Flag | Effect |
|------|--------|
| `-d` | Show the details of each instruction. |
| `-r` | Show the details of the real instruction behind an alias. |
| `-a` | Print capstone's register aliases, `fp` and `lr`. |
| `-s` | Decode past bytes that are not instructions. |
| `-u` | Print immediates as unsigned numbers. |

`--version` shows the capstone version and the architectures compiled in, where
capstone's cstool uses `-v`. Details are printed in a format of this tool's own.
