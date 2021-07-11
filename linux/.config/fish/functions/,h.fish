# Defined in - @ line 1
function ,h --wraps='sudo $EDITOR /etc/hosts' --description 'alias ,h sudo $EDITOR /etc/hosts'
  sudo $EDITOR /etc/hosts $argv;
end
