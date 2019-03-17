setlocal noexpandtab

" auto-insert comment leaders
set formatoptions+=cro

let g:go_bin_path = $HOME . '/.vim/vim-go-binaries'

let g:go_jump_to_error = 0
let g:go_test_show_name = 1

let g:go_auto_type_info = 0
let g:go_auto_sameids = 0

let g:go_metalinter_autosave = 0

let g:go_template_use_pkg = 1

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_variable_declarations = 1

let g:go_alternate_mode = "vsplit"
noremap <buffer> <Leader>a :GoAlternate<CR>
