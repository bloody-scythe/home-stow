# Defined in - @ line 1
function lsmnt --wraps='findmnt -r|cut -d " " -f-2|column -t' --description 'alias lsmnt findmnt -r|cut -d " " -f-2|column -t'
  findmnt -r|cut -d " " -f-2|column -t $argv;
end
