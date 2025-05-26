return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {"lua", "python"},  -- Solo instalar el parser para Python
            highlight = { enable = true },  -- Habilitar el resaltado de sintaxis
            indent = { enable = true }      -- Habilitar la indentación automática
        })
    end
}

