set autoread

if exists("g:loaded_ragtag")
    call RagtagInit()
endif

map <buffer> <Leader>post :exec '!b.py post '.shellescape(expand('%:p'))<CR>

func! s:InsertCode(file_name)
    let code_lang = substitute(a:file_name, '[^\.]*\.', '', 'i')
    call setline('.', getline('.').'<pre><code class="'.code_lang.'">')
    norm! o
    call setline('.', getline('.').'</code></pre>')
    norm! k
    exec "r ".a:file_name
endfu

command! -nargs=1 -complete=file Rc call s:InsertCode(<f-args>)

" links checking
set makeprg=linkchecker\ -v\ --check-extern\ -o\ csv\ %

set errorformat=%-G#%.%#,
                \%-Gurlname;parentname;%.%#,
                \%-G%.%#;True;%.%#,
                \%-G%.%#URLs\ checked%.%#,
                \%.%#file://%f;;%m;;;False;%.%#;%l;%c;%.%#;%.%#;%.%#;%.%#;%.%#;%.%#;
