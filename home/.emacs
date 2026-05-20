;; save and open automatically the desktop session
(desktop-save-mode 1)
(setq desktop-auto-save-timeout 300)
(setq desktop-restore-reuses-frames 1)

;; use more common symbols 
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoints in decimal. ℯℊ (insert-char 182 1)
      '(
	;; first argument is the char to be substituted
	;; second argument is the char to substitute for
	;; the third argument are the fallback chars to substitute (like when you are using other simpler interface, like through ssh)
	;; lists means the substitute character followed by others when the char functionality is still  needed (like TAB or LINE FEED)
        (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [182 10]) ; 10 LINE FEED,  182 PILCROW SIGN 「¶」
        (tab-mark 9 [8594 9] [92 9]) ; 9 TAB, 9655 RIGHTWARDS ARROW 「→」
        ))
		
;; remove colors from whitespace-mode
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))


;; Org mode switched its core template mechanism to org-insert-structure-template (C-c C-,)
;; in version 9.2, now org-tempo must be explicitly loaded to use the < shortcuts.
(require 'org-tempo)

;; allows imports in python scripts to work when running from inside Emacs
;; this disrupting behavior was becasue python.el had a vulnerability and this was the way to fix it
;; it is disrubting because it causes a ModuleNotFoundError on imports
;; even if you use an LSP C-c C-c will bypass the LSP entirelly
;; but the vulnerability was more theorical than practical to be explored
;; as it needs a malicious file emacs.py or inspect.py in your disk
;; the fix for the fix is a pretend game as it technically opens the vulnerability again
;; they pretend to fix by breaking running Python and you pretendit was a fix by disabling it
(setq python-remove-cwd-from-path nil)

;; deletes selected text when typing or yanking
(delete-selection-mode 1)

;; (require 'better-defaults)

;; allows use of filesets
;; removed this as filesets feature is outdated design from the 90s
;; it needs you to hardcode the fileset on you config files
;; this makes no sense whatsoever
; (filesets-init)

;; in org-mode syntax highlight code in code blocks
(setq org-src-fontify-natively t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ispell-dictionary nil)
 '(load-home-init-file t t)
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Hide the startup message
(setq inhibit-startup-message t)   

;; only enables linum mode in program mode
; (global-linum-mode t)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

; (elpy-enable)

;; makes ~ backups even if a file is managed by Git or other VCS
(setq vc-make-backup-files t)

;; move all backups to a backup directory
(setq backup-directory-alist `((".*" . "backup/"))
)

;; package-initialize is not needed anymore since Emacs 27,
;; searching for installed packages, running their autoload files,
;; and adding their directories to load-path now is automatically done
;; before processing the init file.
; (package-initialize)

;; since Emacs 27 this call is not needed anymore
;; Emacs automatically calls (package-initialize) early in the startup process.
; (require 'package)
