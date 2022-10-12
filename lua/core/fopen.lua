local packerPath = vim.fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(packerPath)) == 1 then
  vim.fn.system("git clone --depth 1 https://github.com/wbthomason/packer.nvim " .. packerPath)
end
