hash -d work=~/Documents/work
alias sc="source ~/.zshrc"
function list_files_of_current_dir() { script -q /dev/null ls -GFa . | tr -d '\r' | cat }
function chpwd() { list_files_of_current_dir }
