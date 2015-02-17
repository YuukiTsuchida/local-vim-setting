scriptencoding utf-8

".gitのあるディレクトリを取得する
function! s:get_git_repository_root()
    let root = system( 'git rev-parse --show-toplevel' )

    if v:shell_error == 0
        return substitute( root, "\n", "", "g" )
    endif

    return system( 'pwd' )
endfunction
