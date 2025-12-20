return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    local comment = require("Comment")
    local nvim_ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")
    comment.setup({
      pre_hook = nvim_ts_context_commentstring.create_pre_hook(),
    })
  end
}
