" Vim syntax file
" Language:	Timing library
" Maintainer:	
" Last Change:  19 June 2012
" Comments:   	
"		
"
" 

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" syntax is case INsensitive
syn case ignore

syn keyword	timingTodo	contained TODO

syn keyword 	timingStatement   library technology delay_model bus_naming_style library_features comment date revision time_unit
syn keyword 	timingStatement   leakage_power_unit voltage_unit current_unit pulling_resistance_unit capacitive_load_unit nom_process
syn keyword 	timingStatement   nom_temperature nom_voltage slew_lower_threshold_pct_rise
syn keyword 	timingStatement   slew_lower_threshold_pct_fall slew_upper_threshold_pct_rise slew_upper_threshold_pct_fall
syn keyword 	timingStatement   slew_derate_from_library input_threshold_pct_fall output_threshold_pct_fall
syn keyword 	timingStatement   input_threshold_pct_rise output_threshold_pct_rise default_output_pin_cap
syn keyword 	timingStatement   default_input_pin_cap default_inout_pin_cap default_max_transition
syn keyword 	timingStatement   default_fanout_load define add_pg_pin_to_lib operating_conditions
syn keyword 	timingStatement   voltage_map direction max_transition capacitance related_power_pin
syn keyword 	timingStatement   related_ground_pin pg_pin pg_type cell dont_touch power_down_function pin

syn keyword 	timingKeyword     model a2d b3soipd bjt bjt301 bjt500 bjt503 bsim1 bsim2 bsim3 bsim3v3 btasoi 
syn keyword 	timingKeyword     capacitor cccs ccvs cktrom core d2a delay dio500 diode ekv fourier gaas hbt 
syn keyword 	timingKeyword     hvmos inductor intcap iprobe isource jfet juncap misnan mos0 mos1 mos15 mos2 
syn keyword 	timingKeyword     mos3 mos30 mos3002 mos705 mos902 mos903 msline mutual_inductor nodcap node
syn keyword 	timingKeyword     nport paramtest pcccs pccvs phy_res port pvccs pvcvs quantity rdiff relay
syn keyword 	timingKeyword     resistor scccs sccvs svccs svcvs switch tline tom2 transformer vbic vccs
syn keyword 	timingKeyword     vcvs vsource winding zcccs zccvs zvccs zvcvs

" Numbers, all with engineering suffixes and optional units
"==========================================================
"floating point number, with dot, optional exponent
syn match timingNumber  "\<[0-9]\+\.[0-9]*\(e[-+]\=[0-9]\+\)\=\(meg\=\|[afpnumkg]\)\="
"floating point number, starting with a dot, optional exponent
syn match timingNumber  "\.[0-9]\+\(e[-+]\=[0-9]\+\)\=\(meg\=\|[afpnumkg]\)\="
"integer number with optional exponent
syn match timingNumber  "\<[0-9]\+\(e[-+]\=[0-9]\+\)\=\(meg\=\|[afpnumkg]\)\="

" Misc
"=====
syn match   timingWrapLineOperator       "\\$"
syn match   timingWrapLineOperator       "^+"
syn match   timingIgnore		  "\ \ \ "

syn match   timingStatement      "^ \=\.\I\+"
syn region  timingString	start=+L\="+ skip=+\\\\\|\\"+ end=+"+

syn region timingComment start="//" end="$" contains=timingTodo
syn region timingComment start="/\*" end="\*/" contains=timingTodo


" Matching pairs of parentheses
"==========================================
syn region  timingParen transparent matchgroup=timingOperator start="(" end=")" contains=ALLBUT,timingParenError
syn region  timingSinglequote matchgroup=timingOperator start=+'+ end=+'+ oneline
"syn match timingKeyword /)\ \<[a-z]\+[0-9]*[a-z]*\>\ /

" Errors
"=======
syn match timingParenError ")"

" Syncs
" =====
syn sync minlines=50

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_timing_syntax_inits")
  if version < 508
    let did_timing_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink timingTodo	         Todo
  HiLink timingWrapLineOperator timingOperator
  HiLink timingSinglequote      timingExpr
  HiLink timingExpr             Function
  HiLink timingParenError       Error
  HiLink timingStatement        Statement
  HiLink timingNumber           Number
  HiLink timingComment          Comment
  HiLink timingOperator         Operator
  HiLink timingString           String
  HiLink timingKeyword          Type 
  HiLink timingIgnore		 Ignore

  delcommand HiLink
endif

let b:current_syntax = "timing"

" insert the following to $VIM/syntax/scripts.vim
" to autodetect HSpice netlists and text listing output:
"
" " Spice netlists and text listings
" elseif getline(1) =~ 'timing\>' || getline("$") =~ '^\.end'
"   so <sfile>:p:h/timing.vim

" vim: ts=8
