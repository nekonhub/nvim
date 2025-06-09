# nvim config in Lua
Neovim config files, simplified to take advantage of nvim r0.11 features in F42.

No UserName folder. Instead uses...
```lua
require(".lazy")
```
...in the init.lua file.

The dot before ".lazy" gives neat, logical structure without the eponymous folder.

Props to [TJ](https://github.com/tjdevries), [Prime](https://github.com/ThePrimeagen), [MrJakob](https://github.com/jakobwesthoff )and others for ideas, keymaps and promoting a simpler setup.
New config focused on function over form, native over plugin.

Comments sufficient to avoid "why?" or "WTAF" in a year's time.

I'm not sure Neovim makes me faster, because "tinker-time".
But I do know that Neovim makes me happy, and that should count for something.

