;;; Author: EK
;;; URL: 

(eval-when-compile
  (require 'color-theme))

(defun color-theme-blue-ink ()
  "Color theme mimicking graphite pencil and ink on paper."
  (interactive)
  (color-theme-install
   '(color-theme-blue-ink
     ((background-color . "gray95")
      (background-mode . light)
      (border-color . "black")
      (cursor-color . "lime green")
      (foreground-color . "gray20")
      (mouse-color . "#000000"))
     ((list-matching-lines-buffer-name-face . underline)
      (list-matching-lines-face . match)
      (view-highlight-face . highlight)
      (widget-mouse-face . highlight))

     ;;
     ;;
     ;; basic formatting
     ;;
     ;;
     (link    ((t (:foreground "medium blue" :underline t))))
     (link-visited ((default (:inherit link)) ((:foreground "dark violet"))))
     (region  ((t (:background "gold"))))
     (trailing-whitespace ((t (:background "red1" :foreground "white"))))

     ;; mode line
     (mode-line ((t (:background "white" :foreground "gray20"))))
     (mode-line-buffer-id ((t (:foreground "navy" :weight bold))))
     (mode-line-inactive ((default (:inherit mode-line)) (((background light)) (:background "grey90" :foreground "grey20" :weight light))))

     ;; show-paren-mode
     (show-paren-match ((t (:background "goldenrod1"))))
     (show-paren-mismatch ((t (:inherit show-paren-match :inverse-video t :weight bold))))

     ;; basic: completion -- defaults are sane enough
     ;; basic: iswitchb   -- defaults are sane

     ;; font-lock
     (font-lock-comment-face ((t (:inherit shadow :foreground "gray30" :background "gray90" :slant oblique))))
     (font-lock-comment-delimiter-face ((default (:inherit font-lock-comment-face :weight bold))))
     (font-lock-string-face ((t (:foreground "royal blue"))))
     (font-lock-doc-face ((t (:inherit (font-lock-string-face font-lock-comment-face)))))
     (font-lock-keyword-face ((t (:weight bold))))
     (font-lock-builtin-face ((t (:inherit (font-lock-keyword-face shadow)))))
     (font-lock-function-name-face ((t (:foreground "royal blue" :weight bold))))
     (font-lock-type-face ((t (:foreground "navy" :weight semi-bold))))
     (font-lock-variable-name-face ((t (:foreground "navy"))))
     (font-lock-constant-face ((t (:inherit font-lock-variable-name-face :underline t :foreground "maroon3"))))
     (font-lock-negation-char-face ((t (:foreground "black"))))
     (font-lock-preprocessor-face ((t (:inherit font-lock-builtin-face))))

     ;; outline
     (outline-1 ((t (:inherit outline-3 :height 1.75 :width extra-expanded))))
     (outline-2 ((t (:inherit outline-3 :height 1.33))))
     (outline-3 ((t (:inherit default :weight bold))))
     (outline-4 ((t (:inherit outline-3 :foreground "navy" :weight normal))))
     (outline-5 ((t (:inherit outline-4 :slant oblique))))
     (outline-6 ((t (:inherit outline-5 :height 0.85))))
     (outline-7 ((t (:inherit outline-6))))
     (outline-8 ((t (:inherit outline-7))))

     ;; calendar
     (calendar-today ((t (:inverse-video t :underline t :weight bold))))
     ;; TODO: holiday

     ;; dired
     (dired-header ((t (:inherit font-lock-keyword-face :height 2.0 :width extra-expanded))))
     (dired-symlink ((t (:inherit font-lock-builtin-face))))


     ;;
     ;;
     ;; PROGMODES
     ;;
     ;;

     ;; compilation
     (compilation-column-number ((t (:inherit font-lock-variable-name-face))))
     (compilation-line-number ((t (:inherit font-lock-type-face))))
     (compilation-warning ((t (:inherit font-lock-warning-face :foreground "dark orange"))))

     ;; shell
     (sh-heredoc ((t (:inherit font-lock-string-face :slant italic))))
     (sh-quoted-exec ((t (:foreground "maroon3" :weight bold))))

     ;; cperl-mode
     (cperl-array-face ((t (:foreground "navy" :slant italic :weight bold))))
     (cperl-hash-face ((t (:foreground "maroon4" :slant italic :weight bold))))
     (cperl-nonoverridable-face ((t (:inherit font-lock-builtin-face :foreground "maroon4"))))

     ;; languages: idl

     ;; ld-script
     (ld-script-location-counter ((t (:inherit font-lock-negation-char-face :weight bold))))

     ;; languages: antlr-mode
     ;; languages: verilog-mode
     ;; languages: vhdl-mode
     ;; languages: vera-mode

     ;; languages: ebrowse

     ;; languages: nxml

     ;;

     ;;
     ;; helpers: org-mode

     ;;
     ;; helpers: magit

     ;;
     ;; helpers: log-view

     ;;
     ;; helpers: diff-mode.el
     ;; TODO: diff-header
     ;; TODO: diff-file-header
     ;; TODO: diff-index
     ;; TODO: diff-hunk-header
     ;; TODO: diff-removed
     ;; TODO: diff-added
     ;; TODO: diff-changed
     ;; TODO: diff-indicator-removed
     ;; TODO: diff-indicator-added
     ;; TODO: diff-indicator-changed
     ;; TODO: diff-function
     ;; TODO: diff-context
     ;; TODO: diff-nonexistent
     ;; TODO: diff-refine-change

     ;;
     ;; helpers: hi-lock
     ;; TODO: hi-{yellow,pink,green,blue,black-b,blue-b,green-b,red-b,black-hb}

     ;;
     ;; helpers: which-func-mode
     ;; TODO: which-func

     ;;
     ;; helpers: makefile-mode
     ;; TODO: makefile-space, makefile-targets, makefile-shell, makefile-makepp-perl

     ;; helpers: ruler-mode

     ;; helpers: higlight-changes
     ;; TODO: highlight-changes
     ;; TODO: highlight-changes-delete
     
     ;; helpers: linum-mode
     ;; TODO linum

     ;; helpers: find-func

     ;; helpers: add-log.el

     ;; textmodes:
     ;; TODO: tex-mode/superscript
     ;; TODO: tex-mode/subscript
     ;; TODO: tex-mode/tex-math
     ;; TODO: tex-mode/tex-verbatim

     ;; helpers: ediff

     ;; helpers: proced
     ;; TODO proced-mark
     ;; TODO proced-marked
     ;; TODO: proced-sort-header
     
     ;; helpers: speedbar
     ;; helpers: ido-mode ?

     ;; helpers: info.el

     ;; helpers: isearch
     ;; TODO isearch
     ;; TODO isearch-fail

     ;; goodies: debian-el/apt-utils
     ;; TODO: apt-utils-*

     ;; goodies: bm
     ;; TODO: bm-face bm-persistent-face bm-fringe-face bm-fringe-persistent-face

     ;; goodies: pod-mode

     ;; goodies: csv-mode

     ;; goodies: ascii

     ;; goodies: show-wspace

     ;; goodies: TODOO

     ;; goodies: rfcview

     ;; goodies: markdown mode

     ;; goodies: dpkg-dev-el / debian-changelog-mode

     ;; languages: js2-mode
     ;; TODO lots of modes

     ;; ?? flymake
     ;;
     ;; log-view.el
     ;; TODO: log-view-file
     ;; TODO: log-view-message
     ;; hl-line.el
     ;; TODO: hl-line

     )
   )
  )

(add-to-list 'color-themes
             '(color-theme-blue-ink
               "Blue Ink"
               "EK <ekilachkoff@gmail.com>"))

(provide 'color-theme-blue-ink)
