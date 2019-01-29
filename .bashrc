alias sod='/usr/bin/git --git-dir=$HOME/.sod/dotfiles.git/ --work-tree=$HOME'
sod config --local status.showUntrackedFiles no

# trap exit if not in subshell, because having your term disappear is annoying.

[ "$MUSE_PPID" == "" ] && export MUSE_PPID=$PPID
function exit() { [ "$MUSE_PPID" == "$PPID" ] && echo Try \'builtin exit\' || builtin exit; }

# configure prompt to show git info and to indicate depth of subshell

source $HOME/.git-prompt.sh
PROMPT_COMMAND='__git_ps1 "[$MUSE_DEPTH] [\w]" "\\\$ "'
PS1=$PROMPT_COMMAND
export MUSE_DEPTH=$(( MUSE_DEPTH + 1 ))


# activate vendor tools
#    source $HOME/.improvement/vendor/virtualenvwrapper/virtualenvwrapper.sh


# assertions
#    echo .bashrc asserts:
#    homeimprovement assert python3_is_installed

#source ~/.bashrc.posthook
#rm -rf ~/deleteme
#rm -rf ~/nul
#echo 73
#alias ll="ls -1AF"

#function descend {
#    local foobar=$PWD
#    while true; do
#        [ -e $PWD/$1 ] && echo $PWD && break
#        [ "$PWD" == '/' ] && break
#        cd ..
#    done
#    cd $foobar
#}    

#function url {
#    pushd ~/_bch/_utube
#    ./utube $*
#    popd
#}




