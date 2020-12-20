# qmake
export PATH="/usr/local/opt/qt/bin:$PATH"

# android
export ANDROID_HOME=/usr/local/share/android-sdk
#export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH="/Users/y0n3uchy/Library/Android/sdk/platform-tools:$PATH"

# brewfile
export HOMEBREW_BREWFILE=~/.brewfile
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"

# wasme
export PATH="$HOME/.wasme/bin:$PATH"

# llvm
export PATH="/usr/local/opt/llvm/bin:$PATH"

if test -d /opt/riscv/bin
    export PATH="/opt/riscv/bin:$PATH"
end 
