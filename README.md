# sh0rtener-nvim-dots-v0

## Formatting and Auto Code

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `Ctrl + Shift + I`       | Format code via LSP (asynchronously)            |
| C# Auto-save             | `csharpier` runs before saving to format code   |

---

## Diagnostics and Errors (LSP)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `<leader> e`             | Show diagnostics/error in a floating window     |
| `[ d`                    | Go to previous diagnostic error                 |
| `] d`                    | Go to next diagnostic error                     |

---

## NvimTree (File Explorer)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `<leader> p`             | Toggle NvimTree                                 |
| `h`                      | Close folder / move up one level                |
| `l`                      | Open file                                      |
| `v`                      | Open file in vertical split                    |
| `a`                      | Create file                                    |
| `d`                      | Delete file / folder                            |
| `r`                      | Rename file / folder                            |
| `c`                      | Copy file / folder                              |
| `x`                      | Cut file / folder                               |
| `p`                      | Paste copied / cut file                         |

---

## Buffers and Navigation (BufferLine)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `<leader> n`             | Switch to previous buffer                       |
| `<leader> m`             | Switch to next buffer                           |
| `<leader> 1..9`          | Go to specific buffer (1–9)                     |
| `<leader> q`             | Close current buffer                            |

---

## Search (Telescope)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `<leader> ff`            | Find files in project                           |
| `<leader> fb`            | Search open buffers                             |
| `<leader> fg`            | Search text in project (live grep)              |

---

## Debugging (DAP)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `F5`                     | Start / continue debugging                      |
| `F10`                    | Step over                                       |
| `F11`                    | Step into                                       |
| `F12`                    | Step out                                        |
| `<leader> db`            | Toggle breakpoint                               |
| `<leader> dc`            | Clear all breakpoints                           |
| `<leader> dr`            | Open DAP REPL                                   |

---

## LSP: Code Actions and Code Navigation

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `<leader> cl`            | Run CodeLens (LSP)                              |
| `<leader> sr`            | Show all references to symbol under cursor      |
| `gd`                     | Go to symbol definition                         |
| `gD`                     | Go to symbol declaration                        |
| `gt`                     | Go to symbol type                               |
| `gi`                     | Go to interface / method implementation         |
| `gr`                     | Show all symbol references                      |
| `K`                      | Show hover information for symbol               |
| `<leader> ca`            | Open Code Actions                               |

---

## Window Navigation (Splits)

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `Ctrl + h`               | Move to left window                             |
| `Ctrl + j`               | Move to bottom window                           |
| `Ctrl + k`               | Move to top window                              |
| `Ctrl + l`               | Move to right window                            |

---

## Insert Mode Aliases

| Key                      | Action                                          |
| ------------------------ | ----------------------------------------------- |
| `Ctrl + k`               | Exit insert mode (Esc)                          |

---

## Comments (Comment.nvim)

| Action                    | Key                                             |
| ------------------------- | ----------------------------------------------- |
| Comment line              | `gcc`                                           |
| Comment block             | `gbc`                                           |
| Comment above             | `gcO`                                           |
| Comment below             | `gco`                                           |
| Comment at end of line    | `gcA`                                           |
| Operator-pending comment  | `gc{motion}` / `gb{motion}`                     |

---

