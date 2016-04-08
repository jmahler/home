
;; To reload this file without restarting Emacs.
;; M-x load-file RET ~/.emacs RET
;;
;;   [http://www.emacswiki.org/emacs/EmacsChannelFaq]

;;(autoload 'php-html-helper-mode "html-helper-mode" "html-helper-mode" t)

;; Enable viper mode (vi emulation).
;(setq viper-mode t)
;(require 'viper)

;; http://orgmode.org/manual/Activation.html#Activation
;; The following lines are always needed.  Choose your own keys.
;;(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.\\(org\\|txt\\)$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; Make org-mode the default
;;(setq initial-major-mode 'org-mode)
;;(add-hook text-mode-hook)

;; Alternatively add to first line of each file.
;; MY PROJECTS    -*- mode: org; -*-

;; TODO Keywords
;(setq org-todo-keywords (quote ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
; (sequence  "PROJECT(P@)" "OPEN(O@)" "|" "WAITING(w@/!)" "SOMEDAY(S!)" "CANCELLED(c@/!)" "DELAYED(D@/!)")
; (sequence "QUOTE(q!)" "QUOTED(Q!)" "|" "APPROVED(A@)" "EXPIRED(E@)" "REJECTED(R@)"))))

(setq org-todo-keywords
  (quote
   ((sequence "TODO(t!)" "OPEN(o)" "|" "WAITING(w)" "DONE(d!)" "CANCELLED(c@/!)" "SOMEDAY(S!)"))))

(setq org-todo-keyword-faces (quote (
 ("TODO" :foreground "red" :weight bold)
 ("DONE" :foreground "forest green" :weight bold)
 ("WAITING" :foreground "orange" :weight bold)
 ("SOMEDAY" :foreground "magenta" :weight bold)
 ("CANCELLED" :foreground "forest green" :weight bold)
 ("OPEN" :foreground "orange" :weight bold)
 ("GOAL" :foreground "yellow" :weight bold)
 ("PROJECT" :foreground "yellow" :weight bold))))

(global-font-lock-mode 1)                     ; for all buffers
(add-hook 'org-mode-hook 'turn-on-font-lock)  ; Org buffers only

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-generic))
 '(browse-url-generic-program "/usr/bin/sensible-browser")
 '(org-agenda-files
   (quote
    ("~/.org/openecm.org" "~/.org/german.org" "~/.org/mips-cpu.org" "~/.org/for-sale.org" "~/.org/todo.org" "~/.org/autorepair.org" "~/.org/jobs.org" "~/.org/opensource.org" "~/.org/bike.org")))
 '(org-agenda-todo-ignore-scheduled (quote future))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 1.7 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
		 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(transient-mark-mode t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "xos4" :family "Terminus")))))

;; org-mode, time clock
;; http://doc.norang.ca/org-mode.html#sec-7.1
(setq org-clock-persistence-insinuate)

(setq org-clock-in-resume t)

(setq org-clock-persist t)

;; http://orgmode.org/manual/Setting-up-Remember.html#Setting-up-Remember
;(org-remember-insinuate)
(setq org-directory "~/.org/")
;; (setq org-default-notes-file (concat org-directory "/notes.rm.org"))
(setq org-default-notes-file "/notes.rm.org")
;; C-c r
(define-key global-map "\C-cr" 'org-remember)

;; 3 remember templates for TODO tasks, Notes, and Phone calls
;(setq org-remember-templates (quote (
;  ("todo" ?t "* TODO %?
;  %u
;  %a" "~/.org/tasks.rm.org" bottom nil)
;  ("note" ?n "* %?                                        :NOTE:
;  %u
;  %a" "~/.org/notes.rm.org" bottom nil)
;  ("phone" ?p "* PHONE %:name - %:company -                :PHONE:
;  Contact Info: %a
;  %u
;  :CLOCK-IN:
;  %?" "~/.org/phone.rm.org" bottom nil))))


;; AUCTeX
;; http://www.gnu.org/software/auctex/manual/auctex.html#SEC11
;; Configured in etc/emacs22/site-start.d/50auctex.el
;;
;;(load "auctex.el" nil t t)
;;(load "preview-latex.el" nil t t)
;;
;(setq TeX-auto-save t)
;(setq TeX-parse-self t)
;(setq-default TeX-master nil)
;; outline mode
;;(setq TeX-outline-extra
;;      '(("[ \t]*\\\\\\(bib\\)?item\\b" 7)
;;	("\\\\bibliography\\b" 2)))

;; Transient Mark Mode
(setq transient-mark-mode t)

;; C-x C-u    uppercase marked region
(put 'upcase-region 'disabled nil)

;; reftex
;; http://www.gnu.org/software/auctex/manual/reftex.html#SEC1
;;(require 'reftex)
;;(add-hook 'org-mode-hook 'turn-on-reftex)
;;(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;;(add-hook 'latex-mode-hook 'turn-on-reftex)


;; hla-mode
;; http://www.vultaire.net/blog/2009/07/30/my-emacs-configuration/
;; HLA custom mode
;(define-derived-mode hla-mode asm-mode
;  "HLA"
;  "Very simple mode for editing High Level Assembly (HLA) source files."
;  (font-lock-add-keywords
;   'hla-mode
;   '(
;     ("^\\(#[ \t]*include\\|#[ \t]*code\\|#[ \t]*static\\|#[ \t]*storage\\|#[ \t]*readonly\\|#[ \t]*const\\)\\>" . font-lock-preprocessor-face)
;     ("\\<\\(program\\|procedure\\|begin\\|end\\|const\\|readonly\\|static\\|storage\\|var\\|val\\)\\>" . font-lock-keyword-face)
;     ("^[ \t]*\\(;\\).*$" . font-lock-comment-face)
;     ("\\<\\(int8\\|int16\\|int32\\|uns8\\|uns16\\|uns32\\|real32\\|real64\\|real80\\|char\\|boolean\\|byte\\|word\\|dword\\|qword\\|tbyte\\|string\\|text\\|pointer to\\|cset\\)\\>" . font-lock-type-face)
;     ("\\<\\(nl\\)\\>" . font-lock-constant-face)
;     ("[ \t]*\\(@nostorage\\)\\>" . font-lock-keyword-face)
;     ))
;  (setq indent-line-function 'indent-relative-maybe))

;(add-to-list 'auto-mode-alist '("\\.hla\\'" . hla-mode))
;(add-hook
; 'hla-mode-hook
; '(lambda ()
;    (local-set-key "\t" 'tab-to-tab-stop)
;    (local-set-key "\r" 'newline-and-indent)
;    (when (fboundp 'column-marker-1)
;	   (column-marker-1 79))
;    (setq show-trailing-whitespace t)))


;;{{{ fold me!
;; open fold:  C-c @ C-o

;; http://www.emacswiki.org/cgi-bin/wiki/FoldingMode
;; folding mode
;(load "folding" 'nomessage 'noerror)
;(folding-mode-add-find-file-hook)
;;
;; /usr/share/emacs/site-lisp/emacs-goodies-el/folding.el
;(autoload 'folding-mode          "folding" "Folding mode" t)
;(autoload 'turn-off-folding-mode "folding" "Folding mode" t)
;(autoload 'turn-on-folding-mode  "folding" "Folding mode" t)

;(folding-add-to-marks-list 'hla-mode  "// {{{" "// }}}" nil t)
;(add-hook 'hla-mode-hook 'turn-on-folding-mode)

;;}}}

;; (setq inhibit-splash-screen t)

;(set-face-font 'default "-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1")
(set-face-font 'default "-*-terminus-medium-r-*-*-14-*-*-*-*-*-*-*")

;; To enable maxima mode for a buffer do:
;;
;;   M-x imaxima
;;
;;   [http://www.emacswiki.org/emacs/MaximaMode]
;;
(add-to-list 'load-path "/usr/share/maxima/5.22.1/emacs/")
(autoload 'maxima-mode "maxima" "Maxima mode" t)
(autoload 'imaxima "imaxima" "Frontend for maxima with Image support" t)
(autoload 'maxima "maxima" "Maxima interaction" t)
(autoload 'imath-mode "imath" "Imath mode for math formula input" t)
(setq imaxima-use-maxima-mode-flag t)

;; CC Mode, C Programming
;; http://www.gnu.org/software/emacs/manual/html_node/ccmode/Custom-Filling-and-Breaking.html

(defun my-c-mode-common-hook ()
  ; fix multi-line comments
  (setq c-block-comment-prefix "*")
  ; change indentation to 4 spaces
  (setq c-basic-offset 4))

(add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
