vim.cmd [[
try
  colorscheme gruvbox-material
  " colorscheme darkplus
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
