function agent_is_present -d "find ssh-agent process if one is running"
    set ssh_agent_pid (pgrep ssh-agent)
    if $ssh_agent_pid[0] > 1
        return true
    else
        return false
    end
end

if agent_is_present
    __test_ssh_identities
else
    __start_ssh_agent
end
