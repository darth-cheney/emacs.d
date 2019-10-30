;; Use Libre Baskerville when in Olivetti Mode
;; Possible faces:
;; "Baskervald ADF Std"
;; "Libre Baskerville"
(defun olivetti-mode-use-baskerville ()
  "Set the font face for Olivetti mode to BAskervald"
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeSerif" :height 150 :width normal))
  (buffer-face-mode))

;; Set to Olivetti hook
(add-hook 'olivetti-mode-hook 'olivetti-mode-use-baskerville)

;; Add command for killing all buffers
(defun kill-all-buffers ()
  "Kill all open buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list))
  (delete-other-windows))

;; Use master password for
;; Twittering Mode
(setq twittering-use-master-password t)

(provide 'eric-custom)
