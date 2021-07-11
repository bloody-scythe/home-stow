# Defined in - @ line 1
function lla --wraps='ls -al' --description 'alias lla ls -al'
  ls -al $argv;
end
