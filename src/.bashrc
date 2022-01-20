alias open='xdg-open .'
alias settings=gnome-control-center
alias system-monitor=gnome-system-monitor
PS1='\w\$ '
PS1='\W\$ '
git_branch() {
  git branch 2> /dev/null \
  | sed \
  -e '/^[^*].*$/d' \
  -e 's/*\s\(.*\)/(\1) /'
}

PS1='\$ '
sps() {
   dirs | sed -r 's|(\.?[^/~])[^/]*/|\1/|g'
}
PS1='$(git_branch)$(sps) \$ '

source /etc/profile.d/bash_completion.sh
bind '"\t":menu-complete'
export DOCKER_BUILDKIT=1
