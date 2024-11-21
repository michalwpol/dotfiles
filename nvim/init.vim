syntax on
set termguicolors   " Włącza obsługę kolorów 24-bitowych
set background=dark " Dostosuj do preferowanego tła: dark lub light
colorscheme slate   " Ustawienia motywu; możesz zmienić na inny

" Ogólne ustawienia
set number            " Włącza numerowanie linii
set relativenumber    " Relatywne numerowanie linii
set cursorline        " Podświetla aktualną linię
set showcmd           " Wyświetla wprowadzane polecenia
set wildmenu          " Włącza podpowiedzi podczas wpisywania poleceń

" Edycja
set expandtab         " Włącza wstawianie spacji zamiast tabulatorów
set shiftwidth=4      " Ustawia liczbę spacji dla wcięć
set tabstop=4         " Liczba spacji wyświetlanych na tabulator
set smartindent       " Automatyczne inteligentne wcięcia
set clipboard=unnamedplus " Umożliwia współdzielenie schowka z systemowym

" Wyszukiwanie
set ignorecase        " Ignoruje wielkość liter podczas wyszukiwania
set smartcase         " Dopasowuje wielkość liter, jeśli występują w zapytaniu
set hlsearch          " Podświetla wyniki wyszukiwania
set incsearch         " Włącza wyszukiwanie przy wpisywaniu

" Bufory i okna
set splitright        " Nowe pionowe okna po prawej stronie
set splitbelow        " Nowe poziome okna poniżej
set hidden            " Umożliwia przełączanie między niezamkniętymi plikami

" Szybkie zapisywanie i wychodzenie
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Szybkie przemieszczanie się między oknami
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
