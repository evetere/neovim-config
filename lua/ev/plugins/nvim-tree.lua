return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function() 
    local nvimtree = require("nvim-tree")

    vim.g.loaded_netwr = 1
    vim.g.loaded_netwrPlugin = 1
  
    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      }
    })

    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "toggle file explorer" }) 

  end
}
