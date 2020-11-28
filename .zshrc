HISTFILE=~/.zsh_history

HISTSIZE=10000
SAVEHIST=10000

setopt share_history
setopt append_history
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS

mmg() {
    docker run --rm -v $(pwd):/data docker.io/minlag/mermaid-cli:latest -i /data/$1 -o /data/$1.svg && firefox $1.svg
}

c() {
    cd $1
    source .env_local
    ls -lha --color
}

f() {
    find . -iname "*$1*"
}

dbpi() {
    image=("registry.localhost:7005/$1:dev")
    echo "building image: $image"

    docker build . -t "$image" && docker push "$image"

    echo "Done!"
}

bbpi() {
    image=("registry.localhost:7005/$1:dev")
    echo "building image with Buildah: $image"

    buildah bud --layers -t "$image" && buildah push "$image"

    echo "Done!"
}

source ~/.env.sh
source ~/.alias.sh
source ~/.os_local.sh
source ~/.local.sh

eval "$(starship init zsh)"
