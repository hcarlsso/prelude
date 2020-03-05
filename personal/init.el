;; Personal dictionary
(setq ispell-personal-dictionary "~/.emacs.d/personal/.aspell.en.pws")

(prelude-require-packages '(markdown-mode flycheck-julia julia-mode))


;; Directory
(setq eshell-prompt-function
      (lambda () (concat (car (last (split-string (eshell/pwd) "/"))) " $ ")))


;; File associations, ROS, launch
(add-to-list 'auto-mode-alist '("\\.launch\\'" . xml-mode))

;; Turn on RefTeX for AUCTeX,
;; http://www.gnu.org/s/auctex/manual/reftex/reftex_5.html
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
;; Make RefTeX interact with AUCTeX,
;; http://www.gnu.org/s/auctex/manual/reftex/AUCTeX_002dRefTeX-Interface.html
(setq reftex-plug-into-AUCTeX t)

; (add-to-list 'load-path "~/.local/share/emacs/site-lisp/mu4e/")
; (require 'mu4e)

;;  Julia
(require 'julia-repl)
(add-hook 'julia-mode-hook 'julia-repl-mode)
;; More processes in emacs session
;; (setq julia-repl-switches "-p 3")
