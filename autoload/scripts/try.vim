try
  q
catch 
  echo "Error " . v:exception
  let result = input("Quieres salir?")
  if result =~ "s"
    echo "a"
  endif

endtry

