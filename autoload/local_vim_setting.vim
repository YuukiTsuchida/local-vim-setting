scriptencoding utf-8

".gitのあるディレクトリを取得する
function! local_vim_setting#get_git_repository_root()
    let root = system( 'git rev-parse --show-toplevel' )

    if v:shell_error == 0
        return substitute( root, "\n", "", "g" )
    endif

    let working_dir = system( 'pwd' )
    return substitute( working_dir, "\n", "", "g" )
endfunction

function! local_vim_setting#load( filename )
    if filereadable( a:filename )
        exe 'source ' . a:filename
    endif
endfunction
