[![Build Status][travis-badge]][travis-link]
[![Slack Room][slack-badge]][slack-link]

# fish-ssh-agent

Autostart ssh-agent function for fish.

## Install

With [Fisherman](https://github.com/fisherman/fisherman):

```bash
fisher i dgjnpr/ssh-agent
```

## Description

Automatically starts up `ssh-agent` if it's not already running, adding all identities found under `~/.ssh`.

## Usage

```bash
fisher i dgjnpr/fish-ssh-agent
```

### Test

Install [`fishtape`](https://github.com/fisherman/fishtape) and optionally a [`tap` converter](https://github.com/gummesson/tap-min):

```bash
fishtape test/add_keys.fish
```

[travis-link]: https://travis-ci.org/dgjnpr/fish-ssh-agent
[travis-badge]: https://img.shields.io/travis/dgjnpr/fish-ssh-agent.svg?style=flat-square
[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://img.shields.io/badge/slack-join%20the%20chat-00B9FF.svg?style=flat-square
[Fisherman]: https://github.com/fisherman/fisherman
