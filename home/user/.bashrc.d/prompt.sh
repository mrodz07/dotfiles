parse_git_branch() {
	git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/  \1/ '
}

#export PS1="\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[32m\]\W\[\e[m\]\\[\e[91m\]\$(parse_git_branch)\[\e[36m\] $\[\e[m\] "
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[33m\]@\[\e[m\]\[\e[36m\]\h\[\e[m\] \[\e[32m\]\W\[\e[m\]\\[\e[91m\]\$(parse_git_branch)\[\e[36m\] $\[\e[m\] "
