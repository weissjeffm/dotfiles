# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
export PATH=$PATH:/sbin:/usr/sbin:/usr/lib/firefox-2.0.0.12:/usr/java/latest/bin
export JAVA_HOME=/usr/java/latest
export TZ="US/Eastern"
alias dir='ls -alh --color'
set -o vi
export EDITOR=vim
alias startSel_fjs_0_19="java -jar ~/selenium-remote-control-0.9.2/selenium-server-0.9.2/selenium-server.jar -multiWindow -firefoxProfileTemplate /home/weissj/firefoxProfiles/customProfileDir473833"
export CLASSPATH=$CLASSPATH:/home/weissj/workspace/webui-framework/lib/testng-5.8-jdk15.jar
export M2_HOME=/home/weissj/apache-maven-2.0.9
export MAVEN_OPTS='-Xms128M -Xmx768M -XX:PermSize=128M -XX:MaxPermSize=256M'
export MYDEV_CLASSPATH=~/workspace/webui-framework/bin/:~/workspace/webui-framework/lib/*:~/workspace/automatjon/jon-2.0/bin/:~/workspace/automatjon/jon-2.0/lib/*:~/workspace/automatjon/jon-2.0/src/:~/workspace/clojure/clojure-1.1.0-alpha-SNAPSHOT.jar:~/workspace/clojure-contrib/clojure-contrib.jar:~/workspace/vimclojure/build/vimclojure.jar

#comment
