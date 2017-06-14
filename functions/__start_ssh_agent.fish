function __start_ssh_agent -d "start SSH agent and make it globally available"
    set -x SSH_ENV (ssh-agent -c | sed 's/^echo/#echo/')
    eval $SSH_ENV
    set -g $SSH_AGENT_PID
    chmod 600 $SSH_AUTH_SOCK
    __add_private_keys
end
