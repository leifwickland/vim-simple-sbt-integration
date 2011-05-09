" All of this was stolen from http://code.google.com/p/simple-build-tool/wiki/IntegrationSupport

" This config expects that your sbt shell script is able to take a NOFORMAT
" argument to get sbt to stop pumping out escape codes for colors.
"
" For example:
"
" #! /bin/bash
" NOFORMAT="false"
" if [ "$1" == "NOFORMAT" ]; then
"    NOFORMAT="true"
"    shift
" fi 
" java -Dsbt.log.noformat=$NOFORMAT -Xmx512M -jar `dirname $0`/sbt-launch.jar "$@"

" Vim wouldn't match any lines until I told sbt to output no color with noformat=true
setlocal makeprg=sbt\ NOFORMAT\ compile

" Designed to match:
"[error] /home/src/scala/tweets-to-hbase/src/main/scala/play/tweetsToHbase.scala:27: "'=' expected but ';' found.
"[error]     try {
"[error] ^
"[error] one error found
"
set errorformat=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,\%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,\%-G%.%#
