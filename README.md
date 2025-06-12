# nvim config in Lua
Neovim config files, simplified to take advantage of nvim r0.11 features in F42.

I'm not sure Neovim makes me faster, because "tinker-time".
But I do know that Neovim makes me happy, and that should count for something.

No UserName folder. Instead uses...
```lua
require(".lazy")
```
...in the init.lua file.

The dot before ".lazy" gives neat, logical structure without the eponymous folder.

Props to [TJ](https://github.com/tjdevries), [Prime](https://github.com/ThePrimeagen), [MrJakob](https://github.com/jakobwesthoff ) and others for ideas, keymaps and promoting a simpler setup.
New config focused on function over form, native over plugin.

Comments sufficient to avoid "why?" or "WTAF" in a year's time.

I used to use Neorg but switched to markdown, I was fed up with breaking changes and weird behaviours. I don't use preview or render-markdown (which caused me link issues) and glow just hurt my eyes. But Markview is really nice, subtle even, especially in my preferred Substrata colorscheme. One of these days I will get round to converting Substrata to Lua.

![Markview in Substrata colorscheme](assets/Markview.png)


[great markdown cheatsheet](https://github.com/im-luka/markdown-cheatsheet)

