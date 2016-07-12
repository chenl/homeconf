# -*- mode: sh -*-

function vless() {
    local display=$DISPLAY
    local rc
    unset DISPALY
    /usr/share/vim/vim*/macros/less.sh "$@"
    rc=$?
    export DISPLAY=$display
    return $rc
}

function cd(){
   local E="s:\.\.\.:../..:g"
   builtin cd $(sed -e "$E" -e "$E" -e "$E" <<< "$*")
}

export TERM_THEME=dark
