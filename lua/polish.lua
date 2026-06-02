-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local view = {}
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function() view = vim.fn.winsaveview() end,
})
vim.api.nvim_create_autocmd("BufWritePost", {
  callback = function() vim.fn.winrestview(view) end,
})
