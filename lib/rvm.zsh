# get the name of the branch we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  echo "($ruby_version)"
}


function my_rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  echo "$ruby_version"
}

function generate_rvmrc_file() {
  echo "RVM='$1'\nrvm use \$RVM --create\nrvm wrapper \$RVM textmate\n" > .rvmrc
}

alias rvmi='my_rvm_prompt_info'
alias rvmrc='generate_rvmrc_file'