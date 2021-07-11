# Defined in - @ line 1
function ll --wraps='ll -h' --wraps='ls -lh' --description 'alias ll ls -lh'
  ls -lh $argv;
end
