
function SetScheme(scheme)
    scheme = scheme or "gruvbox"
    vim.cmd.colorscheme(scheme)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetScheme()
