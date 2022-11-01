return {
  sh = {
    { LintCommand = "shellcheck -f gcc -x",
      LintFormats = {
        "%f:%l:%c: %trror: %m",
        "%f:%l:%c: %tarning: %m",
        "%f:%l:%c: %tote: %m"
      }
    }
  },
}
