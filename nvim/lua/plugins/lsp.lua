local jdtls_dir = vim.fn.expand("//Users/simon/.local/share/nvim/mason/share/jdtls")
local path_to_lombok = jdtls_dir .. "/lombok.jar"

return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      priorities = {
        tsserver = 10000,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inline_hints = { enabled = true },
      servers = {
        jdtls = {
          cmd = {
            "jdtls",
            "--jvm-arg=" .. string.format("-javaagent:%s", path_to_lombok),
          },
          filetypes = { "java" },
        },
      },
    },
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = {
        "gd",
        "<CMD>lua require('fzf-lua').lsp_definitions({ jump_to_single_result = true })<cr>",
        "Jump to Definiton",
      }
      keys[#keys + 1] = {
        "gr",
        "<CMD>FzfLua lsp_references<cr>",
        "references",
      }
      keys[#keys + 1] = {
        "<leader>ss",
        "<CMD>FzfLua lsp_document_symbols<cr>",
        "Document Symbols",
      }
      keys[#keys + 1] = {
        "<leader>ca",
        "<CMD>lua require('fzf-lua').lsp_code_actions({ sync = true })<cr>",
        "Code Actions",
      }
    end,
  },
}
