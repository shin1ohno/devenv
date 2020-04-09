hash -d work=~/Documents/work
alias sc="source ~/.zshrc"
function list_files_of_current_dir() { script -q /dev/null ls -GFa . | tr -d '\r' | cat }
function chpwd() { list_files_of_current_dir }

#fzf
ff() {
  local dir
  dir=$(find ${1:-.} -maxdepth 5 -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
                  cd "$dir"
}
fzf-cd() {
  local dir
  dir=$(find ${1:-.} -maxdepth 5 -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
                  BUFFER="cd $dir"
  zle accept-line
}
zle -N fzf-cd
bindkey '^f' fzf-cd

alias fv='fzf-nvim'
fzf-nvim() {
  nvim $(fzf)
}
