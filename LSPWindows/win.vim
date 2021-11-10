"let g:ale_command_wrapper = 'python -m'
let win_path = fnamemodify($MYVIMRC, ":h") . "\\LSPWindows\\"
" PYTHON
let g:ale_python_pylint_executable = win_path . 'pylint.bat'
let g:ale_python_flake8_executable = win_path . 'flake8.bat'
let g:ale_python_isort_executable = win_path . 'isort.bat'
let g:ale_python_autoimport_executable = win_path . 'autoimport.bat'
let g:ale_python_autoflake_executable = win_path . 'autoflake.bat'
" C/C++
let g:ale_cpp_cpplint_executable = win_path . 'cpplint.bat'
