return {
  "vlime/vlime",
  config = function()
    vim.g.vlime_enable_autodoc = true
    vim.g.vlime_window_settings = {
      sldb = { pos = 'belowright', vertical = true },
      inspector = { pos = 'belowright', vertical = true },
      preview = { pos = 'belowright', size = nil, vertical = true }
    }
  end
}
