set ssh_agent_pid (pgrep ssh-agent)

if count $ssh_agent_pid >= 1
    __test_ssh_identities
else
    __start_ssh_agent
end
