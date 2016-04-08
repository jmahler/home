
;; To reload this file without restarting Emacs.
;; M-x load-file RET ~/.emacs RET
;;
;;   [http://www.emacswiki.org/emacs/EmacsChannelFaq]

;; http://orgmode.org/manual/Activation.html#Activation
;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.\\(org\\|txt\\)$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

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

;; Transient Mark Mode
(setq transient-mark-mode t)

;; C-x C-u    uppercase marked region
(put 'upcase-region 'disabled nil)

;(set-face-font 'default "-adobe-courier-medium-r-*-*-*-120-*-*-*-*-iso8859-1")
(set-face-font 'default "-*-terminus-medium-r-*-*-14-*-*-*-*-*-*-*")
