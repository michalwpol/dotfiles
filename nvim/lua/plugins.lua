return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
  }
end)
