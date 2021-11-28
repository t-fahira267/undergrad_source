#!/bin/sh

for i in {1..5}
do
  airport -s > tmp$i.txt
  sed -e '1d' tmp$i.txt > tmp2$i.txt
  cat tmp2$i.txt | tr -s ' ' > ./tmp3$i.txt
  sed 's/^[ \t]*//' tmp3$i.txt > tmp4$i.txt
  cut -f 1,3 -d " " tmp4$i.txt > result$i.txt
  rm tmp$i.txt tmp2$i.txt tmp3$i.txt tmp4$i.txt
  sleep 1s
done