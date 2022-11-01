local status_ok, auto_session = pcall(require, "auto-session")
if not status_ok then
  return
end

local opts = {
  log_level = "info",
  auto_session_enable_last_session = false,
  auto_session_root_dir = vim.fn.stdpath "data" .. "/sessions/",
  auto_session_enabled = true,
  auto_save_enabled = true,
  auto_restore_enabled = false,
  auto_session_suppress_dirs = {
    -- vim.fn.glob(vim.fn.stdpath "config" .. "/*"),
    -- os.getenv "HOME",
    -- os.getenv "HOME" .. "/Machfiles",
  },
  auto_session_use_git_branch = nil,
  -- the configs below are lua only
  bypass_session_save_file_types = { "alpha", "wiki"},
}

vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

auto_session.setup(opts)
