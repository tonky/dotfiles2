alias cr="cargo run --release"
alias crb="RUST_BACKTRACE=1 cargo run --release"
alias crd="cargo run"
alias ct="cargo test"
alias ctr="cargo test --release"
alias cwr="cargo watch -x 'run --release'"
alias d="docker"
alias dc="docker-compose"
alias mydd="dd bs=200M oflag=direct status=progress"
alias dp="docker ps"
alias dpa="docker ps -a"
alias ds="docker stop"
alias e="less"
alias g="git"
# alias l="ls -lha --color"
alias l="exa -1F -L 2 --group-directories-first -blh --git --octal-permissions --no-permissions"
alias mk="minikube"
alias kc="kubectl"
alias pg="pgrep -ifl"
alias v="nvim"
alias sv="sudo nvim"
alias s="sudo"

alias fd="fdfind"

alias b="buildah"

alias kga="kubectl get all"
alias sk="skaffold"
alias sdp="skaffold dev --port-forward"

alias dn="dotnet"
alias db="dotnet build"
alias dr="dotnet run"
alias da="dotnet add"

alias k3e="export KUBECONFIG=/etc/rancher/k3s/k3s.yaml"
alias k3="KUBECONFIG=/etc/rancher/k3s/k3s.yaml kubectl"
alias h3="KUBECONFIG=/etc/rancher/k3s/k3s.yaml helm"
alias hl="helm ls"
alias hda='helm delete -n default `helm ls -n default -q | tr "\n" " "`'

alias ka="kubectl -n adv"
alias init_k3s="sudo systemctl start k3s; sudo chmod +r /etc/rancher/k3s/k3s.yaml; export KUBECONFIG=/etc/rancher/k3s/k3s.yaml"

alias scs="sudo systemctl status"
alias scon="sudo systemctl start"
alias scoff="sudo systemctl stop"
alias scen="sudo systemctl enable"
alias scdis="sudo systemctl disable"
