;; Устанавливаем кодировки по умолчанию для файлов, буферов и обмена с внешними программами
;; (setq default-buffer-file-coding-system 'koi8-r)
;; (prefer-coding-system 'koi8-r)
;; (define-coding-system-alias 'koi8-u 'koi8-r)
;; (set-terminal-coding-system 'koi8-r)
;; (set-keyboard-coding-system 'koi8-r)
;; (setq-default coding-system-for-read 'koi8-r)
;; (setq-default coding-system-for-write 'koi8-r)
;; (setq selection-coding-system 'koi8-r)
;; (setq default-process-coding-system 'koi8-r)
;; (put-charset-property 'cyrillic-iso8859-5 'preferred-coding-system 'koi8-r)

;; Поддержка русской кодировки MS Windows
;; (codepage-setup 1251)
;; (define-coding-system-alias 'windows-1251 'cp1251)
;; (define-coding-system-alias 'win-1251 'cp1251)
;; (set-input-mode nil nil 'We-will-use-eighth-bit-of-input-byte)


;;
;; General look & feel setup
;;
(set-cursor-color "lime green" )

;; set library search path
(setq load-path
      (cons "~/.emacs.d/lisp" load-path))

;; use cperl by default
(setq auto-mode-alist
      (cons '("\\.\\([pP]\\([Llm]\\|erl\\|od\\)\\|al\\)\\'" . cperl-mode)
	    auto-mode-alist))
(setq interpreter-mode-alist
      (cons '("perl" . cperl-mode)
	    auto-mode-alist))

;; iswitchb customizations
;; (require 'edmacro)
;; (defun iswitchb-local-keys ()
;;   (mapc (lambda (K)
;; 	       (let* ((key (car K)) (fun (cdr K)))
;; 		 (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
;; 	'(("<right>" . iswitchb-next-match)
;; 	  ("<left>" . iswitchb-prev-match)
;; 	  ("<up>" . ignore)
;; 	  ("<down>" . ignore)
;; 	  )))
;; (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)

;; cc-mode customizations
(add-hook 'c++-mode-hook '(lambda () (c-set-offset 'innamespace 0)))

;; colors
(require 'color-theme)
(require 'color-theme-blue-ink)
(require 'color-theme-solarized)
(color-theme-initialize)
;;(color-theme-solarized 'light)
(color-theme-blue-ink)

;;
(require 'uniquify)
;; (require 'textile-mode)

(require 'org)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; buffer cycling
(require 'swbuff)
(require 'swbuff-x)
(global-set-key [(control tab)] 'swbuff-switch-to-next-buffer)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-compression-mode t)
 '(auto-image-file-mode t)
 '(c-default-style (quote ((c-mode . "bsd") (c++-mode . "bsd") (java-mode . "java") (awk-mode . "awk") (other . "gnu"))))
 '(calendar-week-start-day 1)
 '(comment-style (quote extra-line))
 '(compilation-window-height 16)
 '(delete-by-moving-to-trash t)
 '(fill-column 78)
 '(ibuffer-saved-filter-groups (quote (("common" ("dired" (used-mode . dired-mode))))))
 '(ibuffer-saved-filters (quote (("gnus" ((or (mode . message-mode) (mode . mail-mode) (mode . gnus-group-mode) (mode . gnus-summary-mode) (mode . gnus-article-mode)))) ("programming" ((or (mode . emacs-lisp-mode) (mode . cperl-mode) (mode . c-mode) (mode . java-mode) (mode . idl-mode) (mode . lisp-mode)))))))
 '(icomplete-mode t)
 '(ido-mode t nil (ido))
 '(mouse-wheel-mode t)
 '(org-agenda-files (quote ("~/org/" "~/proj/proj.org")))
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-span (quote fortnight))
 '(org-archive-location "::* Archived Tasks")
 '(org-capture-templates (quote (("j" "Journal" entry (file+datetree "~/org/journal.org") "* %U
  %i%?
  %a") ("e" "Future event" entry (file+headline "~/org/notes.org" "Event") "* %?
  %^t") ("t" "TODO entry" entry (file+headline "~/org/notes.org" "Tasks") "* TODO %?
  %t
  %a"))))
 '(org-completion-use-ido t)
 '(org-default-notes-file "~/org/notes.org")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-log-done (quote time))
 '(org-log-into-drawer t)
 '(org-modules (quote (org-bbdb org-bibtex org-docview org-gnus org-habit org-id org-info org-irc org-mhe org-rmail org-w3m org-bookmark org-bullets org-eshell org-expiry org-git-link org-man)))
 '(org-tag-alist (quote (("@home" . 104) ("@computer" . 99) ("@workspace" . 119) ("sdp" . 115) ("dev" . 100) ("electro" . 101) ("health" . 72))))
 '(org-todo-keyword-faces (quote (("INPROGRESS" . match) ("CANCELLED" . font-lock-function-name-face) ("PENDING" . "font-lock-constant-face"))))
 '(org-todo-keywords (quote ((sequence "TODO" "INPROGRESS(i!)" "|" "DONE(d!)") (sequence "|" "CANCELLED(c@!)") (sequence "PENDING(p@/!)" "|"))))
 '(scroll-conservatively 50)
 '(swbuff-clear-delay-ends-switching t)
 '(tool-bar-mode nil)
 '(tramp-default-method "ssh")
 '(transient-mark-mode t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

;; (custom-set-faces
;;   ;; custom-set-faces was added by Custom.
;;   ;; If you edit it by hand, you could mess it up, so be careful.
;;   ;; Your init file should contain only one such instance.
;;   ;; If there is more than one, they won't work right.
;;  '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 100 :width normal :foundry "unknown" :family "DejaVu Sans Mono"))))
;;  '(diff-added ((t (:inherit diff-changed :foreground "darkgreen"))))
;;  '(diff-removed ((t (:inherit diff-changed :foreground "darkred"))))
;;  '(escape-glyph ((t (:inverse-video t))))
;;  '(font-lock-builtin-face ((((class color) (background light)) (:foreground "maroon2"))))
;;  '(font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face)) (((class color) (min-colors 16)) (:background "gray90"))))
;;  '(font-lock-comment-face ((((class color) (background light)) (:background "gray95" :foreground "gray20" :slant oblique))))
;;  '(font-lock-function-name-face ((((class color) (background light)) (:foreground "RoyalBlue2"))))
;;  '(font-lock-keyword-face ((((class color) (background light)) (:foreground "DarkOrchid3"))))
;;  '(font-lock-string-face ((((class color) (background light)) (:background "honeydew1" :foreground "chartreuse4"))))
;;  '(font-lock-type-face ((((class color) (background light)) (:foreground "aquamarine4" :weight semi-bold))))
;;  '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "chocolate"))))
;;  '(highlight ((((class color) (background light)) (:background "PaleGreen1"))))
;;  '(makefile-shell ((t (:inherit font-lock-string-face))) t)
;;  '(nxml-attribute-local-name-face ((t (:inherit font-lock-variable-name-face))))
;;  '(nxml-cdata-section-content-face ((t (:inherit nxml-text-face :background "azure1"))))
;;  '(nxml-comment-content-face ((t (:inherit font-lock-comment-face))))
;;  '(nxml-comment-delimiter-face ((t (:inherit (nxml-delimiter-face font-lock-comment-delimiter-face)))))
;;  '(nxml-delimited-data-face ((((class color) (background light)) (:inherit font-lock-string-face))))
;;  '(nxml-element-prefix-face ((t (:inherit font-lock-type-face))))
;;  '(nxml-name-face ((((class color) (background light)) (:inherit font-lock-function-name-face))))
;;  '(nxml-namespace-attribute-prefix-face ((t (:inherit font-lock-type-face))))
;;  '(nxml-namespace-attribute-value-face ((t (:inherit nxml-attribute-value-face :weight semi-bold))))
;;  '(nxml-namespace-attribute-xmlns-face ((t (:inherit font-lock-builtin-face))))
;;  '(outline-1 ((t (:weight bold :height 2.0))))
;;  '(outline-2 ((t (:weight bold :height 1.65))))
;;  '(outline-3 ((t (:weight bold :height 1.33))))
;;  '(outline-4 ((t (:weight bold))))
;;  '(region ((((class color) (background light)) (:background "SlateGray1"))))
;;  '(secondary-selection ((((class color) (background light)) (:background "DeepSkyBlue1"))))
;;  '(sh-heredoc ((((class color) (background light)) (:foreground "tan3"))))
;;  '(show-paren-match ((((class color) (background light)) (:background "aquamarine1"))))
;;  '(show-paren-mismatch ((((class color)) (:background "blue violet" :foreground "white"))))
;;  '(textile-code-face ((t (:background "white smoke" :foreground "dim gray")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono"))))
 '(diff-added ((t (:inherit diff-changed :foreground "#4f8000"))))
 '(diff-changed ((nil (:foreground "#b58900"))))
 '(diff-function ((t (:inherit (font-lock-function-name-face diff-header)))))
 '(diff-header ((((class color) (min-colors 88) (background light)) (:background "grey90"))))
 '(diff-indicator-added ((t (:inherit diff-added :weight bold))))
 '(diff-indicator-changed ((t (:inherit diff-changed :weight bold))))
 '(diff-indicator-removed ((t (:inherit diff-removed :weight bold))))
 '(diff-removed ((t (:inherit diff-changed :foreground "#dc322f"))))
 '(dired-header ((t (:inherit font-lock-keyword-face :height 2.0 :width extra-expanded))))
 '(dired-symlink ((t (:inherit font-lock-builtin-face))))
 '(ld-script-location-counter ((t (:inherit font-lock-negation-char-face :weight bold)))))
 '(org-tag ((t (:underline t :weight bold))))
 '(swbuff-current-buffer-face ((t (:underline t :weight bold)))))

;; TODO modes
;; latex-mode
;; tex-mode
;; texinfo-mode
;; man-mode
;; woman-mode
;; nxml-mode
;; markdown-mode
;; yaml-mode
;; magit-key-mode
;; lua-mode
;; slang-mode
;; pod-mode
;; csv-mode
;; xrdb-mode
;; apache-mode
;; upstart-mode
;; pbuilder-mode
;; pbuilder-log-view-mode
;; debian-changelog-mode
;; debian-control-mode
;; po-mode
;; js2-mode
;; gnuplot-mode
