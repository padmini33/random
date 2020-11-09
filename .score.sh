if [ -a .hidden.txt ]
  then sudo rm .hidden.txt
  fi
#R CMD BATCH prog.R > .hidden.txt
Rscript prog.R > .hidden.txt
FS_SCORE=0 
if [ $(grep -e "runif" prog.R | wc -l) -gt 0 ]&&[ $(grep -e "round" prog.R | wc -l) -gt 0 ]&&[ $(grep -e 'V' prog.R| wc -l) -gt 0 ]&&[ $(grep -e '0.50' prog.R| wc -l) -gt 0 ]
  then FS_SCORE=$((FS_SCORE+ 100))
fi
echo "FS_SCORE:$FS_SCORE%"






