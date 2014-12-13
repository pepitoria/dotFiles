if !exists('loaded_snippet') || &cp
    finish
endif

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

let res = ''

function! UpFirst()
    return substitute(@z,'.','\u&','')
endfunction

function! MakeMethodComment()
    let vc = virtcol('.')
    let result = "/*** ".@z." ".repeat("*",80-strlen(@z)) 
    let result .= "\n".repeat(" ",vc - 3)."*\n".repeat(" ",vc - 3)
    let result .= repeat("*",86)."/\n".repeat(" ",vc - 3)
    let result .= @z
    return result
endfunction    

exec "Snippet proto ".st."className".et.".prototype.".st."methodName".et." = function(".st.et.")<CR>{<CR>".st.et."<CR>};<CR>".st.et
exec "Snippet meth ".st."method:MakeMethodComment()".et.": function (".st.et.") {<CR>var self=this".st.et."<CR>}".st.et
exec "Snippet bmodel var ".st."model".et." = Backbone.Model.extend({<CR><CR>defaults: {},<CR><CR>initialize: function () {<CR>".st.et."<CR>}<CR>});"
exec "Snippet jslint /*jslint nomen: true, node: true, sloppy: true */<CR>/*globals define:true*/<CR>".st.et
exec "Snippet sf function (".st.et.") {<CR>".st.et."<CR>}<CR>".st.et
exec "Snippet desc describe('".st.et."', function () {<CR>".st.et."<CR>});"
exec "Snippet beforeEach beforeEach(function () {<CR>".st.et."<CR>});"
exec "Snippet it it('".st.et."', function () {<CR>".st.et."<CR>});"
exec "Snippet log console.log('".st.et."')".st.et
exec "Snippet strict 'use strict';<CR>"

exec "Snippet ngmod angular.module('".st.et."',[".st.et."])".st.et
exec "Snippet ngcont .controller('".st.et."', [<CR>".st.et."<CR>function (".st.et.") {<CR>'use strict';<CR>".st.et."<CR>}<CR>]);"
exec "Snippet ngfact .factory('".st.et."',[<CR>".st.et."<CR>function (".st.et.") {<CR>'use strict';<CR>".st.et."<CR>}<CR>])"
exec "Snippet ngserv .service('".st.et."',[<CR>".st.et."<CR>function (".st.et.") {<CR>'use strict';<CR>".st.et."<CR>}<CR>])"
exec "Snippet ngdir .directive('".st.et."',[<CR>function (".st.et.") {<CR>'use strict';<CR>".st.et."}<CR>])"

exec "Snippet expectToBe expect(".st.et.").toBe(".st.et.")<CR>".st.et
exec "Snippet !expectToBe expect(".st.et.").not.toBe(".st.et.")<CR>".st.et
exec "Snippet expectToEqual expect(".st.et.").toEqual(".st.et.")<CR>".st.et
exec "Snippet !expectToEqual expect(".st.et.").not.toEqual(".st.et.")<CR>".st.et
exec "Snippet expectToMatch expect(".st.et.").toMatch(".st.et.")<CR>".st.et
exec "Snippet !expectToMatch expect(".st.et.").not.toMatch(".st.et.")<CR>".st.et
exec "Snippet expectToBeDefined expect(".st.et.").toBeDefined()<CR>".st.et
exec "Snippet !expectToBeDefined expect(".st.et.").not.toBeDefined()<CR>".st.et
exec "Snippet expectToBeUndefined expect(".st.et.").toBeUndefined()<CR>".st.et
exec "Snippet !expectToBeUndefined expect(".st.et.").not.toBeUndefined()<CR>".st.et
exec "Snippet expectToBeTruthy expect(".st.et.").toBeTruthy()<CR>".st.et
exec "Snippet !expectToBeTruthy expect(".st.et.").not.toBeTruthy()<CR>".st.et
exec "Snippet expectToBeFalsy expect(".st.et.").toBeFalsy()<CR>".st.et
exec "Snippet !expectToBeFalsy expect(".st.et.").not.toBeFalsy()<CR>".st.et
exec "Snippet expectToContain expect(".st.et.").toContain(".st.et.")<CR>".st.et
exec "Snippet !expectToContain expect(".st.et.").not.toContain(".st.et.")<CR>".st.et

exec "Snippet modexp module.exports = {<CR>".st.et."<CR>};"
exec "Snippet modexpf module.exports = function(grunt) {<CR>'use strict';<CR>".st.et."<CR>};"
