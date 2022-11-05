require('setup.keymap.fn')

-- harpoon
vim.keymap.set('n', ";<tab>", function() require("harpoon.ui").toggle_quick_menu() end, silent)
vim.keymap.set('n', ";s", function() require("harpoon.mark").add_file() end, silent)
vim.keymap.set('n', ";r", function() require("harpoon.mark").rm_file() end, silent)
vim.keymap.set('n', ";q", function() require("harpoon.ui").nav_file(1) end, silent)
vim.keymap.set('n', ";w", function() require("harpoon.ui").nav_file(2) end, silent)
vim.keymap.set('n', ";e", function() require("harpoon.ui").nav_file(3) end, silent)

-- telescope
vim.keymap.set('n', "<space>f", function() require("telescope.builtin").find_files({ no_ignore = false, hidden = true }) end, silent)
vim.keymap.set('n', ";f", function() require("telescope.builtin").live_grep() end, silent)
vim.keymap.set('n', "<space>g", function() require("telescope.builtin").find_git() end, silent)
vim.keymap.set('n', "<space>s", ":Telescope buffers<CR>", silent)

vim.keymap.set('n', "<space>w", ":w<CR>", silent)
vim.keymap.set('n', "<space>q", ":q!<CR>", silent)
vim.keymap.set('n', "<space>v", ":vsplit<CR><C-w>w", silent)

-- makefile
vim.keymap.set('n', "mc", function() compile() end, silent)
vim.keymap.set('n', "mr", function() make('run') end, silent)
vim.keymap.set('n', "mt", function() make('test') end, silent)
vim.keymap.set('n', "mh", ":! make -f /Users/carlorosso/.config/Makefile help<CR>", silent)
vim.keymap.set('n', "mC", ":! make -f /Users/carlorosso/.config/Makefile clear<CR>", silent)

vim.keymap.set('n', ",b", ":! cargo build<CR>", silent)
vim.keymap.set('n', ",r", ":! cargo run<CR>", silent)

vim.keymap.set('n', "E", ":Ex<CR>", silent)

vim.keymap.set('n', "<space>l", ":! pdflatex <C-r>%<CR>", silent)

local bufopts = { noremap=true, silent=true, buffer=bufnr }
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
vim.keymap.set('n', ';d', vim.lsp.buf.definition, bufopts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts) -- non ho ancora capito che cosa faccia questa cosa
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
vim.keymap.set('n', ',wa', vim.lsp.buf.add_workspace_folder, bufopts)
vim.keymap.set('n', ',wr', vim.lsp.buf.remove_workspace_folder, bufopts)
vim.keymap.set('n', ',wl', function()
print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
end, bufopts) 

-- shortcuts
vim.keymap.set('n', '<C-w>=', '<C-w>>', silent)
vim.keymap.set('n', '<C-w>-', '<C-w><', silent)
vim.keymap.set('n', ';t', ':! ', silent)

-- Vimspector
vim.keymap.set('n', 'Dl', ":call vimspector#Launch()<CR>", silent)
vim.keymap.set('n', 'Db', ":call vimspector#ToggleBreakpoint()<CR>", silent)
vim.keymap.set('n', 'Do', ":call vimspector#StepOver()<CR>", silent)
vim.keymap.set('n', 'Dr', ":call vimspector#Reset()<CR>", silent)
vim.keymap.set('n', 'DO', ":call vimspector#StepOut()<CR>", silent)
vim.keymap.set('n', 'DI', ":call vimspector#StepInto()<CR>", silent)
vim.keymap.set('n', 'Dw', ":call vimspector#AddWatch()<CR>", silent)
vim.keymap.set('n', 'De', ":call vimspector#Evaluate()<CR>", silent)