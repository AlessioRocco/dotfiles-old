# Lock Mac OSX Session
alias lockscreen "/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
# Start Mac OSX screensaver
alias screensaver "open -a /System/Library/Frameworks/ScreenSaver.framework//Versions/A/Resources/ScreenSaverEngine.app"

# Ruby aliases
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle open"

# Console aliases
alias g "git"
alias gd "git diff"
alias gs "git status"
alias l "ls"
alias la "ls -la"
alias ll "ls -l"

alias eh="sudo vim /etc/hosts"
alias pryr="pry -r ./config/environment.rb"
alias ms="mongod run --config /usr/local/etc/mongod.conf"
alias redis="redis-server /usr/local/etc/redis.conf"
alias p="~/.projects/open"
alias reload="exec $SHELL"
