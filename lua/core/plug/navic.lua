local status_ok, navic = pcall(require, "nvim-navic")
if not status_ok then
  return
end

local icons = require "core.icons"
navic.setup {
  icons = {
    File = ' ',
    Module = ' ',
    Namespace = ' ',
    Package = ' ',
    Class = ' ',
    Method = ' ',
    Property = ' ',
    Field = ' ',
    Constructor = ' ',
    Enum = ' ',
    Interface = ' ',
    Function = ' ',
    Variable = ' ',
    Constant = ' ',
    String = ' ',
    Number = ' ',
    Boolean = ' ',
    Array = ' ',
    Object = ' ',
    Key = ' ',
    Null = ' ',
    EnumMember = ' ',
    Struct = ' ',
    Event = ' ',
    Operator = ' ',
    TypeParameter = ' '

  },
  highlight = true,
  separator = icons.sep.breadcrump_sep,
  depth_limit = 0,
  depth_limit_indicator = "..",
}

vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true,  fg = "#C297B8"})
vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true,  fg = "#86A397"})
vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true,  fg = "#20A39E"})
vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true,  fg = "#A4A9AD"})
vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true,  fg = "#A14A76"})
vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true,  fg = "#40798C"})
vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true,  fg = "#70A9A1"})
vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true,  fg = "#F78764"})
vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true,  fg = "#F4D35E"})
vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true,  fg = "#DA4167"})
vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true,  fg = "#0055a0"})
vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true,  fg = "#04A777"})
vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true,  fg = "#820263"})
vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true,  fg = "#D90368"})
vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true,  fg = "#F75C03"})
vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true,  fg = "#723D46"})
vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true,  fg = "#93BEDF"})
vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true,  fg = "#858AE3"})
vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true,  fg = "#613DC1"})
vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true,  fg = "#2C0735"})
vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true,  fg = "#97DFFC"})
vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true,  fg = "#990D35"})
vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true,  fg = "#D52941"})
vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true,  fg = "#FCD581"})
vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true,  fg = "#9DB4C0"})
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true,  fg = "#F64740"})
-- vim.api.nvim_set_hl(0, "NavicText",               {default = true,  fg = "#ffffff"})
-- vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true,  fg = "#c882ff"})
