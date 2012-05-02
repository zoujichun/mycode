(add-to-list 'load-path "~/.emacs.d/auto-complete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/ac-dict")
(ac-config-default)

(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())

(setq org-hide-leading-stars t)
 (define-key global-map "\C-ca" 'org-agenda)
 (setq org-log-done 'time) 

(add-to-list 'load-path "~/.emacs.d/xmms2")
(require 'lagn)(setq make-backup-files nil)
(setq make-temp-file nil)
(setq delete-old-verson t)

(require 'evernote-mode)
(setq evernote-enml-formatter-command '("w3m" "-dump" "-I" "UTF8" "-O" "UTF8"))
(global-set-key "\C-cec" 'evernote-create-note)
(global-set-key "\C-ceo" 'evernote-open-note)
(global-set-key "\C-ces" 'evernote-search-notes)
(global-set-key "\C-ceS" 'evernote-do-saved-search)
(global-set-key "\C-cew" 'evernote-write-note)
(global-set-key "\C-cep" 'evernote-post-region)
(global-set-key "\C-ceb" 'evernote-browser)

(setq evernote-username "zoujichun3166@gmail.com")
(setq evernote-password-cache "19850317")

;(defvar evernote-enml-formatter-command nil
;   "*Formatter for xhtml")
;
;(defvar evernote-ruby-command "/usr/bin/ruby"
;   "*Path of the ruby command")
;
;(defvar evernote-password-cache nil
;   "*Non-nil means that password cache is enabled.
;   It is recommended to encrypt the file with EasyPG.")

