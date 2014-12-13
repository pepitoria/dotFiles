
# MacPorts Installer addition on 2013-12-02_at_15:38:14: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\h:\w \u \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
#export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


# moves both spaces to space 2 and space 4 whe it should be the IDE
#alias ced="osascript -e 'tell application " . "System Events" + to key code 19 using control down'; osascript -e 'tell application " + "System Events" " + "to key code 21 using control down'"
# moves both spaces to space 2 and space 4 whe it should be the Browser
#alias bed="osascript -e 'tell application "System Events" to key code 20 using control down'; osascript -e 'tell application "System Events" to key code 23 using control down'"

alias ll="ls -plah"
alias ctx="cd /Users/jbeneytez/Work/ef/ctx/"
alias ln_cxTags_am="rm -r ~/Work/ef/ctx/asset-manager/vendor/cx-tags/dist && ln -sf ~/Work/ef/ctx/cx-tags/dist ~/Work/ef/ctx/asset-manager/vendor/cx-tags/dist"
alias ln_tBear_am="rm -r ~/Work/ef/ctx/asset-manager/vendor/turbo-bear/dist && ln -sf ~/Work/ef/ctx/tBear/build ~/Work/ef/ctx/asset-manager/vendor/turbo-bear/dist"
alias ln_flat_am="rm -r ~/Work/ef/ctx/asset-manager/vendor/cx-ui/dist && ln -sf ~/Work/ef/ctx/cx-ui/dist ~/Work/ef/ctx/asset-manager/vendor/cx-ui/dist"

alias ln_cxTags_cm="rm -r ~/Work/ef/ctx/course-manager/vendor/cx-tags/dist && ln -sf ~/Work/ef/ctx/cx-tags/dist ~/Work/ef/ctx/course-manager/vendor/cx-tags/dist"
alias ln_tBear_cm="rm -r ~/Work/ef/ctx/course-manager/vendor/turbo-bear/dist && ln -sf ~/Work/ef/ctx/tBear/build ~/Work/ef/ctx/course-manager/vendor/turbo-bear/dist"
alias ln_flat_cm="rm -r ~/Work/ef/ctx/course-manager/vendor/cx-ui/dist && ln -sf ~/Work/ef/ctx/cx-ui/dist ~/Work/ef/ctx/course-manager/vendor/cx-ui/dist"

alias cme="cd ~/Work/ef/ctx/course-manager/ && mvim src/ && grunt watch"
alias cm="cd ~/Work/ef/ctx/course-manager/ && sudo grunt devserver && mvim src/ && grunt watch"

alias sStart="sudo grunt devserver"
alias sStop="sudo grunt devserver:stop"
alias sRestart="sStop && sStart"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
