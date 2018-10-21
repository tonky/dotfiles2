c() {
    cd $1
    ls -lha --color
}

f() {
    find . -iname "*$1*"
}

source ~/.env.sh
source ~/.alias.sh
source ~/.local.sh
