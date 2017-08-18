c() {
    cd $1
    ls -lha --color
    if [ -e .venv ]; then
         source $WORKON_HOME/`cat .venv`/bin/activate
    fi
}

gr() {
    if [ -f /usr/bin/ag ] ; then
        ag -ir $1 * $2
    else
        grep -Iir $1 * $2
    fi
}

f() {
    find . -iname "*$1*"
}

source ~/.env.sh
source ~/.alias.sh
source ~/.local.sh
