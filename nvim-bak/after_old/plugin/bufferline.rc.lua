local hasbufline, bufferline = pcall(require, "bufferline")
if hasbufline
then
    bufferline.setup {
        options = {
            mode = "tabs",
            numbers = "ordinal",
            separator_style = "thin",
            diagnostics = "nvim_lsp"
        },
    }
end