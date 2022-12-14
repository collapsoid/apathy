--[[
-- Stage3 is a set of parameters that allow post-plugins settings to be applied.
--]]


local M = {}


local cmd = vim.cmd

function M.init()
    -- Set colorscheme
    cmd [[ colorscheme samurai ]]

    -- Highlight yank
    cmd [[
        highlight YankColor ctermfg=59 ctermbg=41 guifg=#ccc8ba guibg=#ba604c

        augroup highlight_yank
            autocmd!
            au TextYankPost * silent! lua vim.highlight.on_yank{higroup="YankColor", hicolor="red", timeout=300}
        augroup END
    ]]
end


return M
