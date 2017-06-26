if test -f $HOME/.ssh/environment
    __connect_to_ssh_agent
else
    __start_ssh_agent
end
