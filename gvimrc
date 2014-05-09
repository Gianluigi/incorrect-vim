if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :tabnew<cr>:CommandT<CR>
endif
