
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export PATH=/usr/local/bin:$PATH

alias topkek='top'
alias h4ckeD='#!/bin/bash
echo -e "\033[2J\033[?25l"; R=`tput lines` C=`tput cols`;: $[R--] ; while true 
do ( e=echo\ -e s=sleep j=$[RANDOM%C] d=$[RANDOM%R];for i in `eval $e {1..$R}`;
do c=`printf '\\\\0%o' $[RANDOM%57+33]` ### http://bruxy.regnet.cz/web/linux ###
$e "\033[$[i-1];${j}H\033[32m$c\033[$i;${j}H\033[37m"$c; $s 0.1;if [ $i -ge $d ]
then $e "\033[$[i-d];${j}H ";fi;done;for i in `eval $e {$[i-d]..$R}`; #[mat!rix]
do echo -e "\033[$i;${j}f ";$s 0.1;done)& sleep 0.05;done #(c) 2011 -- [ BruXy ]'

alias recurPull='~/Desktop/Git/scripts/gitRecursive.sh'
alias recurClean='~/Desktop/Git/scripts/gitCleanUp.sh'
alias recurSign='~/Desktop/Git/scripts/gitSign.sh'

alias photoEncrypt='~/Desktop/Git/scripts/photoEncrypt.sh'
alias photoDecrypt='~/Desktop/Git/scripts/photoDecrypt.sh'

export GPG_TTY=$(tty)
