if !exists('g:loaded_telescope')
    finish
endif

nnoremap <silent> ;f <cmd>Telescope find_files<CR>
nnoremap <silent> ;r <cmd>Telescope live_grep<CR>
nnoremap <silent> \\ <cmd>Telescope buffers<CR>
nnoremap <silent> ;; <cmd>Telescope help_tags<CR>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
-------------------
require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    }
}
EOF
