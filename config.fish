if status is-interactive
    # Commands to run in interactive sessions can go here
    echo -e "\e[35mWelcome to fish, the friendly interactive shell!" \n
    
    
end

function lfcd --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    # `command` is needed in case `lfcd` is aliased to `lf`.
    # Quotes will cause `cd` to not change directory if `lf` prints nothing to stdout due to an error.
    cd "$(command lf -print-last-dir $argv)"
end

alias lf "lfcd"