;; Add Elpy sources
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages"))

(elpy-enable)

;; Make sure Elpy doesn't
;; override our window switching
;; keymaps
(eval-after-load "elpy"
  '(cl-dolist (key '("C-<up>" "C-<down>" "C-<left>" "C-<right>"))
     (define-key elpy-mode-map (kbd key) nil)))


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

;; IRC Settings


;; Shampoo Settings
(add-to-list 'load-path "/home/ecgade/.emacs.d/shampoo/shampoo-emacs")
(require 'shampoo)

(provide 'eric-custom)
