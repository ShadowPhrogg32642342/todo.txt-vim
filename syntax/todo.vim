" File:        todo.txt.vim
" Description: Todo.txt syntax settings
" Author:      Leandro Freitas <freitass@gmail.com>
" License:     Vim license
" Website:     http://github.com/freitass/todo.txt-vim
" Version:     0.3

if exists("b:current_syntax")
    finish
endif

syntax  match  TodoDone       '^[xX]\s.\+$'
syntax  match  TodoPriority0  '^(0)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority1  '^(1)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority2  '^(2)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority3  '^(3)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority4  '^(4)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority5  '^(5)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority6  '^(6)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority7  '^(7)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority8  '^(8)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriority9  '^(9)\s.\+$'                contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityA  '^([aA])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityB  '^([bB])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityC  '^([cC])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityD  '^([dD])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityE  '^([eE])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityF  '^([fF])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityG  '^([gG])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityH  '^([hH])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityI  '^([iI])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityJ  '^([jJ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityK  '^([kK])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityL  '^([lL])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityM  '^([mM])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityN  '^([nN])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityO  '^([oO])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityP  '^([pP])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityQ  '^([qQ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityR  '^([rR])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityS  '^([sS])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityT  '^([tT])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityU  '^([uU])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityV  '^([vV])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityW  '^([wW])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityX  '^([xX])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityY  '^([yY])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoPriorityZ  '^([zZ])\s.\+$'             contains=TodoDate,TodoProject,TodoContext,TodoTag,OverDueDate
syntax  match  TodoComment    '^#\s.\+$'

syntax  match  TodoDate       '\d\{2,4\}-\d\{2\}-\d\{2\}' contains=NONE
syntax  match  TodoProject    '\s+[^[:blank:]]\+'  contains=NONE
syntax  match  TodoContext    '\s@[^[:blank:]]\+'  contains=NONE
syntax  match  TodoTag        '\s#[0-9a-z]\+:[0-9A-Za-z]\+\($\|\s\)' contains=NONE

" Other priority colours might be defined by the user
highlight  default        TodoDone       guifg=#555555
highlight  default  link  TodoComment    Comment
highlight  default  link  TodoPriorityA  Constant
highlight  default  link  TodoPriorityB  Statement
highlight  default  link  TodoPriorityC  Identifier
highlight  default        TodoPriorityM  guifg=#777777
highlight  default        TodoPriorityI  guifg=#999999
highlight  default  link  TodoDate       PreProc
highlight  default  link  TodoProject    Special
highlight  default  link  TodoContext    Special
highlight  default  link  TodoTag        Special

if exists('g:todo_load_python') && g:todo_load_python
    if has('python')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "pyfile " . s:script_dir. "todo.py"
    elseif has('python3')
        let b:curdir = expand('<sfile>:p:h')
        let s:script_dir = b:curdir . "/python/"
        execute "py3file " . s:script_dir. "todo.py"
    else
        echom "Your version of vim has no python support. Overdue dates won't be highlighted"
    endif
endif

let b:current_syntax = "todo"
