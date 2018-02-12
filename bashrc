# Allow local customizations in the ~/.bashrc_local_before file
if [ -f ~/.bashrc_local_before ]; then
    source ~/.bashrc_local_before
fi

# Settings
source ~/.bash/settings.bash

# Automatically start SSH agent
source ~/.bash/autossh.bash

# Aliases
source ~/.shell/aliases.sh

# Prompt
source ~/.bash/prompt.bash

# Allow local customizations in the ~/.bashrc_local_after file
if [ -f ~/.bashrc_local_after ]; then
    source ~/.bashrc_local_after
fi
