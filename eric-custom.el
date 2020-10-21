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


;; Add command for killing all buffers
(defun kill-all-buffers ()
  "Kill all open buffers."
  (interactive)
  (mapc 'kill-buffer (buffer-list))
  (delete-other-windows))

;; All the icons
(require 'all-the-icons)

;; Dashboard startup screen
(require 'dashboard)
(dashboard-setup-startup-hook)

;; Customize the startup dashboard
(setq dashboard-banner-logo-title "𒈦𒄘𒃼")
(setq dashboard-startup-banner "~/.emacs.d/lamassu.png")
(setq dashboard-center-content t)
(setq dashboard-set-heading-icons t)
(setq dashboard-set-file-icons t)
(setq dashboard-set-footer nil)

;; Use the Doom Modeline
(require 'doom-modeline)
(doom-modeline-mode 1)

;; Config a custom eshell prompt
(require 'custom-eshell-prompt "~/.emacs.d/custom-eshell-prompt.el")

(provide 'eric-custom)
