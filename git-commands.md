# General

## clone a repo
git clone git@github.com:USERNAME/REPOSITORY_NAME.git

## get remote changes
git fetch && git pull

## push changes to remote
git add . && git commit -m "commit message" && git push

# Tags

## add original repository as upstream
git remote add upstream FORK_ORIGIN_URL

## fetch all tags
git fetch upstream --tags

## list all tags
git tag

## create branch from tag
git switch -c NEW_BRANCH_NAME TAG_NAME

## push new branch and set local branch to track it
git push -u origin BRANCH_NAME

# Setting up SSH

## Linux

1) generate a new key, change username to github username
- ssh-keygen -t ed25519 -C "username@github"

2) install KDE SSH password prompt
- sudo pacman -S ksshaskpass

3) tell SSH which graphical password promt to use
- set -gx SSH_ASKPASS /usr/bin/ksshaskpass

4) tell SSH where the user SSH agent socket is
- set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

5) enable and start the SSH agent service
- systemctl --user enable --now ssh-agent.service

6) add key to agent
- ssh-add ~/.ssh/id_ed25519

7) copy full value to Github -> Setting -> SSH and GPG keys -> New SSH key -> Key field
- cat ~/.ssh/id_ed25519.pub

8) test the connection
- ssh -T git@github.com

## Windows (via Admin PowerShell)

1) generate a new key, change username to github username
- ssh-keygen -t ed25519 -C "username@github"

2) configure the SSH agent service to start automatically
- Get-Service ssh-agent | Set-Service -StartupType Automatic

3) start the SSH agent service
- Start-Service ssh-agent

4) verify that the SSH agent service is running
- Get-Service ssh-agent

5) add key to agent
- ssh-add $env:USERPROFILE\.ssh\id_ed25519

6) copy full value to Github -> Setting -> SSH and GPG keys -> New SSH key -> Key field
- cat $env:USERPROFILE\.ssh\id_ed25519.pub

7) test the connection
- ssh -T git@github.com

