function update_gem
  bundle update --source $argv
  git add Gemfile.lock
  git commit -m "'updates $argv gem'"
end
