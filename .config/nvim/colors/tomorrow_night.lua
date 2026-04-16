-- Tomorrow Night - Neovim colorscheme
-- Based on the Tomorrow Night color palette

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end

vim.o.termguicolors = true
vim.g.colors_name = "tomorrow_night"

local c = {
  -- Primary
  bg          = "#1d1f21",
  fg          = "#c5c8c6",

  -- Cursor
  cursor_text = "#1d1f21",
  cursor      = "#ffffff",

  -- Normal
  black       = "#1d1f21",
  red         = "#cc6666",
  green       = "#b5bd68",
  yellow      = "#e6c547",
  blue        = "#81a2be",
  magenta     = "#b294bb",
  cyan        = "#70c0ba",
  white       = "#373b41",

  -- Bright
  br_black    = "#666666",
  br_red      = "#ff3334",
  br_green    = "#9ec400",
  br_yellow   = "#f0c674",
  br_blue     = "#81a2be",
  br_magenta  = "#b77ee0",
  br_cyan     = "#54ced6",
  br_white    = "#282a2e",

  -- Derived / UI shades
  bg_dark     = "#181a1c",
  bg_lighter  = "#282a2e",
  bg_light    = "#373b41",
  comment     = "#969896",
  selection   = "#373b41",
  line_hl     = "#26282c",
  none        = "NONE",
}

local hl = vim.api.nvim_set_hl

-- ── Editor UI ───────────────────────────────────────────────────────────────
hl(0, "Normal",          { fg = c.fg,        bg = c.bg })
hl(0, "NormalNC",        { fg = c.fg,        bg = c.bg_dark })
hl(0, "NormalFloat",     { fg = c.fg,        bg = c.bg_lighter })
hl(0, "FloatBorder",     { fg = c.br_black,  bg = c.bg_lighter })
hl(0, "FloatTitle",      { fg = c.blue,      bg = c.bg_lighter, bold = true })

hl(0, "Cursor",          { fg = c.cursor_text, bg = c.cursor })
hl(0, "CursorIM",        { fg = c.cursor_text, bg = c.cursor })
hl(0, "CursorLine",      { bg = c.line_hl })
hl(0, "CursorColumn",    { bg = c.line_hl })
hl(0, "CursorLineNr",    { fg = c.br_yellow, bg = c.line_hl, bold = true })
hl(0, "ColorColumn",     { bg = c.bg_lighter })
hl(0, "TermCursor",      { fg = c.cursor_text, bg = c.cursor })

hl(0, "LineNr",          { fg = c.bg_light })
hl(0, "SignColumn",      { fg = c.br_black,  bg = c.bg })
hl(0, "FoldColumn",      { fg = c.br_black,  bg = c.bg })
hl(0, "Folded",          { fg = c.br_black,  bg = c.bg_lighter })

hl(0, "StatusLine",      { fg = c.fg,        bg = c.bg_light })
hl(0, "StatusLineNC",    { fg = c.br_black,  bg = c.bg_lighter })
hl(0, "WinSeparator",    { fg = c.bg_light,  bg = c.bg })
hl(0, "VertSplit",       { fg = c.bg_light,  bg = c.bg })

hl(0, "TabLine",         { fg = c.br_black,  bg = c.bg_lighter })
hl(0, "TabLineSel",      { fg = c.fg,        bg = c.bg_light, bold = true })
hl(0, "TabLineFill",     { bg = c.bg_dark })

hl(0, "Pmenu",           { fg = c.fg,        bg = c.bg_lighter })
hl(0, "PmenuSel",        { fg = c.bg,        bg = c.blue, bold = true })
hl(0, "PmenuSbar",       { bg = c.bg_light })
hl(0, "PmenuThumb",      { bg = c.br_black })

hl(0, "Search",          { fg = c.bg,        bg = c.br_yellow, bold = true })
hl(0, "IncSearch",       { fg = c.bg,        bg = c.yellow, bold = true })
hl(0, "CurSearch",       { fg = c.bg,        bg = c.yellow, bold = true })
hl(0, "Substitute",      { fg = c.bg,        bg = c.red })

hl(0, "Visual",          { bg = c.selection })
hl(0, "VisualNOS",       { bg = c.selection })

hl(0, "NonText",         { fg = c.bg_light })
hl(0, "SpecialKey",      { fg = c.bg_light })
hl(0, "Whitespace",      { fg = c.bg_light })
hl(0, "EndOfBuffer",     { fg = c.bg_lighter })

hl(0, "MatchParen",      { fg = c.br_yellow, bold = true, underline = true })

hl(0, "QuickFixLine",    { fg = c.blue,      bold = true })
hl(0, "Directory",       { fg = c.blue })
hl(0, "Title",           { fg = c.blue,      bold = true })

hl(0, "WildMenu",        { fg = c.bg,        bg = c.blue, bold = true })

hl(0, "MsgArea",         { fg = c.fg,        bg = c.bg })
hl(0, "MsgSeparator",    { fg = c.bg_light })
hl(0, "MoreMsg",         { fg = c.green,     bold = true })
hl(0, "Question",        { fg = c.green,     bold = true })
hl(0, "ErrorMsg",        { fg = c.br_red,    bold = true })
hl(0, "WarningMsg",      { fg = c.br_yellow, bold = true })

hl(0, "DiffAdd",         { fg = c.green,     bg = "#1e2614" })
hl(0, "DiffChange",      { fg = c.blue,      bg = "#1a2030" })
hl(0, "DiffDelete",      { fg = c.red,       bg = "#2d1515" })
hl(0, "DiffText",        { fg = c.br_yellow, bg = "#1a2030", bold = true })

hl(0, "SpellBad",        { sp = c.red,       undercurl = true })
hl(0, "SpellCap",        { sp = c.yellow,    undercurl = true })
hl(0, "SpellLocal",      { sp = c.cyan,      undercurl = true })
hl(0, "SpellRare",       { sp = c.magenta,   undercurl = true })

-- ── Syntax ───────────────────────────────────────────────────────────────────
hl(0, "Comment",         { fg = c.comment,   italic = true })
hl(0, "Constant",        { fg = c.br_yellow })
hl(0, "String",          { fg = c.green })
hl(0, "Character",       { fg = c.green })
hl(0, "Number",          { fg = c.br_yellow })
hl(0, "Boolean",         { fg = c.br_yellow })
hl(0, "Float",           { fg = c.br_yellow })

hl(0, "Identifier",      { fg = c.red })
hl(0, "Function",        { fg = c.blue })

hl(0, "Statement",       { fg = c.magenta,   bold = true })
hl(0, "Conditional",     { fg = c.magenta,   bold = true })
hl(0, "Repeat",          { fg = c.magenta,   bold = true })
hl(0, "Label",           { fg = c.magenta })
hl(0, "Operator",        { fg = c.cyan })
hl(0, "Keyword",         { fg = c.magenta,   bold = true })
hl(0, "Exception",       { fg = c.magenta,   bold = true })

hl(0, "PreProc",         { fg = c.cyan })
hl(0, "Include",         { fg = c.cyan })
hl(0, "Define",          { fg = c.cyan })
hl(0, "Macro",           { fg = c.cyan })
hl(0, "PreCondit",       { fg = c.cyan })

hl(0, "Type",            { fg = c.br_yellow })
hl(0, "StorageClass",    { fg = c.br_yellow })
hl(0, "Structure",       { fg = c.br_yellow })
hl(0, "Typedef",         { fg = c.br_yellow })

hl(0, "Special",         { fg = c.br_yellow })
hl(0, "SpecialChar",     { fg = c.br_yellow })
hl(0, "Tag",             { fg = c.red })
hl(0, "Delimiter",       { fg = c.fg })
hl(0, "SpecialComment",  { fg = c.comment,   bold = true })
hl(0, "Debug",           { fg = c.red })

hl(0, "Underlined",      { underline = true })
hl(0, "Ignore",          { fg = c.br_black })
hl(0, "Error",           { fg = c.br_red,    bold = true })
hl(0, "Todo",            { fg = c.bg,        bg = c.br_yellow, bold = true })

-- ── Treesitter ───────────────────────────────────────────────────────────────
-- Variables & identifiers
hl(0, "@variable",               { fg = c.fg })
hl(0, "@variable.builtin",       { fg = c.red,       italic = true })
hl(0, "@variable.parameter",     { fg = c.red })
hl(0, "@variable.member",        { fg = c.red })

-- Literals
hl(0, "@string",                 { fg = c.green })
hl(0, "@string.escape",          { fg = c.br_yellow })
hl(0, "@string.special",         { fg = c.br_yellow })
hl(0, "@string.regex",           { fg = c.br_yellow })
hl(0, "@character",              { fg = c.green })
hl(0, "@number",                 { fg = c.br_yellow })
hl(0, "@number.float",           { fg = c.br_yellow })
hl(0, "@boolean",                { fg = c.br_yellow })

-- Functions
hl(0, "@function",               { fg = c.blue })
hl(0, "@function.builtin",       { fg = c.blue,      italic = true })
hl(0, "@function.call",          { fg = c.blue })
hl(0, "@function.macro",         { fg = c.cyan })
hl(0, "@function.method",        { fg = c.blue })
hl(0, "@function.method.call",   { fg = c.blue })
hl(0, "@constructor",            { fg = c.br_yellow })

-- Keywords
hl(0, "@keyword",                { fg = c.magenta,   bold = true })
hl(0, "@keyword.function",       { fg = c.magenta,   bold = true })
hl(0, "@keyword.operator",       { fg = c.cyan })
hl(0, "@keyword.return",         { fg = c.magenta,   bold = true })
hl(0, "@keyword.import",         { fg = c.cyan })
hl(0, "@keyword.conditional",    { fg = c.magenta,   bold = true })
hl(0, "@keyword.repeat",         { fg = c.magenta,   bold = true })
hl(0, "@keyword.exception",      { fg = c.magenta,   bold = true })

-- Types
hl(0, "@type",                   { fg = c.br_yellow })
hl(0, "@type.builtin",           { fg = c.br_yellow, italic = true })
hl(0, "@type.definition",        { fg = c.br_yellow })
hl(0, "@attribute",              { fg = c.cyan })
hl(0, "@property",               { fg = c.red })

-- Punctuation
hl(0, "@punctuation.delimiter",  { fg = c.fg })
hl(0, "@punctuation.bracket",    { fg = c.fg })
hl(0, "@punctuation.special",    { fg = c.cyan })

-- Markup (markdown etc.)
hl(0, "@markup.heading",         { fg = c.blue,      bold = true })
hl(0, "@markup.bold",            { bold = true })
hl(0, "@markup.italic",          { italic = true })
hl(0, "@markup.underline",       { underline = true })
hl(0, "@markup.strikethrough",   { strikethrough = true })
hl(0, "@markup.link",            { fg = c.blue,      underline = true })
hl(0, "@markup.link.url",        { fg = c.cyan,      underline = true })
hl(0, "@markup.raw",             { fg = c.green })
hl(0, "@markup.list",            { fg = c.red })
hl(0, "@markup.list.checked",    { fg = c.green })
hl(0, "@markup.list.unchecked",  { fg = c.br_black })

-- Misc
hl(0, "@comment",                { fg = c.comment,   italic = true })
hl(0, "@operator",               { fg = c.cyan })
hl(0, "@tag",                    { fg = c.red })
hl(0, "@tag.attribute",          { fg = c.br_yellow })
hl(0, "@tag.delimiter",          { fg = c.fg })
hl(0, "@namespace",              { fg = c.br_yellow })
hl(0, "@module",                 { fg = c.br_yellow })

-- ── LSP ──────────────────────────────────────────────────────────────────────
hl(0, "LspReferenceText",        { bg = c.bg_light })
hl(0, "LspReferenceRead",        { bg = c.bg_light })
hl(0, "LspReferenceWrite",       { bg = c.bg_light,  underline = true })
hl(0, "LspCodeLens",             { fg = c.comment,   italic = true })
hl(0, "LspInlayHint",            { fg = c.comment,   italic = true, bg = c.bg_lighter })
hl(0, "LspSignatureActiveParameter", { fg = c.br_yellow, bold = true })

-- LSP semantic tokens
hl(0, "@lsp.type.class",         { fg = c.br_yellow })
hl(0, "@lsp.type.decorator",     { fg = c.cyan })
hl(0, "@lsp.type.enum",          { fg = c.br_yellow })
hl(0, "@lsp.type.enumMember",    { fg = c.red })
hl(0, "@lsp.type.function",      { fg = c.blue })
hl(0, "@lsp.type.interface",     { fg = c.br_yellow })
hl(0, "@lsp.type.macro",         { fg = c.cyan })
hl(0, "@lsp.type.method",        { fg = c.blue })
hl(0, "@lsp.type.namespace",     { fg = c.br_yellow })
hl(0, "@lsp.type.parameter",     { fg = c.red })
hl(0, "@lsp.type.property",      { fg = c.red })
hl(0, "@lsp.type.struct",        { fg = c.br_yellow })
hl(0, "@lsp.type.type",          { fg = c.br_yellow })
hl(0, "@lsp.type.typeParameter", { fg = c.br_yellow })
hl(0, "@lsp.type.variable",      { fg = c.fg })

-- ── Diagnostics ──────────────────────────────────────────────────────────────
hl(0, "DiagnosticError",         { fg = c.red })
hl(0, "DiagnosticWarn",          { fg = c.br_yellow })
hl(0, "DiagnosticInfo",          { fg = c.blue })
hl(0, "DiagnosticHint",          { fg = c.cyan })
hl(0, "DiagnosticOk",            { fg = c.green })

hl(0, "DiagnosticUnderlineError", { sp = c.red,       undercurl = true })
hl(0, "DiagnosticUnderlineWarn",  { sp = c.br_yellow, undercurl = true })
hl(0, "DiagnosticUnderlineInfo",  { sp = c.blue,      undercurl = true })
hl(0, "DiagnosticUnderlineHint",  { sp = c.cyan,      undercurl = true })

hl(0, "DiagnosticVirtualTextError", { fg = c.red,       bg = "#2d1515", italic = true })
hl(0, "DiagnosticVirtualTextWarn",  { fg = c.br_yellow, bg = "#2a2510", italic = true })
hl(0, "DiagnosticVirtualTextInfo",  { fg = c.blue,      bg = "#19202e", italic = true })
hl(0, "DiagnosticVirtualTextHint",  { fg = c.cyan,      bg = "#19292e", italic = true })

hl(0, "DiagnosticSignError",     { fg = c.red })
hl(0, "DiagnosticSignWarn",      { fg = c.br_yellow })
hl(0, "DiagnosticSignInfo",      { fg = c.blue })
hl(0, "DiagnosticSignHint",      { fg = c.cyan })

-- ── nvim-cmp ─────────────────────────────────────────────────────────────────
hl(0, "CmpItemAbbr",             { fg = c.fg })
hl(0, "CmpItemAbbrDeprecated",   { fg = c.br_black,  strikethrough = true })
hl(0, "CmpItemAbbrMatch",        { fg = c.blue,      bold = true })
hl(0, "CmpItemAbbrMatchFuzzy",   { fg = c.cyan,      bold = true })
hl(0, "CmpItemKind",             { fg = c.br_yellow })
hl(0, "CmpItemMenu",             { fg = c.comment })

-- ── Telescope ────────────────────────────────────────────────────────────────
hl(0, "TelescopeNormal",         { fg = c.fg,        bg = c.bg_lighter })
hl(0, "TelescopeBorder",         { fg = c.br_black,  bg = c.bg_lighter })
hl(0, "TelescopePromptBorder",   { fg = c.blue,      bg = c.bg_lighter })
hl(0, "TelescopePromptTitle",    { fg = c.bg,        bg = c.blue, bold = true })
hl(0, "TelescopeResultsTitle",   { fg = c.bg,        bg = c.br_black })
hl(0, "TelescopePreviewTitle",   { fg = c.bg,        bg = c.green, bold = true })
hl(0, "TelescopeSelection",      { fg = c.fg,        bg = c.bg_light })
hl(0, "TelescopeSelectionCaret", { fg = c.blue })
hl(0, "TelescopeMatching",       { fg = c.blue,      bold = true })

-- ── Neo-tree / nvim-tree ──────────────────────────────────────────────────────
hl(0, "NeoTreeNormal",           { fg = c.fg,        bg = c.bg_dark })
hl(0, "NeoTreeNormalNC",         { fg = c.fg,        bg = c.bg_dark })
hl(0, "NeoTreeDirectoryIcon",    { fg = c.blue })
hl(0, "NeoTreeDirectoryName",    { fg = c.blue })
hl(0, "NeoTreeRootName",         { fg = c.blue,      bold = true })
hl(0, "NeoTreeFileName",         { fg = c.fg })
hl(0, "NeoTreeFileIcon",         { fg = c.br_black })
hl(0, "NeoTreeModified",         { fg = c.br_yellow })
hl(0, "NeoTreeGitAdded",         { fg = c.green })
hl(0, "NeoTreeGitModified",      { fg = c.br_yellow })
hl(0, "NeoTreeGitDeleted",       { fg = c.red })
hl(0, "NeoTreeGitConflict",      { fg = c.br_red })
hl(0, "NeoTreeGitUntracked",     { fg = c.comment })

hl(0, "NvimTreeNormal",          { fg = c.fg,        bg = c.bg_dark })
hl(0, "NvimTreeFolderIcon",      { fg = c.blue })
hl(0, "NvimTreeFolderName",      { fg = c.blue })
hl(0, "NvimTreeRootFolder",      { fg = c.blue,      bold = true })
hl(0, "NvimTreeGitDirty",        { fg = c.br_yellow })
hl(0, "NvimTreeGitNew",          { fg = c.green })
hl(0, "NvimTreeGitDeleted",      { fg = c.red })
hl(0, "NvimTreeSpecialFile",     { fg = c.magenta })
hl(0, "NvimTreeIndentMarker",    { fg = c.bg_light })

-- ── Gitsigns ─────────────────────────────────────────────────────────────────
hl(0, "GitSignsAdd",             { fg = c.green })
hl(0, "GitSignsChange",          { fg = c.blue })
hl(0, "GitSignsDelete",          { fg = c.red })
hl(0, "GitSignsAddNr",           { fg = c.green })
hl(0, "GitSignsChangeNr",        { fg = c.blue })
hl(0, "GitSignsDeleteNr",        { fg = c.red })
hl(0, "GitSignsAddLn",           { bg = "#1e2614" })
hl(0, "GitSignsChangeLn",        { bg = "#1a2030" })

-- ── Which-key ────────────────────────────────────────────────────────────────
hl(0, "WhichKey",                { fg = c.blue })
hl(0, "WhichKeyGroup",           { fg = c.magenta,   bold = true })
hl(0, "WhichKeyDesc",            { fg = c.fg })
hl(0, "WhichKeySeparator",       { fg = c.br_black })
hl(0, "WhichKeyFloat",           { bg = c.bg_lighter })

-- ── Indent-blankline ─────────────────────────────────────────────────────────
hl(0, "IblIndent",               { fg = c.bg_lighter })
hl(0, "IblScope",                { fg = c.bg_light })
hl(0, "IndentBlanklineChar",     { fg = c.bg_lighter })
hl(0, "IndentBlanklineContextChar", { fg = c.bg_light })

-- ── Mini plugins ─────────────────────────────────────────────────────────────
hl(0, "MiniStatuslineModeNormal",  { fg = c.bg, bg = c.blue,    bold = true })
hl(0, "MiniStatuslineModeInsert",  { fg = c.bg, bg = c.green,   bold = true })
hl(0, "MiniStatuslineModeVisual",  { fg = c.bg, bg = c.magenta, bold = true })
hl(0, "MiniStatuslineModeReplace", { fg = c.bg, bg = c.red,     bold = true })
hl(0, "MiniStatuslineModeCommand", { fg = c.bg, bg = c.br_yellow, bold = true })
hl(0, "MiniStatuslineModeOther",   { fg = c.bg, bg = c.cyan,    bold = true })
hl(0, "MiniStatuslineFilename",    { fg = c.fg, bg = c.bg_light })
hl(0, "MiniStatuslineFileinfo",    { fg = c.fg, bg = c.bg_light })
hl(0, "MiniStatuslineDevinfo",     { fg = c.br_black, bg = c.bg_lighter })
hl(0, "MiniCursorword",            { bg = c.bg_light })
hl(0, "MiniCursorwordCurrent",     { bg = c.bg_light })
hl(0, "MiniJump",                  { fg = c.br_yellow, underline = true })
hl(0, "MiniJump2dSpot",            { fg = c.br_yellow, bold = true })
hl(0, "MiniPickBorder",            { fg = c.br_black,  bg = c.bg_lighter })
hl(0, "MiniPickPrompt",            { fg = c.blue,      bg = c.bg_lighter, bold = true })
hl(0, "MiniPickMatchCurrent",      { fg = c.fg,        bg = c.bg_light })
hl(0, "MiniPickMatchRanges",       { fg = c.blue,      bold = true })

-- ── Flash / Hop / Leap ───────────────────────────────────────────────────────
hl(0, "FlashLabel",              { fg = c.bg,        bg = c.br_yellow, bold = true })
hl(0, "FlashMatch",              { fg = c.bg,        bg = c.blue })
hl(0, "FlashCurrent",            { fg = c.bg,        bg = c.red })
hl(0, "HopNextKey",              { fg = c.br_yellow, bold = true })
hl(0, "HopNextKey1",             { fg = c.blue,      bold = true })
hl(0, "HopNextKey2",             { fg = c.cyan })
hl(0, "LeapMatch",               { fg = c.bg,        bg = c.br_yellow, bold = true })
hl(0, "LeapLabelPrimary",        { fg = c.bg,        bg = c.blue, bold = true })
hl(0, "LeapLabelSecondary",      { fg = c.bg,        bg = c.cyan })

-- ── Notify ───────────────────────────────────────────────────────────────────
hl(0, "NotifyERRORBorder",       { fg = c.red })
hl(0, "NotifyWARNBorder",        { fg = c.br_yellow })
hl(0, "NotifyINFOBorder",        { fg = c.blue })
hl(0, "NotifyDEBUGBorder",       { fg = c.br_black })
hl(0, "NotifyTRACEBorder",       { fg = c.magenta })
hl(0, "NotifyERRORIcon",         { fg = c.red })
hl(0, "NotifyWARNIcon",          { fg = c.br_yellow })
hl(0, "NotifyINFOIcon",          { fg = c.blue })
hl(0, "NotifyDEBUGIcon",         { fg = c.br_black })
hl(0, "NotifyTRACEIcon",         { fg = c.magenta })
hl(0, "NotifyERRORTitle",        { fg = c.red,       bold = true })
hl(0, "NotifyWARNTitle",         { fg = c.br_yellow, bold = true })
hl(0, "NotifyINFOTitle",         { fg = c.blue,      bold = true })
hl(0, "NotifyDEBUGTitle",        { fg = c.br_black,  bold = true })
hl(0, "NotifyTRACETitle",        { fg = c.magenta,   bold = true })

-- ── Noice ────────────────────────────────────────────────────────────────────
hl(0, "NoiceCmdlinePopupBorder", { fg = c.blue })
hl(0, "NoiceCmdlineIcon",        { fg = c.blue })
hl(0, "NoiceConfirmBorder",      { fg = c.br_yellow })

-- ── Lualine (terminal colors map) ────────────────────────────────────────────
-- Define terminal colors for plugins that use them
vim.g.terminal_color_0  = c.black
vim.g.terminal_color_1  = c.red
vim.g.terminal_color_2  = c.green
vim.g.terminal_color_3  = c.yellow
vim.g.terminal_color_4  = c.blue
vim.g.terminal_color_5  = c.magenta
vim.g.terminal_color_6  = c.cyan
vim.g.terminal_color_7  = c.white
vim.g.terminal_color_8  = c.br_black
vim.g.terminal_color_9  = c.br_red
vim.g.terminal_color_10 = c.br_green
vim.g.terminal_color_11 = c.br_yellow
vim.g.terminal_color_12 = c.br_blue
vim.g.terminal_color_13 = c.br_magenta
vim.g.terminal_color_14 = c.br_cyan
vim.g.terminal_color_15 = c.br_white
