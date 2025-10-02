-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

if vim.loop.os_uname().sysname == "Linux" then
  local ibus_prev_engine = nil

  function IBusOff()
    -- Lưu engine hiện tại
    ibus_prev_engine = vim.fn.system "ibus engine"
    -- Chuyển sang engine tiếng Anh
    vim.cmd "silent !ibus engine xkb:us::eng"
  end

  function IBusOn()
    local current_engine = vim.fn.system "ibus engine"
    -- Nếu engine được set là tiếng Anh thì giữ nguyên,
    -- Nếu là Bamboo thì chuyển về lại Bamboo
    if not string.match(current_engine, "xkb:us::eng") then ibus_prev_engine = current_engine end
    -- Khôi phục lại engine
    vim.cmd("silent !ibus engine " .. ibus_prev_engine)
  end

  vim.api.nvim_create_augroup("IBusHandler", { clear = true })

  vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
    pattern = "[/?]",
    callback = function() IBusOn() end,
    group = "IBusHandler",
  })

  vim.api.nvim_create_autocmd({ "CmdlineLeave" }, {
    pattern = "[/?]",
    callback = function() IBusOff() end,
    group = "IBusHandler",
  })

  vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    pattern = "*",
    callback = function() IBusOn() end,
    group = "IBusHandler",
  })

  vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = "*",
    callback = function() IBusOff() end,
    group = "IBusHandler",
  })

  -- Call IBusOff initially
  IBusOff()
end
