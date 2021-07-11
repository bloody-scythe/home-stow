# Defined in - @ line 1
function fstab --wraps='vim /etc/fstab' --wraps='$EDITOR /etc/fstab' --wraps='sudo $EDITOR /etc/fstab' --description 'alias fstab sudo $EDITOR /etc/fstab'
  sudo $EDITOR /etc/fstab $argv;
end
