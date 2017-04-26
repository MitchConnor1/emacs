;;Melpa
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


(setq backup-directory-alist `(("." . "~/.emacsaves")))
(load-theme 'granger 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (challenger-deep)))
 '(custom-safe-themes
   (quote
    ("ed1d4f68fdb738bc5c3e650fb92f75f811c596e73ff01a82caa206b75ea0ba7d" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "0c29db826418061b40564e3351194a3d4a125d182c6ee5178c237a7364f0ff12" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" default)))
 '(eww-download-directory ".")
 '(inhibit-startup-screen t)
 '(jdee-compiler (quote ("javac")))
 '(jdee-complete-function (quote jdee-complete-minibuf))
 '(jdee-global-classpath
   (quote
    ("/usr/lib/jvm/java-8-openjdk-amd64/jre/lib/" "/usr/lib/jvm/java-1.8.0-openjdk-amd64/jre/lib/")))
 '(jdee-server-dir
   "/home/julien/.emacs.d/elpa/jdee-20170330.21/jdee-server/target")
 '(linum-format " %7i ")
 '(menu-bar-mode nil)
 '(send-mail-function (quote mailclient-send-it))
 '(tool-bar-mode nil))

;;mail configuration
'(send-mail-function (quote smtpmail-send-it))
'(smtpmail-smtp-server "smtp.googlemail.com")
'(smtpmail-smtp-service 587)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)


;;defining new keyboard shortcuts
(global-set-key (kbd "C-,") 'delete-backward-char)
(global-set-key (kbd "C-;") 'backward-kill-word)
(global-set-key (kbd "M-ù") 'query-replace)
(global-set-key (kbd "C-:") 'undo)
(global-set-key (kbd "C-!") 'dabbrev-expand)
(global-set-key (kbd "C-M-!") 'dabbrev-completion)
(global-set-key (kbd "C-x M-$") 'ispell-buffer)
(global-set-key (kbd "C-x C-q") 'view-mode)
;;lisp stuff
(setq inferior-lisp-program "/usr/bin/clisp")

;;ace-window
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-background nil)
(ace-window-display-mode)
(column-number-mode 0)


;;Set font attributes
(set-face-attribute 'default nil :height 100)

(setq python-shell-interpreter "/usr/bin/python2.7") 
;;(setq python-shell-interpreter "/usr/bin/python3.5")

(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(setq node "/usr/bin/nodejs")

;; google translate

(require 'google-translate)
(require 'google-translate-default-ui)
(global-set-key "\C-c t" 'google-translate-at-point)
(global-set-key "\C-c T" 'google-translate-query-translate)


;; launching pdf-tools
(pdf-tools-install)

;; org

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)




;; Defining jdee abbrevs
;;(jdee-gen-define-abbrev-template "sout" '( "System.out.println("))
