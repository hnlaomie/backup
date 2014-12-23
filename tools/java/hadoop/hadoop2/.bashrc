export TERM=xterm-256color  
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
alias ls='ls --color=auto'
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

export FINDBUGS_HOME=/usr/local/tools/findbugs

# Set Hadoop-related environment variables
export HADOOP_PREFIX=/usr/local/tools/hadoop-single
export HADOOP_HOME=/usr/local/tools/hadoop-single
export HADOOP_MAPRED_HOME=${HADOOP_HOME}
export HADOOP_COMMON_HOME=${HADOOP_HOME}
export HADOOP_HDFS_HOME=${HADOOP_HOME}
export YARN_HOME=${HADOOP_HOME}
export HADOOP_CONF_DIR=${HADOOP_HOME}/etc/hadoop
# Native Path
export HADOOP_COMMON_LIB_NATIVE_DIR=${HADOOP_PREFIX}/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_PREFIX/lib"
export JAVA_LIBRARY_PATH=${HADOOP_PREFIX}/lib/native
# hive
export HIVE_HOME=/usr/local/tools/hive
# hbase
export HBASE_HOME=/usr/local/tools/hbase
#Java path
export JAVA_HOME='/usr/lib/jvm/java-8-oracle'
export GRADLE_HOME='/usr/local/tools/gradle'
# Add bin/ directory to PATH
export PATH=$PATH:$JAVA_PATH/bin:$GRADLE_HOME/bin:$FINDBUGS_HOME/bin
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$HIVE_HOME/bin:$HBASE_HOME/bin
