" turn off line breaking
setlocal textwidth=0

"Catch errors caused by too many right parentheses
"syn region fortranParen transparent start="(" end=")" contains=ALLBUT,fortranParenError,@fortranCommentGroup,cIncluded,@spell
syn region fortranParen transparent start="(" end=")" contains=ALLBUT,fortranParenError,cIncluded,@spell
syn match  fortranParenError ")"

if b:fortran_dialect != "f77"
  " attribute operator
  syn match fortranOperator	"%"

  " associate structure
  syn match fortranConditional	"\<associate\>"
  syn match fortranConditional	"\<end\s*associate\>"
  syn match fortranType		"\<class\>"
  syn keyword fortranStructure	value
  syn keyword fortranConditionalEx	concurrent
  syn keyword fortranStructure	extends
endif
