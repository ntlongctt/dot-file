local status, toggleterm = pcall(require, 'toggleterm')
if (not status) then
    return
end

toggleterm.setup({
    size = 10,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    close_on_exit = true,
    direction = 'float',
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal"
        }
    }
})

local Terminal = require('toggleterm.terminal').Terminal

local float_term = Terminal:new({
    cmd = "fish",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double"
    }
})

local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = "git_dir",
    direction = "float",
    float_opts = {
        border = "double"
    },
    -- function to run on opening the terminal
    on_open = function(term)
        vim.cmd("startinsert!")
        vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {
            noremap = true,
            silent = true
        })
    end,
    -- function to run on closing the terminal
    on_close = function(term)
        vim.cmd("startinsert!")
    end
})

function _lazygit_toggle()
    lazygit:toggle()
end

function _float_term_toggle()
    float_term:toggle()
end


vim.api.nvim_set_keymap("n", "<leader>\\", "<cmd>lua _float_term_toggle()<CR>", {
    noremap = true,
    silent = true
})

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {
    noremap = true,
    silent = true
})
