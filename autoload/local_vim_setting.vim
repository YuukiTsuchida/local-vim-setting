scriptencoding utf-8

".gitのあるディレクトリを取得する
function! local_vim_setting#get_git_repository_root()
    let root = system( 'git rev-parse --show-toplevel' )

    echo 'aaaa'
    if v:shell_error == 0
        return substitute( root, "\n", "", "g" )
    endif

    echo 'aaaa'
    return system( 'pwd' )
endfunction

function! local_vim_setting#load( filename )
    if filereadable( a:filename )
        echo 'source ' . a:filename
        exe 'source ' . a:filename
    endif
endfunction
