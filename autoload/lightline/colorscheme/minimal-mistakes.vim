" =============================================================================
" Filename: autoload/lightline/colorscheme/minimal-mistakes.vim
" Author: Minimal-Mistakes
" License: MIT License
" =============================================================================

let s:black    = g:minimalmistakes#palette.bg
let s:gray     = g:minimalmistakes#palette.selection
let s:white    = g:minimalmistakes#palette.fg
let s:darkblue = g:minimalmistakes#palette.comment
let s:cyan     = g:minimalmistakes#palette.cyan
let s:green    = g:minimalmistakes#palette.green
let s:orange   = g:minimalmistakes#palette.orange
let s:purple   = g:minimalmistakes#palette.purple
let s:red      = g:minimalmistakes#palette.red
let s:yellow   = g:minimalmistakes#palette.yellow

if exists('g:lightline')

  let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
  let s:p.normal.left = [ [ s:black, s:purple ], [ s:cyan, s:gray ] ]
  let s:p.normal.right = [ [ s:black, s:purple ], [ s:white, s:darkblue ] ]
  let s:p.inactive.right = [ [ s:black, s:darkblue ], [ s:white, s:black ] ]
  let s:p.inactive.left =  [ [ s:cyan, s:black ], [ s:white, s:black ] ]
  let s:p.insert.left = [ [ s:black, s:green ], [ s:cyan, s:gray ] ]
  let s:p.replace.left = [ [ s:black, s:red ], [ s:cyan, s:gray ] ]
  let s:p.visual.left = [ [ s:black, s:orange ], [ s:cyan, s:gray ] ]
  let s:p.normal.middle = [ [ s:white, s:gray ] ]
  let s:p.inactive.middle = [ [ s:white, s:gray ] ]
  let s:p.tabline.left = [ [ s:darkblue, s:gray ] ]
  let s:p.tabline.tabsel = [ [ s:cyan, s:black ] ]
  let s:p.tabline.middle = [ [ s:darkblue, s:gray ] ]
  let s:p.tabline.right = copy(s:p.normal.right)
  let s:p.normal.error = [ [ s:red, s:black ] ]
  let s:p.normal.warning = [ [ s:yellow, s:black ] ]

  let g:lightline#colorscheme#minimalmistakes#palette = lightline#colorscheme#flatten(s:p)

endif

" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0:
