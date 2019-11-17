# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ ${zsh_loaded_plugins[-1]} != */zsh-string-lib && -z ${fpath[(r)${0:h}]} ]]
then
    fpath+=( "${0:h}" )
fi

zmodload zsh/system 2>/dev/null

autoload -Uz \
    @str-parse-json \
    @str-read-all
