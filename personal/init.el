;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/personal/matlab-emacs")
(load-library "matlab-load")
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -no splash")))
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
      (cons
       '("\\.m$" . matlab-mode)
       auto-mode-alist))



(setq anaconda-mode-server-script "/usr/local/lib/python2.7/dist-packages/anaconda_mode.py")

;; Personal dictionary
(setq ispell-personal-dictionary "~/.emacs.d/personal/.aspell.en.pws")

;;                                         ;
;; ;; LaTeX configuration
(require 'reftex)
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)
(setq TeX-PDF-mode t)

(setq TeX-output-view-style
      (quote
       (("^pdf$" "." "evince -f %o")
        ("^html?$" "." "iceweasel %o"))))

;; Setting up writegood-mode
(add-to-list 'load-path "~/.emacs.d/personal/writegood-mode")
(require 'writegood-mode)
(global-set-key "\C-cg" 'writegood-mode)

(global-set-key (kbd "C-;") 'comment-dwim) ; C-;


;; External programs required
;; (pdf-tools-install)


;; ESS
(add-to-list 'load-path "~/.emacs.d/personal/ESS/lisp")
(load "ess-site")

(prelude-require-package 'markdown-mode)

;; Start server
;;(add-to-list 'load-path "~/.emacs.d/personal/emacs-geeknote")
;;(require 'geeknote)

;; http://tex.stackexchange.com/questions/163670/how-to-replace-auctexs-latex-command-with-latex-dvips-ps2pdf-chain
;; (eval-after-load "tex"
;;   '(progn
;;      (add-to-list
;;       'TeX-command-list
;;       '("LaTeX + dvips + ps2pdf"
;;         "latex%(mode) %t && dvips %d -o %f && ps2pdf14 %f"
;;         TeX-run-TeX nil t))))

;; (setq TeX-view-program-selection (quote ((output-dvi "rubberpdf"))))
;; (setq TeX-view-program-list '(("rubberpdf"
;;                                ("evince"
;;                                 (mode-io-correlate " -p %(outpage)")
;;                                 " %s.pdf"))))

(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

;; ROS
(add-to-list 'load-path "/opt/ros/indigo/share/emacs/site-lisp")
;;(require 'rosemacs-config)

;;(require 'json-mode)


;; Use ipython
;(when (executable-find "ipython")
;  (setq python-shell-interpreter "ipython")


(defun ipython ()
    (interactive)
    (term "ipython"))

;; PDDL mode
(add-to-list 'load-path "~/.emacs.d/personal")
(require 'pddl-mode)
(add-to-list 'auto-mode-alist
             '("\\.pddl" . PDDL-mode))

;; Modify prompt in eshell

(setq eshell-prompt-function
      (lambda () (concat (car (last (split-string (eshell/pwd) "/"))) " $ "))
      )




(add-to-list 'auto-mode-alist '("\\.world\\'" . xml-mode))
(add-to-list 'auto-mode-alist '("\\.rviz\\'" . yaml-mode))

(provide 'init)
;;; init.el ends here
