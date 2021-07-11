# Defined in - @ line 1
function reboot --wraps='sudo reboot now' --description 'alias reboot sudo reboot now'
  sudo reboot now $argv;
end
