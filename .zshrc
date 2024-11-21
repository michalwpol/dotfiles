# .zshrc - Podstawowa konfiguracja dla Zsh

# Ustawienia środowiska
export EDITOR=nvim      # Domyślny edytor
export VISUAL=nvim      
export LANG=pl_PL.UTF-8 # Ustawienia językowe
export MANPAGER='nvim +Man!'


# Historia poleceń
HISTFILE=~/.zsh_history
HISTSIZE=1000          # Liczba przechowywanych poleceń w sesji
SAVEHIST=2000          # Liczba przechowywanych poleceń w pliku
setopt HIST_IGNORE_DUPS # Ignoruj duplikaty w historii
setopt SHARE_HISTORY    # Udostępniaj historię między sesjami

# Wygląd prompta
autoload -U promptinit && promptinit
PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '
PROMPT="%B%F{10}%n%f%b%B%F{14}[%f%b%B%F{14}%m%f%b%B%F{14}]%f%b%B%F{14}:%f%b %B%F{11}%d%f%b
%B%F{11}>> %f%b"

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/wikiman/widgets/widget.zsh

autoload -U colors && colors


# Ułatwienia w terminalu
setopt AUTO_CD           # Automatyczne cd przy podaniu ścieżki
setopt AUTO_PUSHD        # Automatyczne dodawanie katalogów do stosu pushd
setopt PUSHD_SILENT      # Ukryj wyjście pushd
setopt CORRECT           # Popraw literówki w poleceniach
setopt NOCLOBBER         # Blokuj nadpisywanie plików przy użyciu ">"

# Załącz prywatne aliasy
if [[ -f ~/.private/prywatne_aliasy ]]; then
    source ~/.private/prywatne_aliasy
fi

# Aliasy podstawowe
alias ll='ls -lah'       # Szczegółowy widok plików
alias la='ls -A'         # Ukryte pliki
alias l='ls -CF'         # Widok katalogów
alias vim='nvim'         # Domyślne uruchamianie nvim

# Aliasy dla Git
alias gcom='git commit -m "Kolejne zmiany"'
alias gadd='git add .'
alias gpush='git push'

# Kolory dla ls
if command -v dircolors &>/dev/null; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
fi

# Wtyczki i autouzupełnianie (opcjonalnie)
autoload -U compinit && compinit
autoload -U bashcompinit && bashcompinit

# Ustawienia terminala
export TERM=xterm-256color
export LS_COLORS="di=34:fi=0:ln=36:pi=33:so=35:bd=33;1:cd=33;1:or=31;1:mi=31;1"

# Ścieżka użytkownika
export PATH=$HOME/bin:/usr/local/bin:$PATH
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

# Mapowanie klawiszy

bindkey "^[[3~" delete-char
bindkey "^[[2~" overwrite-mode
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey '^[[1;5D' backward-word  # Ctrl+← - przesuń w lewo o jedno słowo
bindkey '^[[1;5C' forward-word   # Ctrl+→ - przesuń w prawo o jedno słowo

# Wybierz z historii i wstaw polecenie
fzf-history-widget() {
  BUFFER=$(history | fzf --reverse | sed 's/ *[0-9]* *//')
  CURSOR=$#BUFFER
}
zle -N fzf-history-widget
bindkey '^R' fzf-history-widget  # Ctrl+R wywołuje wybór z historii



