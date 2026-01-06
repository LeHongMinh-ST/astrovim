-- delete old mapping for <leader>c
pcall(vim.keymap.del, "n", "<leader>c")
-- copy error message at cursor
vim.keymap.set("n", "<leader>ce", function()
  local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line "." - 1 })
  if #diagnostics > 0 then
    local message = diagnostics[1].message
    vim.fn.setreg("+", message)
    print("Copied diagnostic: " .. message)
  else
    print "No diagnostic at cursor"
  end
end, { noremap = true, silent = true, desc = "Copy error at cursor" })

-- navigate errors
vim.keymap.set("n", "<leader>ne", vim.diagnostic.goto_next, { desc = "Go to next error" })
vim.keymap.set("n", "<leader>pe", vim.diagnostic.goto_prev, { desc = "Go to previous error" })

-- Check if current project is Spring Boot
local function is_spring_project()
  local gradle_files = { "build.gradle", "build.gradle.kts" }

  for _, file in ipairs(gradle_files) do
    if vim.fn.filereadable(file) == 1 then
      local lines = vim.fn.readfile(file)
      for _, line in ipairs(lines) do
        if line:match "org%.springframework%.boot" then return true end
      end
    end
  end

  return false
end
local function has_gradlew() return vim.fn.filereadable "gradlew" == 1 end

if is_spring_project() and has_gradlew() then
  vim.keymap.set("n", "<leader>gb", function() vim.cmd "!./gradlew build" end, { desc = "Spring Gradle Build" })

  vim.keymap.set(
    "n",
    "<leader>gB",
    function() vim.cmd "!./gradlew clean build" end,
    { desc = "Spring Gradle Clean Build" }
  )
end

-- -- set language based on vim mode
-- -- requires im-select https://github.com/daipeihust/im-select
-- -- recommend installing it by brew
-- local sysname = vim.loop.os_uname().sysname
-- local release = vim.loop.os_uname().release
-- local is_mac = sysname == "Darwin"
-- local is_wsl = sysname == "Linux" and release:match("microsoft")
-- local is_linux = sysname == "Linux" and not release:match("microsoft")
--
-- local get_current_layout
-- local set_layout
-- local english_layout
-- local last_insert_layout
--
-- if is_mac then
--     -- macOS: dùng im-select
--     get_current_layout = function()
--         local f = io.popen("im-select")
--         local layout = nil
--         if f ~= nil then
--             layout = f:read("*all"):gsub("\n", "")
--             f:close()
--         end
--         return layout
--     end
--     set_layout = function(layout)
--         os.execute("im-select " .. layout)
--     end
--     english_layout = "com.apple.keylayout.ABC"
-- elseif is_linux then
--     -- Ubuntu: dùng ibus
--     get_current_layout = function()
--         local f = io.popen("ibus engine")
--         local layout = nil
--         if f ~= nil then
--             layout = f:read("*all"):gsub("\n", "")
--             f:close()
--         end
--         return layout
--     end
--     set_layout = function(layout)
--         os.execute("ibus engine " .. layout)
--     end
--     -- ví dụ: "xkb:us::eng" (US English) hoặc "BambooUs" nếu dùng ibus-bamboo
--     english_layout = "xkb:us::eng"
-- elseif is_wsl then
--     return
-- end
--
-- if get_current_layout and set_layout then
--     last_insert_layout = get_current_layout()
--
--     vim.api.nvim_create_autocmd("InsertLeave", {
--         callback = function()
--             last_insert_layout = get_current_layout()
--             set_layout(english_layout)
--         end,
--     })
--
--     vim.api.nvim_create_autocmd({ "CmdlineEnter" }, {
--         pattern = "*:*n",
--         callback = function()
--             set_layout(english_layout)
--         end,
--     })
--
--     vim.api.nvim_create_autocmd("InsertEnter", {
--         callback = function()
--             if last_insert_layout then
--                 set_layout(last_insert_layout)
--             end
--         end,
--     })
--
--     vim.api.nvim_create_autocmd("FocusGained", {
--         callback = function()
--             if last_insert_layout then
--                 set_layout(last_insert_layout)
--             end
--         end,
--     })
-- end
-- -- end of language based on vim mode
