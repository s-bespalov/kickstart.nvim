local function setup_gopls(capabilities)
  return {
    cmd = { 'gopls' },
    -- on_attach = on_attach,
    filetypes = { 'go', 'gomod', 'gowork', 'gotmpl' },
    single_file_support = true,
    capabilities = capabilities,
    settings = {
      gopls = {
        experimentalPostfixCompletions = true,
        analyses = {
          unusedparams = true,
          shadow = true,
        },
        staticcheck = true,
      },
    },
    init_options = {
      usePlaceholders = true,
    },
  }
end

return {
  setup_gopls = setup_gopls,
}
