# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#export EDITOR=vim                                                                                                                                        
export EDITOR="emacsclient -c --alternate-editor="

export M2_HOME=/usr/local/maven
export MAVEN_OPTS='-Xms128M -Xmx768M'
export JAVA_HOME=/usr/lib/jvm/java/
export CLASSPATH=/usr/share/groovy/lib/groovy-1.5.6.jar:$CLASSPATH
export PATH=$JAVA_HOME/bin:$M2_HOME/bin:$PATH
export IMPORTDIR=/home/jweiss/workspace/cp_product_utils

set -o emacs

alias dir='ls -alh --color'
alias beep='echo -en "\007";sleep 0.2;echo -en "\007";sleep 0.2;echo -en "\007"'
alias kj="jps | cut -f1 -d' ' | xargs kill"
alias vi="$EDITOR"
alias vim="$EDITOR"
alias emacs="$EDITOR"

#comment
