" You probably always want to set this in your vim file
set background=dark
let g:colors_name="starry"
lua package.loaded['starry'] = nil
lua package.loaded['starry.main'] = nil
lua require('lush')(require('starry'))

