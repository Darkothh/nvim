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

vim.api.nvim_set_hl(0, "NavicIconsFile",          {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsModule",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsNamespace",     {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsPackage",       {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsClass",         {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsMethod",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsProperty",      {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsField",         {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsConstructor",   {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsEnum",          {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsInterface",     {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsFunction",      {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsVariable",      {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsConstant",      {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsString",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsNumber",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsBoolean",       {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsArray",         {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsObject",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsKey",           {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsNull",          {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsEnumMember",    {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsStruct",        {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsEvent",         {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsOperator",      {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicIconsTypeParameter", {default = true,  fg = "#D70FFF"})
vim.api.nvim_set_hl(0, "NavicText",               {default = true,  fg = "#ffffff"})
-- vim.api.nvim_set_hl(0, "NavicSeparator",          {default = true,  fg = "#D70FFF"})
