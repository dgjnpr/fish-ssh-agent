function __test_ssh_identities
    set identities (ssh-add -l ^&1)
    if echo $identities | grep -q "Error connecting to agent"
        __start_ssh_agent
    else if echo $identities | grep -q "The agent has no identities"
        __add_private_keys
    end
end
