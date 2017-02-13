function! IgnoreParenIndent()
let indent = cindent(v:lnum)
if indent > 4000
if cindent(v:lnum - 1) > 4000
return indent(v:lnum - 1)
else
return indent(v:lnum - 1) + 4
endif
else
return (indent)
endif
endfun


setlocal cindent
setlocal cinoptions=(4200,u4200,+0.5s,*500,:0,t0,U4200
setlocal indentexpr=IgnoreParenIndent()
setlocal indentkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal noexpandtab
setlocal shiftwidth=8
setlocal tabstop=8
setlocal textwidth=80

ab #i #include
ab #d #define
