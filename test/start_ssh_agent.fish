source $DIRNAME/../functions/__start_ssh_agent.fish
source $DIRNAME/../functions/__add_private_keys.fish
source $DIRNAME/../functions/__add_keys.fish
source $DIRNAME/../functions/__list_public_keys.fish
source $DIRNAME/../functions/__private_key_exists.fish
source $DIRNAME/../functions/__get_private_key.fish
set path $DIRNAME/$TESTNAME

function setup
  mkdir -p $path
  __start_ssh_agent
end

function teardown
  ssh-agent -k | sed 's/^echo/#echo/' | sed 's/unset/set -e/g' > $path/kill_ssh
  . $path/kill_ssh
  rm -rf $path
  rm $HOME/.ssh/environment
end

test "$TEST - check \$SSH_AGENT_PID is set"
  (
    set -q SSH_AGENT_PID
    echo $status
  ) = 0
end

test "$TEST - check \$SSH_AUTH_SOCK is set"
  (
    set -q SSH_AUTH_SOCK
    echo $status
  ) = 0
end
