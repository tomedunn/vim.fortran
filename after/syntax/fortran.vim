" turn off line breaking
setlocal textwidth=0

"Catch errors caused by too many right parentheses
"syn region fortranParen transparent start="(" end=")" contains=ALLBUT,fortranParenError,@fortranCommentGroup,cIncluded,@spell
syn region fortranParen transparent start="(" end=")" contains=ALLBUT,fortranParenError,cIncluded,@spell
syn match  fortranParenError ")"

if b:fortran_dialect != "f77"
  " attribute operator
  syn match fortranOperator	"%"
  syn match fortranOperator	"\.\s*\w*\s*\."

  syn match  fortranUnitHeader	"\<submodule\>"
  syn match  fortranUnitHeader	"\<end\s*submodule\>"
  syn match fortranUnitHeader	"\<non_recursive\>"

  syn match fortranType		"\<double\s*precision\>"

  " associate structure
  syn match fortranConditional	"\<associate\>"
  syn match fortranConditional	"\<end\s*associate\>"
  syn match fortranConditional	"\<block\>"
  syn match fortranConditional	"\<end\s*block\>"
  syn match fortranConditional	"\<critical\>"
  syn match fortranConditional	"\<end\s*critical\>"
  syn match fortranType		"\<class\>"
  syn keyword fortranKeyword	error
  syn keyword fortranStructure	value
  syn keyword fortranConditionalEx	concurrent
  syn keyword fortranStructure	extends
  syn keyword fortranStorageClass	codimension

  syn keyword fortran03Intrinsic  c_sizeof
  syn keyword fortran03Intrinsic  compiler_options compiler_version
  syn keyword fortran03Intrinsic  ieee_get_rounding_mode ieee_set_rounding_mode
  syn keyword fortran03Intrinsic  ieee_class ieee_copy_sign ieee_is_finite ieee_is_nan ieee_is_normal ieee_logb ieee_next_after ieee_rem ieee_rint ieee_scalb ieee_selected_real_kind ieee_support_datatype ieee_support_denormal ieee_support_divide ieee_support_inf ieee_support_io ieee_support_nan ieee_support_rounding ieee_support_sqrt ieee_support_standard ieee_unordered ieee_value
  syn keyword fortran03Intrinsic  ieee_support_flag ieee_support_halting
  syn keyword fortran03Intrinsic  ieee_get_flag ieee_get_halting_mode ieee_get_status ieee_set_flag ieee_set_halting_mode ieee_set_status

  syn match fortran03Conditional  "\<class\s*is\>"

  "Add fix for numeric constants with suffixes
endif
