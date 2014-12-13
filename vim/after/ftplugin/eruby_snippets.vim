if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet erb <%= ".st.et." %>".st.et
exec "Snippet rb <% ".st.et." %>".st.et
exec "Snippet divid <div id=\"".st.et." %>".st.et
