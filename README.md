![falcon logo](https://raw.githubusercontent.com/fenetikm/falcon/master/support/logo2.png)

A colour scheme for terminals, vim and friends.

This is **v2.0** - vastly improved, with more tweak, less cruft.

Falcon is a work horse of a colour scheme that will (hopefully) stand the test of time - with fewer gimmicks, a more restrained colour palette but with a splash just enough to distinguish everything semantically as well a touch of delight thrown in.

![hero shot](https://raw.githubusercontent.com/fenetikm/falcon/master/support/hero2.png)

## Get started

Head to [the wiki installation page](https://github.com/fenetikm/falcon/wiki/Installation) to get going. Also have a look through what plugins and programs are [covered](https://github.com/fenetikm/falcon/wiki/Coverage), browse the [screenshot gallery](https://github.com/fenetikm/falcon/wiki/Screenshots), the [palette](https://github.com/fenetikm/falcon/wiki/Palette) and if you need a little bit of help there is also the [troubleshooting section and
FAQ](https://github.com/fenetikm/falcon/wiki/Troubleshooting-&-FAQ).

### Neovim with Lazy.nvim

Falcon has full support for Lazy.nvim with a proper Lua setup function.

**Basic setup with options:**

```lua
{
  "marcelarie/falcon",
  lazy = false,
  priority = 1000,
  opts = {
    background = true,   -- Use background color (default: true, set to false for transparent)
    italic = false,      -- Enable italic text (default: false)
    bold = false,        -- Enable bold text (default: false)
    inactive = false,    -- Style inactive windows differently (default: false)
  }
}
```

**For backward compatibility with global variables:**

You can still use the traditional approach:

```lua
vim.g.falcon_background = 0  -- 0 for transparent, 1 for colored
vim.cmd.colorscheme "falcon"
```

## Contact

If you want to get in touch please [drop me a line](https://michaelwelford.com/contact).

## Big Thanks

* Built with [estilo](https://github.com/jacoborus/estilo), gracias!
* Inspiration: gruvbox for not being quite right to my tastes and thus being the seed of this project
* Everyone who Vims, f'yeah!

## License

Falcon is released under the [MIT license](https://github.com/fenetikm/falcon/blob/master/LICENSE).
