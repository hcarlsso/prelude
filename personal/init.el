;; Setting up matlab-mode
(add-to-list 'load-path "~/.emacs.d/personal/matlab-emacs")
(load-library "matlab-load")
(custom-set-variables
 '(matlab-shell-command-switches '("-nodesktop -nosplash")))
(add-hook 'matlab-mode-hook 'auto-complete-mode)
(setq auto-mode-alist
      (cons
       '("\\.m$" . matlab-mode)
       auto-mode-alist))



(setq anaconda-mode-server-script "/usr/local/lib/python2.7/dist-packages/anaconda_mode.py")


;; (provide 'init)\n;;; init.el ends here
                                        ; Dictionnary

(setq ispell-personal-dictionary "~/.emacs.d/personal/.aspell.en.pws")
