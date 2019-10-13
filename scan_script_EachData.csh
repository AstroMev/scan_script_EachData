#!/usr/bin/env tcsh -f

# 任意スクリプトを任意データ群に掛ける

if ($#argv < 2) then
    echo "usage : $0 [1:script] [2:data1] [3:data2] ..."
    exit
endif

set SOFT = $1
set ndata = 0

@ ndata = $#argv - 1
echo "number of files : $ndata"

if (! -e $SOFT) then
    echo "$1 does not exist!"
    exit
else if (! -x $SOFT) then
    echo "Could not execute $1"
    exit
endif

set i = 2
while ( $i < $ndata + 2 )
    set data = $argv[$i]

    if (-e $data) then
    echo "*** ${data} process ***"
    $SOFT $data
    else
    echo "${data} does not exist!"
    endif

    @ i++
end
