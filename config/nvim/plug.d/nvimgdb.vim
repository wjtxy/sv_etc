" nvim-gdb *********************************************************************
nnoremap gb :GdbStart gdb -q ./
let g:nvimgdb_config = {
	\ 'key_frameup':    '<c-p>',
	\ 'key_framedown':  '<c-n>',
	\ 'key_quit':       "",
	\ 'sign_current_line': '->',
	\ 'sign_breakpoint': [ '0*', '1*', '2*', '3*', '4*', '5*', '6*', '7*', '8*', '9*'],
	\ 'sign_breakpoint_priority': 10,
	\ 'termwin_command': 'belowright new',
	\ 'codewin_command': 'new',
	\ 'set_scroll_off': 5,
	\ 'jump_bottom_gdb_buf': v:true,
	\ }
