-- JetBrains New Dark theme for Neovim
-- Converted from VSCode theme

local M = {}

-- Color palette extracted from VSCode theme
local colors = {
  -- Background colors
  bg = "#1E1F22",
  bg_alt = "#181818",
  bg_highlight = "#2a2a2a",
  bg_selection = "#3A3D41",

  -- Foreground colors
  fg = "#BCBEC4",
  fg_dim = "#8b949e",
  fg_dark = "#6e7681",

  -- Syntax colors
  function_color = "#66A6FF",
  type_color = "#2FBAA3",
  keyword = "#CF8E6D",
  variable = "#BCBEC4",
  constant = "#C77DBB",
  string_color = "#6AAB73",
  number_color = "#2AACB8",
  comment = "#7A7E85",
  comment_doc = "#5F826B",

  -- Special colors
  css_tag = "#D5B778",
  invalid = "#FA6675",
  escape = "#D5B778",
  regex = "#646695",
  regex_char = "#d16969",

  -- UI colors
  border = "#404040", -- Fixed: removed alpha channel from #ffffff15
  border_light = "#505050", -- Fixed: removed alpha channel from #ffffff1f
  cursor = "#BCBEC4",
  cursor_line = "#323232",
  line_number = "#6e7681",
  line_number_active = "#BCBEC4",

  -- Diff colors
  diff_add = "#2ea043",
  diff_delete = "#f85149",
  diff_change = "#0078d4",
  diff_text_add = "#238636", -- Fixed: removed alpha channel from #2386364d
  diff_text_delete = "#da3633", -- Fixed: removed alpha channel from #da36334d

  -- Search and match
  search = "#9e6a03",
  match_paren = "#3A5F7A", -- Fixed: removed alpha channel from #ADD6FF26, darker blue equivalent

  -- Status line
  statusline_bg = "#181818",
  statusline_fg = "#BCBEC4",

  -- Error and warning
  error = "#f85149",
  warning = "#D5B778",
  info = "#0078d4",

  -- Special syntax
  attribute = "#BABABA",
  json_key = "#C77DBB",
  html_tag = "#2fbaa3",
  operator = "#BCBEC4",
}

-- Setup function to apply the theme
function M.setup()
  -- Set background color
  vim.cmd "highlight clear"
  vim.cmd "set background=dark"

  -- Editor background and foreground
  vim.api.nvim_set_hl(0, "Normal", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "NormalNC", { fg = colors.fg_dim, bg = colors.bg })

  -- Cursor
  vim.api.nvim_set_hl(0, "Cursor", { fg = colors.bg, bg = colors.cursor })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = colors.cursor_line })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = colors.cursor_line })
  vim.api.nvim_set_hl(0, "ColorColumn", { bg = colors.bg_highlight })

  -- Line numbers
  vim.api.nvim_set_hl(0, "LineNr", { fg = colors.line_number, bg = colors.bg })
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = colors.line_number_active, bg = colors.bg, bold = true })

  -- Syntax highlighting
  vim.api.nvim_set_hl(0, "Comment", { fg = colors.comment, italic = true })
  vim.api.nvim_set_hl(0, "String", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "Character", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "Number", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "Boolean", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Float", { fg = colors.number_color })

  -- Keywords
  vim.api.nvim_set_hl(0, "Keyword", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Conditional", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Repeat", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Label", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Exception", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Operator", { fg = colors.operator })
  vim.api.nvim_set_hl(0, "Statement", { fg = colors.keyword })

  -- Functions
  vim.api.nvim_set_hl(0, "Function", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "Identifier", { fg = colors.variable })

  -- Types
  vim.api.nvim_set_hl(0, "Type", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "StorageClass", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Structure", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "Typedef", { fg = colors.type_color })

  -- Constants
  vim.api.nvim_set_hl(0, "Constant", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "Special", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "SpecialChar", { fg = colors.escape })
  vim.api.nvim_set_hl(0, "Tag", { fg = colors.css_tag })
  vim.api.nvim_set_hl(0, "Delimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "SpecialComment", { fg = colors.comment_doc, italic = true })
  vim.api.nvim_set_hl(0, "Debug", { fg = colors.invalid })
  vim.api.nvim_set_hl(0, "Underlined", { underline = true })
  vim.api.nvim_set_hl(0, "Ignore", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "Error", { fg = colors.error, bg = colors.bg })
  vim.api.nvim_set_hl(0, "Todo", { fg = colors.warning, bold = true, italic = true })

  -- Preprocessor
  vim.api.nvim_set_hl(0, "PreProc", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Include", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Define", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "Macro", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "PreCondit", { fg = colors.keyword })

  -- Selection and search
  vim.api.nvim_set_hl(0, "Visual", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "VisualNOS", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "Search", { fg = colors.bg, bg = colors.search })
  vim.api.nvim_set_hl(0, "IncSearch", { fg = colors.bg, bg = colors.search })
  vim.api.nvim_set_hl(0, "MatchParen", { bg = colors.match_paren, bold = true })

  -- Status line
  vim.api.nvim_set_hl(0, "StatusLine", { fg = colors.statusline_fg, bg = colors.statusline_bg })
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = colors.fg_dim, bg = colors.statusline_bg })
  vim.api.nvim_set_hl(0, "StatusLineTerm", { fg = colors.statusline_fg, bg = colors.statusline_bg })
  vim.api.nvim_set_hl(0, "StatusLineTermNC", { fg = colors.fg_dim, bg = colors.statusline_bg })

  -- Tab line
  vim.api.nvim_set_hl(0, "TabLine", { fg = colors.fg_dim, bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = colors.bg_alt })
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = colors.fg, bg = colors.bg, bold = true })

  -- Command line
  vim.api.nvim_set_hl(0, "CommandMode", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "MsgArea", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = colors.fg, bg = colors.bg })
  vim.api.nvim_set_hl(0, "MsgSeparator", { fg = colors.border, bg = colors.bg })
  vim.api.nvim_set_hl(0, "MoreMsg", { fg = colors.info })
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = colors.warning })
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = colors.error })

  -- Popup menu
  vim.api.nvim_set_hl(0, "Pmenu", { fg = colors.fg, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = colors.fg, bg = colors.bg_selection, bold = true })
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = colors.fg_dark })
  vim.api.nvim_set_hl(0, "WildMenu", { fg = colors.fg, bg = colors.bg_selection })

  -- Diff
  vim.api.nvim_set_hl(0, "DiffAdd", { fg = colors.diff_add, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiffChange", { fg = colors.diff_change, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiffDelete", { fg = colors.diff_delete, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiffText", { fg = colors.diff_change, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiffAdded", { fg = colors.diff_add })
  vim.api.nvim_set_hl(0, "DiffRemoved", { fg = colors.diff_delete })
  vim.api.nvim_set_hl(0, "DiffFile", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "DiffNewFile", { fg = colors.diff_add })
  vim.api.nvim_set_hl(0, "DiffOldFile", { fg = colors.diff_delete })
  vim.api.nvim_set_hl(0, "DiffLine", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "DiffIndexLine", { fg = colors.fg_dim })

  -- Fold
  vim.api.nvim_set_hl(0, "Folded", { fg = colors.fg_dim, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "FoldColumn", { fg = colors.fg_dim, bg = colors.bg })

  -- Sign column
  vim.api.nvim_set_hl(0, "SignColumn", { fg = colors.fg_dim, bg = colors.bg })

  -- Conceal
  vim.api.nvim_set_hl(0, "Conceal", { fg = colors.fg_dim, bg = colors.bg })

  -- Spell
  vim.api.nvim_set_hl(0, "SpellBad", { sp = colors.error, undercurl = true })
  vim.api.nvim_set_hl(0, "SpellCap", { sp = colors.warning, undercurl = true })
  vim.api.nvim_set_hl(0, "SpellRare", { sp = colors.info, undercurl = true })
  vim.api.nvim_set_hl(0, "SpellLocal", { sp = colors.info, undercurl = true })

  -- Non-text
  vim.api.nvim_set_hl(0, "NonText", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "Whitespace", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = colors.bg })

  -- Quickfix
  vim.api.nvim_set_hl(0, "QuickFixLine", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "qfFileName", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "qfLineNr", { fg = colors.line_number })

  -- Terminal colors
  vim.api.nvim_set_hl(0, "Terminal", { fg = colors.fg, bg = colors.bg })

  -- Directory
  vim.api.nvim_set_hl(0, "Directory", { fg = colors.fg })

  -- Title
  vim.api.nvim_set_hl(0, "Title", { fg = colors.keyword, bold = true })

  -- Question
  vim.api.nvim_set_hl(0, "Question", { fg = colors.info })

  -- VertSplit
  vim.api.nvim_set_hl(0, "VertSplit", { fg = colors.border, bg = colors.bg })

  -- WinSeparator
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = colors.border, bg = colors.bg })

  -- CursorIM
  vim.api.nvim_set_hl(0, "CursorIM", { fg = colors.bg, bg = colors.cursor })

  -- lsp semantic tokens (if supported)
  vim.api.nvim_set_hl(0, "@function", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@function.call", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@method", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@method.call", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@constructor", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@parameter", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@field", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "@property", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "@variable", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@constant", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@type", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@storageclass", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@attribute", { fg = colors.attribute })
  vim.api.nvim_set_hl(0, "@label", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@namespace", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@module", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@string", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = colors.regex })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = colors.escape })
  vim.api.nvim_set_hl(0, "@string.special", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@character", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@character.special", { fg = colors.escape })
  vim.api.nvim_set_hl(0, "@number", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "@boolean", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "@float", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "@keyword", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = colors.operator })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "@operator", { fg = colors.operator })
  vim.api.nvim_set_hl(0, "@punctuation", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@comment", { fg = colors.comment, italic = true })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = colors.comment_doc, italic = true })
  vim.api.nvim_set_hl(0, "@tag", { fg = colors.css_tag })
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = colors.attribute })
  vim.api.nvim_set_hl(0, "@error", { fg = colors.error })
  vim.api.nvim_set_hl(0, "@text", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "@text.strong", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "@text.emphasis", { fg = colors.fg, italic = true })
  vim.api.nvim_set_hl(0, "@text.underline", { underline = true })
  vim.api.nvim_set_hl(0, "@text.strike", { strikethrough = true })
  vim.api.nvim_set_hl(0, "@text.title", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "@text.literal", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@text.uri", { fg = colors.info, underline = true })
  vim.api.nvim_set_hl(0, "@text.math", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "@text.reference", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "@text.environment", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@text.environment.name", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "@note", { fg = colors.info })
  vim.api.nvim_set_hl(0, "@warning", { fg = colors.warning })
  vim.api.nvim_set_hl(0, "@danger", { fg = colors.error })

  -- HTML/CSS specific
  vim.api.nvim_set_hl(0, "@text.html", { fg = colors.css_tag })
  vim.api.nvim_set_hl(0, "@tag.html", { fg = colors.css_tag })
  vim.api.nvim_set_hl(0, "@tag.custom.html", { fg = colors.html_tag })
  vim.api.nvim_set_hl(0, "@attribute.html", { fg = colors.attribute })
  vim.api.nvim_set_hl(0, "@string.css", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "@property.css", { fg = colors.attribute })
  vim.api.nvim_set_hl(0, "@value.css", { fg = colors.string_color })

  -- JSON specific
  vim.api.nvim_set_hl(0, "@label.json", { fg = colors.json_key })

  -- Diagnostic
  vim.api.nvim_set_hl(0, "DiagnosticError", { fg = colors.error })
  vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = colors.warning })
  vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = colors.info })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { sp = colors.error, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { sp = colors.warning, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", { sp = colors.info, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", { sp = colors.info, undercurl = true })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", { fg = colors.error, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", { fg = colors.warning, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", { fg = colors.info, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", { fg = colors.info, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = colors.error, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiagnosticSignWarn", { fg = colors.warning, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiagnosticSignInfo", { fg = colors.info, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = colors.info, bg = colors.bg })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = colors.error, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = colors.warning, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = colors.info, bg = colors.bg_highlight })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = colors.info, bg = colors.bg_highlight })

  -- LSP
  vim.api.nvim_set_hl(0, "LspReferenceText", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = colors.bg_selection })
  vim.api.nvim_set_hl(0, "LspCodeLens", { fg = colors.fg_dim, italic = true })
  vim.api.nvim_set_hl(0, "LspCodeLensSeparator", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { fg = colors.keyword, bold = true })

  -- Treesitter
  vim.api.nvim_set_hl(0, "TSAnnotation", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "TSAttribute", { fg = colors.attribute })
  vim.api.nvim_set_hl(0, "TSBoolean", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "TSCharacter", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "TSComment", { fg = colors.comment, italic = true })
  vim.api.nvim_set_hl(0, "TSConditional", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSConstant", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "TSConstMacro", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "TSConstructor", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "TSEmphasis", { italic = true })
  vim.api.nvim_set_hl(0, "TSError", { fg = colors.error })
  vim.api.nvim_set_hl(0, "TSException", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSField", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "TSFloat", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "TSFunction", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "TSFuncBuiltin", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "TSFuncMacro", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSInclude", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSKeyword", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSKeywordOperator", { fg = colors.operator })
  vim.api.nvim_set_hl(0, "TSKeywordReturn", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSLabel", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSLiteral", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "TSMethod", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "TSNamespace", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "TSNone", {})
  vim.api.nvim_set_hl(0, "TSNumber", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "TSOperator", { fg = colors.operator })
  vim.api.nvim_set_hl(0, "TSParameter", { fg = colors.constant })
  vim.api.nvim_set_hl(0, "TSParameterReference", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "TSProperty", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "TSPunctDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "TSPunctSpecial", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "TSRepeat", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSString", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "TSStringRegex", { fg = colors.regex })
  vim.api.nvim_set_hl(0, "TSStringEscape", { fg = colors.escape })
  vim.api.nvim_set_hl(0, "TSStringSpecial", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "TSSymbol", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "TSTag", { fg = colors.css_tag })
  vim.api.nvim_set_hl(0, "TSTagDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "TSText", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "TSStrong", { bold = true })
  vim.api.nvim_set_hl(0, "TSTitle", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "TSType", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "TSTypeBuiltin", { fg = colors.type_color })
  vim.api.nvim_set_hl(0, "TSURI", { fg = colors.info, underline = true })
  vim.api.nvim_set_hl(0, "TSUnderline", { underline = true })
  vim.api.nvim_set_hl(0, "TSVariable", { fg = colors.variable })
  vim.api.nvim_set_hl(0, "TSVariableBuiltin", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "TSStrike", { strikethrough = true })
  vim.api.nvim_set_hl(0, "TSMath", { fg = colors.number_color })
  vim.api.nvim_set_hl(0, "TSNote", { fg = colors.info })
  vim.api.nvim_set_hl(0, "TSWarning", { fg = colors.warning })
  vim.api.nvim_set_hl(0, "TSDanger", { fg = colors.error })
  vim.api.nvim_set_hl(0, "TSEnvironment", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "TSEnvironmentName", { fg = colors.type_color })

  -- Git
  vim.api.nvim_set_hl(0, "gitcommitOverflow", { fg = colors.error })
  vim.api.nvim_set_hl(0, "gitcommitSummary", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "gitcommitComment", { fg = colors.comment })
  vim.api.nvim_set_hl(0, "gitcommitUntracked", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "gitcommitDiscarded", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "gitcommitSelected", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "gitcommitHeader", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "gitcommitSelectedType", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "gitcommitUnmergedType", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "gitcommitDiscardedType", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "gitcommitBranch", { fg = colors.function_color, bold = true })
  vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", { fg = colors.warning })
  vim.api.nvim_set_hl(0, "gitcommitUnmergedFile", { fg = colors.error, bold = true })
  vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", { fg = colors.error, bold = true })
  vim.api.nvim_set_hl(0, "gitcommitSelectedFile", { fg = colors.diff_add, bold = true })

  -- Markdown
  vim.api.nvim_set_hl(0, "markdownCode", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "markdownHeadingRule", { fg = colors.keyword })
  vim.api.nvim_set_hl(0, "markdownH1", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownH2", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownH3", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownH4", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownH5", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownH6", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownLinkText", { fg = colors.info, underline = true })
  vim.api.nvim_set_hl(0, "markdownListMarker", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "markdownOrderedListMarker", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "markdownBlockquote", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "markdownItalic", { italic = true })
  vim.api.nvim_set_hl(0, "markdownBold", { fg = colors.keyword, bold = true })
  vim.api.nvim_set_hl(0, "markdownLinkDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "markdownUrl", { fg = colors.info, underline = true })
  vim.api.nvim_set_hl(0, "markdownUrlTitle", { fg = colors.string_color })
  vim.api.nvim_set_hl(0, "markdownUrlTitleDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "markdownId", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "markdownIdDeclaration", { fg = colors.function_color })
  vim.api.nvim_set_hl(0, "markdownIdDelimiter", { fg = colors.fg })
  vim.api.nvim_set_hl(0, "markdownRule", { fg = colors.fg_dim })
  vim.api.nvim_set_hl(0, "markdownEscape", { fg = colors.escape })

  -- Set colorscheme name
  vim.g.colors_name = "jetbrains-new-dark"
end

return M
