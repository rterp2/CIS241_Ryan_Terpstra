lscpu | sed '5!d'
echo "======"
echo "Memory:"
echo "======"
echo "                  total           used            free            shared         buff/cache          available"
free -h|sed '2!d'|sed 's/Gi/ Gigabytes/g'
echo " "
echo "Disks:"
df -h|sed -E '/[0-9]+T/ !d'
echo " "
echo "Date:"
echo "====="
date "+%A, %e %B %Y.%r %Z" | sed 's/AM/a.m./g'| sed 's/EDT/Eastern Standard/g'


