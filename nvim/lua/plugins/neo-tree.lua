return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            filesystem = {
                filtered_items = {
                    visible = true, -- Muestra los archivos ocultos
                    hide_dotfiles = false, -- No ocultar archivos que comienzan con punto
                }
            }
        })

        vim.keymap.set('n', '<C-n>', ':Neotree toggle<CR>', { noremap = true, silent = true })
    end
}

