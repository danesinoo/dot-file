require('lspconfig').rust_analyzer.setup({
    on_attach = on_attach,
    settings = {
        ["rust_analyzer"] = {}
    }
})
