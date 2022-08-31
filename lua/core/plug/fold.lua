require('pretty-fold').setup{
   keep_indentation = false,
   fill_char = '━', --lo que servira como relleno
   sections = {
      left = {
         '━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣' --seleccionamos lo que estara en el lado derecho
      },
      right = {
         '┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━', --seleccionamos lo que estara en el lado izquierdo
      }
   }
}

require('fold-preview').setup() --llamamos a fold-preview, este nos muestra lo que este dentro del fold --
