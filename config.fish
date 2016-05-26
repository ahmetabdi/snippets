# Path to Oh My Fish install.
set -gx OMF_PATH "/Users/ahmet/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/ahmet/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Unix
alias ll="ls -al"
alias mkdir="mkdir -p"

set -x PYTHONPATH '/usr/local/lib/python2.7/site-packages'
set -x ANDROID_HOME '/usr/local/opt/android-sdk'

# Swift
alias swift='xcrun swift'
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app/'

# Rails
alias drop='rake db:drop'
alias create='rake db:create'
alias seed='rake db:seed'
alias migrate='rake db:migrate'
#alias migrate='rake db:migrate db:rollback && rake db:migrate'
alias reset='rake db:reset'
alias console='rails c'
alias rollback='rake db:rollback'
alias rs='rails s'
alias rc='rails c'
alias rn='rails new'
alias rollback='rake db:rollback STEP=1'
alias s='bundle exec rspec spec'
alias path='echo $PATH | tr -s ":" "\n"'
alias spec='bundle exec rspec spec'

#Phoenix
alias phoenixs='mix phoenix.new'
alias phoenix='iex -S mix phoenix.server'

#Ruby Motion
alias r='rake'
alias rplus='rake device_name="iPhone 6 Plus"'

# Editor
alias subl='open -a /Applications/Sublime\ Text.app'
alias s='open -a /Applications/Sublime\ Text.app'
alias rubymine='open -a /Applications/RubyMine.app/'
alias gotoatomdir='cd /Users/ahmet/.atom'
alias sublimeconfig='cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages'

# Git
alias ga='git add -A'
alias gc='git commit -m'
alias gca='git add -A; git commit -m'
alias gs='git status'
alias gd='git diff'
alias gr='git revert'
alias gpom='git push origin master'
alias gphm='git push heroku master'
alias gfeature='git checkout -b feature/'
alias gbug='git checkout -b bug/'
alias gp='git pull'
alias sync='git fetch upstream;git merge upstream/master'
alias wipeit='git reset --hard'
alias master='git checkout master'
alias staging='git checkout staging'
alias gpr='git pull --rebase'

# MYSQL
alias mysqlr='mysql.server restart'
alias gotodb='cd /usr/local/var/mysql'

# OTHER
alias config='vi ~/.bash_profile'
alias source_config='source ~/.bash_profile'
alias l='ls -la -G'
alias ls='ls -la -G'
alias grep='grep --color=auto'
alias env='env | sort'
alias c='clear'
alias p='cd ~/Projects'
alias mp='cd ~/MyProjects'
alias jek='jekyll serve'
alias http='http-server'
alias powrestart='touch ~/.pow/restart.txt'
alias be='bundle exec'
alias b='bundle install'
alias goelastic='elasticsearch -f -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias prodcompile='RAILS_ENV=production bundle exec rake assets:clean;RAILS_ENV=production bundle exec rake assets:precompile'
alias tc='cd /Users/ahmet/Projects/ios/titlechallenge'
alias d='cd /Users/ahmet/desktop'
alias delayed_job='script/delayed_job stop;script/delayed_job start'
alias cd..='cd ..'
alias ffs='bundle exec rake spec:db:fixtures:load'
#alias wtf='ps aux | grep rails;ps aux | grep java; ps aux | grep puma; ps aux | grep foreman; ps aux | grep resque;'
alias g='bundle exec guard'
alias a=ag

# Foreman
alias proc='foreman start'
alias fr='foreman run bundle exec'
alias fs='foreman start'

#FUNCTIONS

function wtf
  ps aux | egrep -wi --color 'rails|java|puma|foreman|resque|unicorn'
end

# Compile C++ File and create an output file with the same name
function cpp
  C++ $argv[1].cpp -o $argv[1]
end
