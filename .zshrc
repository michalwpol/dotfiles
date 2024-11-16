# Created by newuser for 5.9

# .zshrc - Podstawowa konfiguracja dla Zsh

# Ustawienia środowiska
export EDITOR=vim       # Domyślny edytor
export LANG=pl_PL.UTF-8 # Ustawienia językowe

# Historia poleceń
HISTFILE=~/.zsh_history
HISTSIZE=1000          # Liczba przechowywanych poleceń w sesji
SAVEHIST=2000          # Liczba przechowywanych poleceń w pliku
setopt HIST_IGNORE_DUPS # Ignoruj duplikaty w historii
setopt SHARE_HISTORY    # Udostępniaj historię między sesjami

# Wygląd prompta
autoload -U promptinit && promptinit
#PROMPT='%F{green}%n@%m%f %F{blue}%~%f %# '
PROMPT="%B%F{10}%n%f%b%B%F{14}[%f%b%B%F{14}%m%f%b%B%F{14}]%f%b%B%F{14}:%f%b %B%F{11}%d%f%b
%B%F{11}>> %f%b"


# Ułatwienia w terminalu
setopt AUTO_CD           # Automatyczne cd przy podaniu ścieżki
setopt AUTO_PUSHD        # Automatyczne dodawanie katalogów do stosu pushd
setopt PUSHD_SILENT      # Ukryj wyjście pushd
setopt CORRECT           # Popraw literówki w poleceniach
setopt NOCLOBBER         # Blokuj nadpisywanie plików przy użyciu ">"

# Aliasów podstawowych
alias ll='ls -lah'       # Szczegółowy widok plików
alias la='ls -A'         # Ukryte pliki
alias l='ls -CF'         # Widok katalogów

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



