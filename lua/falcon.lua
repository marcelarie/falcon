---@class FalconConfig
---@field background? boolean Enable background color (default: true)
---@field italic? boolean Enable italic text (default: false)
---@field bold? boolean Enable bold text (default: false)
---@field inactive? boolean Enable inactive window background (default: false)

local M = {}

---Falcon color palette
M.palette = {
  red = '#ff3600',
  orange = '#ff761a',
  yellow = '#ffc552',
  green = '#718e3f',
  blue_gray = '#99a4bc',
  purple = '#635196',
  indigo = '#5521d9',
  status = '#28282d',
  status_2 = '#36363a',
  inactive_status = '#1c1c22',
  black = '#000004',
  white = '#F8F8FF',
  light_gray = '#dfdfe5',
  normal_gray = '#b4b4b9',
  mid_gray = '#787882',
  mid_dark_gray = '#57575e',
  dark_gray = '#36363a',
  modified = '#c8d0e3',
  branch = '#99a4bc',
  method = '#a1968a',
  path = '#787882',
  info = '#787882',
  hint = '#847b73',
  error = '#9e1e00',
  warning = '#bc8f3f'
}

vim.api.nvim_set_var('falcon.palette', M.palette)

---Default configuration
local defaults = {
  background = true,
  italic = false,
  bold = false,
  inactive = false,
}

---Apply highlight overrides based on configuration
---@param config FalconConfig
local function apply_highlights(config)
  if not config.background then
    -- Main editor backgrounds
    vim.api.nvim_set_hl(0, "Normal", { fg = "#b4b4b9", bg = "NONE" })
    vim.api.nvim_set_hl(0, "NonText", { fg = "#36363a", bg = "NONE" })
    vim.api.nvim_set_hl(0, "Terminal", { fg = "#b4b4b9", bg = "NONE" })
    
    -- UI element backgrounds (keep dark gray from palette for visual distinction)
    vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "CursorColumn", { bg = "NONE" })
    
    -- Float windows (popups, autocomplete, etc.)
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#36363a", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#cfc1b2", bg = "#1a1a1f" })
    
    -- Menu/popup backgrounds
    vim.api.nvim_set_hl(0, "PMenu", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "PMenuSbar", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "PMenuThumb", { bg = "#36363a" })
    
    -- Status line and tab backgrounds
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TabLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "TabLineFill", { bg = "NONE" })
    
    -- Buffer tab line (dart.nvim, etc.)
    vim.api.nvim_set_hl(0, "BufTabLineCurrent", { fg = "#b4b4b9", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "BufTabLineActive", { fg = "#dfdfe5", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "BufTabLineHidden", { fg = "#787882", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "BufTabLineFill", { bg = "#1a1a1f" })
    
    -- Window bar (file title bar)
    vim.api.nvim_set_hl(0, "WinBar", { fg = "#dfdfe5", bg = "#1a1a1f", bold = true })
    vim.api.nvim_set_hl(0, "WinBarNC", { fg = "#787882", bg = "#1a1a1f" })
    
    -- Indent guides
    vim.api.nvim_set_hl(0, "IndentGuidesOdd", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "IndentGuidesEven", { bg = "#1a1a1f" })
    
    -- Folded and sign column
    vim.api.nvim_set_hl(0, "Folded", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "FoldColumn", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
    
    -- Diff backgrounds
    vim.api.nvim_set_hl(0, "DiffAdd", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiffChange", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiffDelete", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "DiffText", { bg = "NONE" })
    
    -- Telescope picker backgrounds
    vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#36363a", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeTitle", { fg = "#878791", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#ffc552", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#878791", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#dfdfe5", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#ff761a", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { fg = "#dfdfe5", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#787882", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "TelescopePreviewNormal", { fg = "#b4b4b9", bg = "#1a1a1f" })
    
    -- Snacks picker backgrounds
    vim.api.nvim_set_hl(0, "SnacksPickerNormal", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = "#444444", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = "#ffffff", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = "#ffffff", bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = "#1a1a1f" })
    vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = "#1a1a1f" })
  end

  if config.inactive then
    vim.api.nvim_set_hl(0, "ActiveWindow", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "InactiveWindow", { bg = "NONE" })
  end
end

---Setup falcon colorscheme with options
---@param opts? FalconConfig
---@return nil
function M.setup(opts)
  opts = vim.tbl_extend("force", defaults, opts or {})

  -- Set global variables for backward compatibility with vim plugin
  vim.g.falcon_background = opts.background and 1 or 0
  vim.g.falcon_italic = opts.italic and 1 or 0
  vim.g.falcon_bold = opts.bold and 1 or 0
  vim.g.falcon_inactive = opts.inactive and 1 or 0

  -- Load colorscheme
  vim.cmd.colorscheme "falcon"

  -- Apply custom highlight overrides
  apply_highlights(opts)
end

return M
