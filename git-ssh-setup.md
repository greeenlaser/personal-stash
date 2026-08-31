# ssh for git + github

## Linux

generate a new key, change username to github username

`ssh-keygen -t ed25519 -C "username@github"`

get the ???

`sudo pacman -S ksshaskpass`

???

`set -gx SSH_ASKPASS /usr/bin/ksshaskpass`

???

`set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket`

enable the service

`systemctl --user enable --now ssh-agent.service`

add key to agent

`ssh-add ~/.ssh/id_ed25519`

copy full value to github ssh and gpg keys -> new ssh key -> key field

`cat ~/.ssh/id_ed25519.pub`

test the connection

`ssh -T git@github.com`

## Windows (via Admin PowerShell)

generate a new key, change username to github username

`ssh-keygen -t ed25519 -C "username@github"`

set agent startup type to automatic

`Get-Service ssh-agent | Set-Service -StartupType Automatic`

start the service

`Start-Service ssh-agent`

check if its running

`Get-Service ssh-agent`

add key to agent

`ssh-add $env:USERPROFILE\.ssh\id_ed25519`

copy full value to github ssh and gpg keys -> new ssh key -> key field

`cat $env:USERPROFILE\.ssh\id_ed25519.pub`

test the connection

`ssh -T git@github.com`
