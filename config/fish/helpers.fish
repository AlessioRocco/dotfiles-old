function inc --description 'Increase the value of variable' --no-scope-shadowing
  set $argv[1] (expr $$argv[1] + 1)
end

function varclear --description 'Remove duplicates from environment variable'
  if test (count $argv) = 1
    set -l newvar
    set -l count 0
    for v in $$argv
      if contains -- $v $newvar
        inc count
          else
            set newvar $newvar $v
          end
      end
      set $argv $newvar
      test $count -gt 0
      and echo Removed $count duplicates from $argv
  else
    for a in $argv
      varclear $a
      end
  end
end
