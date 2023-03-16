vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true
vim.opt.autoindent = false
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'zsh'
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split' -- will split window when in replace mode and display matches
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.ai = true -- autoindent
vim.opt.si = true -- smartindent
vim.opt.wrap = false
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' }                     -- finding files, search down in subfolders
vim.opt.wildignore:append { '*/node_modules/*' } -- TODO add other directories to be ignored. Python specifics.

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  command = "set nopaste"
})

vim.opt.formatoptions:append { "r" }




-- Backups, undos, swaps {{{ "

vim.cmd [[
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif

" Backups {{{ "
" Centralize backups, swapfiles and undo history
if !isdirectory($HOME."/.vim/backups")
    call mkdir($HOME."/.vim/backups", "", 0700)
endif
set backupdir=~/.vim/backups

" }}} Backups "


" Undos {{{ "

" Store undos in a file to be able to undo with
" 'infinite' horizon even after a file was closed
" Let's save undo info!
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undofile
set undodir=~/.vim/undo-dir//

" }}} Undos "
]]
