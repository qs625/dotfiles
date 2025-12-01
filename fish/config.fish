set -g fish_greeting

set -gx RUSTUP_DIST_SERVER "https://rsproxy.cn"
set -gx RUSTUP_UPDATE_ROOT "https://rsproxy.cn/rustup"

set -gx GOPATH $HOME/go
set -gx GOROOT $HOME/.go

set -gx GOPRIVATE "*.byted.org,*.everphoto.cn,git.smartisan.com.byted.org,*.everphoto.cn,git.smartisan.com"
set -gx GOPROXY "https://go-mod-proxy.byted.org|https://goproxy.byted.org|direct;GOSUMDB=sum.golang.google.cn"

set -gx PROJECTS_DIR $HOME/Projects

fish_add_path $HOME/.local/bin #uv
fish_add_path $GOPATH/bin

if status is-interactive
    starship init fish | source
    # Commands to run in interactive sessions can go here
end

# g-install: do NOT edit, see https://github.com/stefanmaric/g
source $HOME/.venv/bin/activate.fish
