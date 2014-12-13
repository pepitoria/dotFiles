if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

function! UpFirst()
    return substitute(@z,'.','\u&','')
endfunction

function! MakeComment()
    let vc = virtcol('.')
    let result = "/*** ".@z." ".repeat("*",80-strlen(@z)) 
    let result .= "\n".repeat(" ",vc - 3)."*\n".repeat(" ",vc - 3)
    let result .= repeat("*",86)."/\n".repeat(" ",vc - 3)
    return result
endfunction    


exec "Snippet com ".st."comment:MakeComment()".et

