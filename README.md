# meine neovim config 🚀

hier ist meine neovim-configuration für frontend, backend und datenbanken.

## meine features ✨

- **autocomplete**  
  mit `nvim-cmp` bekommt man suggestions, während man tippt. du kannst mit `tab` suggestions durchgehen, mit `shift + tab` zurück und mit `enter` den vorschlag annehmen. 📝

- **lsp (language server protocol)**  
  ich habe lsp für viele programmiersprachen eingestellt, damit man definitions anschauen kann und function-docstrings lesen kann :)

**lps:**
  - rust (rust_analyzer) 
  - typescript und javascript (ts_ls) 
  - vue (volar) 
  - angular (angularls) 
  - tailwind css (tailwindcss) 
  - json (jsonls) 
  - sql (sqlls) 
  - html (html) 
  - css (cssls) 
  - java (jdtls) 
  - c# (omnisharp) 
  - python (pylsp) 
  - kotlin (kotlin_language_server) 
  - lua (lua_ls) 

- **automatic codeformatting**  
  dein code wird immer on save formatiert. dafür benutze ich prettier und eslint

- **colorscheme**  
  ich benutze **nyoom-engineering/oxocarbon.nvim**, damit neovim gut aussieht

## installation von meiner config ⚙️

1. **neovim installieren:**  
   wenn du neovim noch nicht hast, lad es dir von der [neovim webseite](https://neovim.io/) herunter 🌐  
   für macos (wie bei mir) geht es mit **brew install neovim**

3. **repo klonen:**  
   klone einfach dieses repo und lade die configdateien in dein neovim-verzeichnis. 📥  
   das wichtigste ist, dass die configdateien im rootdirectory liegen, also bei mir zum beispiel `~/.config/nvim`

5. **dependencies:**  
  wichtig ist, dass du die nötigen pluginmanager `packer.nvim` oder `lazy.nvim` installiert hast. 🔧
