scriptencoding utf-8

if exists( 'g:local_vim_setting#enable' )
 finish
end

let g:local_vim_setting#enable = 1
let g:local_vim_setting#filename = get( g:, "local_vim_setting#filename", ".lvimrc" )

function! local_vim_setting#load_setting_file()
    let load_file = local_vim_setting#get_setting_file()
    call local_vim_setting#load( load_file )
endfunction

function! local_vim_setting#get_setting_file()
    let load_file = local_vim_setting#get_git_repository_root() . '/' . g:local_vim_setting#filename
    return load_file
endfunction

command! LoadLvimrc call local_vim_setting#load_setting_file()
command! LocalVimrcShow echo local_vim_setting#get_setting_file()

call local_vim_setting#load_setting_file()

