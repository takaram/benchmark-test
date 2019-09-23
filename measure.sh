#!/bin/bash
set -eu
export LANG=C
export PYTHONIOENCODING=utf-8

REPEAT=3

command="$1"
shift
name="$1"

case "$command" in
    ruby*) ext="rb";;
    py*)   ext="py";;
    node)  ext="js";;
    perl)  ext="pl";;
    php)   ext="php";;
esac

file="${name}/${name}.${ext}"

sum=0
for i in $(seq $REPEAT); do set +e
    time="$((time $command $file >/dev/null) 2>&1)"
    t_user=$(echo "$time" | grep user | perl -pe 's/.+(\d+)m(\d+\.\d+)s/$1*60+$2/e')
    t_sys=$(echo "$time" | grep sys | perl -pe 's/.+(\d+)m(\d+\.\d+)s/$1*60+$2/e')

    # echo "$time"
    sum=$(bc <<< "$sum + $t_user + $t_sys")
done

# average
bc <<< "scale=4;$sum / $REPEAT"
