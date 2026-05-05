# Auto complete helper
bind 'set completion-ignore-case on'

# Detect container
if [ -n "$DISTROBOX_ENTER_PATH" ] || [ -f /run/.containerenv ]; then
    CONTAINER_NAME=$(basename "${CONTAINER_ID:-container}")
    export PS1="\[\e[1;36m\][\u@\h ⬢ ($CONTAINER_NAME)]:\[\e[38;5;244m\]\w\[\e[0m\] \$ "

    if [[ -n "$VTE_VERSION" ]]; then
        printf "\e]777;container;push;%s\e\\" "$CONTAINER_NAME"
    fi
fi

alias edit='gnome-text-editor'
alias py-env='source ~/.env/bin/activate'
alias update='sudo -- sh -c "apt update && apt upgrade"'
alias clean='sudo -- sh -c "apt clean && apt autoclean && apt autopurge"'
alias search='sudo apt search'
alias install='sudo apt install'
alias remove='sudo apt purge --remove'
alias nvidia-run='__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
