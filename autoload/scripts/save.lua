local function SaveFile()
  local cmd = vim.cmd
  cmd([[
  try
  q
  catch 
  echo "Error " . v:exception
  endtry
  ]])

  if cmd then
    if vim.fn.input "Quieres guardar y salir? (s = si)" == "s" then
      cmd([[
      write
      q
      ]])
    end
  end
end


SaveFile()
