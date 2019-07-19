#/bin/bash

grep -En '\\s+ect' chapters/*.tex | sed 's/\\/\\\\/g' | \
  awk -F: '{print $1 " " $2 " " $3}' | \
  while read file line head
  do
    num_all_chars=$(echo -E "$head" | wc -m)
    num_zh_chars=$(echo -E "$head" | sed 's/]//g;s:[\\ \#0-9[/_<>A-Za-z.{}]::g' | wc -m)
    num_alph_chars=$(($num_all_chars - $num_zh_chars))
    num_disp_chars=$(($num_alph_chars + 2 * $num_zh_chars))
    num_emp_chars=$((82 - $num_disp_chars))

    nhead="$(printf "%${num_emp_chars}s" '')$(echo $head | sed 's/\\/\\\\/g')"
    sed -i $line's:^.*$:'"$nhead"':' $file
  done
