#!/bin/bash
#
# Toplu bir kelime listesinden verili sayıda rastgele kelime seçer
# Sıfır optimizasyonla çalışmaktadır ve yazar bunu başkasından da öğrenmekten
# ayrıca hazzetmemektedir.
#
# Can Bican <can@bican.net> - 2012
#

file=$1 && shift
count=$1 && shift
outfile=$1 && shift

[ -z "$file" ] && file="trlist.txt"
[ -z "$count" ] && count=10
[ -z "$outfile" ] && outfile=`dirname $file`/${count}-`basename $file`

touch $outfile
rm -v $outfile
touch $outfile

total=`cat $file | grep -v '^#' | wc -l | awk '{print $1}'`
ct=`wc -l $outfile|awk '{print $1}'`
let ct=ct+1

while [ $ct -lt $count ]
do
  num=`perl -e "print int(rand($total)+1)"`
  ct=`wc -l $outfile|awk '{print $1}'`
  let ct=ct+1
  cat $file | grep -v '^#' | head -$num | tail -1 >> $outfile
done
