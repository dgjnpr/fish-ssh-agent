set ssh_agent_pid (pgrep ssh-agent)
if $ssh_agent_pid[0]
    __test_ssh_identities
else
    __start_ssh_agent
end
