alias rtest="rake test"
alias rctest="COVERAGE=true bundle exec rake test"
alias rbtest="ruby -Itest"
alias i18n="rake i18n:js:export"
alias remigrate="bundle exec rake db:remigrate"

alias spuma="bundle exec puma -e development -b unix:///$HOME/code/shared/puma.sock"
