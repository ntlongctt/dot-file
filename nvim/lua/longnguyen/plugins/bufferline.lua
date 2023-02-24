local setup, bufferline = pcall(require, 'bufferline')
if not setup then
    return
end

-- mappings
vim.api.nvim_set_keymap("n", "<TAB>", ":BufferLineCycleNext<CR>", {
    noremap = true
})
vim.api.nvim_set_keymap("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", {
    noremap = true
})
vim.api.nvim_set_keymap("n", "gb", ":BufferLinePick<CR>", {
    noremap = true
})

bufferline.setup()
