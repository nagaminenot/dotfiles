set PATH /home/nagamine/anaconda3/bin $PATH

#[ git ]
alias g='git'

#[ ghq ]
alias gg='cd (ghq root)/(ghq list | peco)'
alias gh='hub browse (ghq list | peco | cut -d "/" -f 2,3)'
