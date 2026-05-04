# Auto complete helper
bind 'set completion-ignore-case on'

# Detect container (distrobox)
if [ -n "$DISTROBOX_ENTER_PATH" ]; then
    CONTAINER_NAME=$(basename "$CONTAINER_ID")
    export PS1="\[\e[1;31m\][\u@\h \W ($CONTAINER_NAME)]\[\e[0m\]$ "
fi

alias edit='gnome-text-editor'
alias py-env='source ~/.env/bin/activate'
alias update='sudo -- sh -c "apt update && apt upgrade"'
alias clean='sudo -- sh -c "apt clean && apt autoclean && apt autopurge"'
alias search='sudo apt search'
alias install='sudo apt install'
alias remove='sudo apt purge --remove'
alias nvidia-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
