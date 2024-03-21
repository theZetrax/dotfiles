 function! Tabline() abort
    let l:line = ''
    let l:current = tabpagenr()
    let bufnrlist = tabpagebuflist(v:lnum)

    for l:i in range(1, tabpagenr('$'))
        if l:i == l:current
            let l:line .= '%#TabLineSel#'
        else
            let l:line .= '%#TabLine#'
        endif

        let l:label = fnamemodify(
            \ bufname(tabpagebuflist(l:i)[tabpagewinnr(l:i) - 1]),
            \ ':t'
        \ )

        let l:line .= '%' . i . 'T' " Starts mouse click target region.
        let l:line .= '  ' . l:label . '  '
    endfor

    let l:line .= '%#TabLineFill#'
    let l:line .= '%T' " Ends mouse click target region(s).

    if tabpagenr('$') > 1
        let l:line .= '%=%#TabLine#%999X x '
    endif


    return l:line
endfunction

" set tabline=%!Tabline()
