export EDITOR="emacsclient"
export EMAIL=pcadottemichaud@avencall.com
export DEBFULLNAME="Pascal Cadotte Michaud"
export DEBEMAIL=$EMAIL
export GPGKEY=2697CC75
export GPG_TTY=`tty`
export GOPATH=$HOME/d/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin:/home/pcm/bin
export SSH_ASKPASS=/usr/bin/ssh-askpass

# XiVO stuff
export XIVO_PATH=/home/pcm/d
export XIVO_AGENT_PATH=$XIVO_PATH/xivo-agent/xivo-agent
export XIVO_DAO_PATH=$XIVO_PATH/xivo-dao/xivo-dao
export XIVO_DIRD_PATH=$XIVO_PATH/xivo-dird/xivo-dird
export XIVO_LIB_PYTHON_PATH=$XIVO_PATH/xivo-lib-python/xivo-lib-python
export XIVO_WS_PATH=$XIVO_PATH/xivo-ws

export PYTHONPATH=$PYTHONPATH:$XIVO_PATH/callgen/xivo-callgen:$XIVO_DAO_PATH:$XIVO_LIB_PYTHON_PATH:$XIVO_DIRD_PATH:$XIVO_WS_PATH:$XIVO_AGENT_PATH

export XC_PATH=/home/pcm/d/xivo-client-qt/bin/
