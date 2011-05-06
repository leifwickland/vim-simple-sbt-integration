" All of this was stolen from http://code.google.com/p/simple-build-tool/wiki/IntegrationSupport

" Vim wouldn't match any lines until I told sbt to output no color with noformat=true
setlocal makeprg=sbt\ -Dsbt.log.noformat=true\ compile

" Designed to match:
"[error] /home/src/scala/tweets-to-hbase/src/main/scala/play/tweetsToHbase.scala:27: "'=' expected but ';' found.
"[error]     try {
"[error] ^
"[error] one error found
"
set efm=%E\ %#[error]\ %f:%l:\ %m,%C\ %#[error]\ %p^,%-C%.%#,%Z,
       \%W\ %#[warn]\ %f:%l:\ %m,%C\ %#[warn]\ %p^,%-C%.%#,%Z,
       \%-G%.%#
