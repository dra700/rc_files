ENV_FILE=~/rc_files/.ssh_agent.env

NO_AGENT=1

if [[ -f $ENV_FILE ]]
then
    source $ENV_FILE
    if ps -p $SSH_AGENT_PID | grep -q ssh-agent
    then
        NO_AGENT=0
    fi
fi

if [[ $NO_AGENT = 1 ]]
then
    echo "Running ssh-agent"
    ssh-agent -t 8h | grep -v echo  > $ENV_FILE
    source $ENV_FILE
fi
