# Defined in - @ line 1
function yt-dl --wraps='youtube-dl -f bestvideo+bestaudio' --wraps=youtube-dl --description 'alias yt-dl youtube-dl'
  youtube-dl  $argv;
end
