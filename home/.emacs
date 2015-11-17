;; use more commin symbols 
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoints in decimal. ℯℊ (insert-char 182 1)
      '(
        (space-mark 32 [183] [46]) ; 32 SPACE 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [182 10]) ; 10 LINE FEED,  182 PILCROW SIGN 「¶」
        (tab-mark 9 [8594 9] [92 9]) ; 9 TAB, 9655 RIGHTWARDS ARROW 「→」
        ))
		
;; remove colors from whitespace-mode
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;; allow imports in python scripts to work running from inside emacs
(setq python-remove-cwd-from-path nil)

;; allow use of filesets
(filesets-init)

;; in org-mode syntax highligt code in code blocks
(setq org-src-fontify-natively t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(filesets-data
   (quote
    (("Teste"
      (:files "C:\\Users\\agranero\\Desktop\\1.txt" "C:\\Users\\agranero\\Desktop\\2.txt"))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
