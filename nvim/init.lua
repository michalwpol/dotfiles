-- Załaduj konfigurację wtyczek
require("plugins")

-- Podstawowe ustawienia wizualne
vim.opt.syntax = "on"
vim.opt.termguicolors = true       -- Włącza obsługę kolorów 24-bitowych
vim.opt.background = "dark"        -- Ustaw preferowane tło: dark lub light
vim.cmd("colorscheme tokyonight-night")       -- Ustaw motyw kolorystyczny

-- Ogólne ustawienia
vim.opt.number = true              -- Włącza numerowanie linii
vim.opt.relativenumber = true      -- Relatywne numerowanie linii
vim.opt.cursorline = true          -- Podświetla aktualną linię
vim.opt.showcmd = true             -- Wyświetla wprowadzane polecenia
vim.opt.wildmenu = true            -- Włącza podpowiedzi w trybie poleceń

-- Ustawienia edycji
vim.opt.expandtab = true           -- Wstawia spacje zamiast tabulatorów
vim.opt.shiftwidth = 4             -- Liczba spacji dla wcięć
vim.opt.tabstop = 4                -- Liczba spacji wyświetlanych na tabulator
vim.opt.smartindent = true         -- Automatyczne inteligentne wcięcia
vim.opt.clipboard = "unnamedplus"  -- Udostępnianie schowka z systemowym

-- Wyszukiwanie
vim.opt.ignorecase = true          -- Ignoruje wielkość liter przy wyszukiwaniu
vim.opt.smartcase = true           -- Dopasowuje wielkość liter do zapytania
vim.opt.hlsearch = true            -- Podświetla wyniki wyszukiwania
vim.opt.incsearch = true           -- Włącza wyszukiwanie przy wpisywaniu

-- Zarządzanie buforami i oknami
vim.opt.splitright = true          -- Nowe okna pionowe po prawej stronie
vim.opt.splitbelow = true          -- Nowe okna poziome poniżej
vim.opt.hidden = true              -- Przełączanie między otwartymi plikami bez zamykania

-- Mapowanie klawiszy
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Szybkie zapisywanie i wychodzenie
map("n", "<leader>w", ":w<CR>", opts) -- <leader>w zapisuje plik
map("n", "<leader>q", ":q<CR>", opts) -- <leader>q zamyka plik

-- Przemieszczanie się między oknami
map("n", "<C-h>", "<C-w>h", opts) -- Ctrl + h przejście do okna po lewej
map("n", "<C-j>", "<C-w>j", opts) -- Ctrl + j przejście do okna poniżej
map("n", "<C-k>", "<C-w>k", opts) -- Ctrl + k przejście do okna powyżej
map("n", "<C-l>", "<C-w>l", opts) -- Ctrl + l przejście do okna po prawej

