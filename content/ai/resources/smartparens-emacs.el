;;; Put this at the end of your portacle/config/user.el file:

;; Uncomment these and run portacle ONCE to install and update.
;; The delete or re-comment.

;; (package-initialize)
;; (package-refresh-contents)
;; (package-install 'use-package)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-match-expression ((t (:inherit (my-show-paren-match))))))

;;;; smartparens-mode
;; Excellent animated tutorial:
;; https://gist.github.com/pvik/8eb5755cc34da0226e3fc23a320a3c95

(use-package smartparens
;;  :diminish smartparens-mode
;;  :init
;;  (smartparens-global-mode)
  :ensure t
  :config
  (require 'smartparens-config)

  (custom-set-variables
   '(sp-base-key-bindings 'sp)
   '(sp-override-key-bindings
     '(("M-[" . sp-backward-unwrap-sexp)
       ("M-]" . sp-unwrap-sexp)
       ("M-T" . sp-transpose-sexp)
       ("M-<backspace>" . nil))))
  :hook ((emacs-lisp-mode
         racket-mode
         racket-repl-mode
         lisp-mode) . smartparens-mode))

(defface my-show-paren-match
  '((t :background "LightSteelBlue1"
       :inherit 'show-paren-match))
  "Face for matching parens, milder than the default.
Other colors considered: SlateGray1 LightSkyBlue1.
Check: M-x list-colors-display"
  :group 'paren-showing-faces)

