return {
  { "junegunn/fzf.vim" },
  { "junegunn/fzf" },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({
        files = {
          path_shorten = 1, -- 'true' or number, shorten path?
        },
      })
    end,
  },
}
