# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
 
PS1="[\u@\h \W\$(parse_git_branch)]\$ "


# User specific aliases and functions
#export EDITOR=vim                                                                                                                                        
export EDITOR='/usr/bin/emacsclient --alternate-editor= -nw '

export M2_HOME=/usr/local/maven
export MAVEN_OPTS='-Xms128M -Xmx768M'
export JAVA_HOME=/etc/alternatives/jre_openjdk
export CLASSPATH=/usr/share/groovy/lib/groovy-1.5.6.jar:$CLASSPATH
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH

set -o emacs

alias dir='ls -alh --color'
alias beep='echo -en "\007";sleep 0.2;echo -en "\007";sleep 0.2;echo -en "\007"'
alias kj="jps | cut -f1 -d' ' | xargs kill"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias emacs="$EDITOR"

#comment
