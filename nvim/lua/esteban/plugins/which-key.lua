return{
  "folke/which-key.nvim",
  even = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    
    --here i can put my configurations 
    --or leave it empty to use the default settings



  }
}
