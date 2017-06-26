function __start_ssh_agent -d "start SSH agent and make it globally available"
  set -g SSH_ENV $HOME/.ssh/environment
  ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
  chmod 600 $SSH_ENV
  . $SSH_ENV > /dev/null
  __add_private_keys
end
