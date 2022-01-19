export WORKON_HOME=~/.pyenvs
export PATH=$PATH:~/bin:~/go/bin:~/.cargo/bin:~/.local/bin:/usr/local/go/bin:/opt/mssql-tools/bin
export SCALA_HOME=/opt/scala/
# export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export RUSTFLAGS="-C link-arg=-fuse-ld=lld"
