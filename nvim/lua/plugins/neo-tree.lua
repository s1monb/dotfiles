return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = false,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".obsidian",
          ".trash",
        },
        never_show = {
          ".DS_Store",
        },
      },
    },
  },
}
