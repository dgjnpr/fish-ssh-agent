function __add_private_keys -d "add all the user's SSH keys"
    __add_keys (__list_public_keys $HOME/.ssh/)
end
