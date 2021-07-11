# Defined in - @ line 1
function ,f --wraps='sudo $EDITOR /etc/fstab' --description 'alias ,f sudo $EDITOR /etc/fstab'
  sudo $EDITOR /etc/fstab $argv;
end
