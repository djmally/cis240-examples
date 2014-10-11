;;;;;;;;; DISCLAIMER: I DID NOT WRITE THIS AND CANNOT VOUCH FOR ITS FUNCTIONALITY! ;;;;;;;;;

; Enable Marmalade
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/")
             )
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/")
             )

(package-initialize)

;; Enable fill column indicator
(setq-default fill-column 80)
(require 'fill-column-indicator)
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

; Enable line numbers
(global-linum-mode 1)
(setq linum-format "%4d ")
; And column numbers
(setq column-number-mode t)

; Add major mode associations
(add-to-list 'load-path "~/.emacs.d")

; Indentation and spacing
(setq-default indent-tabs-mode nil
              tab-width 4
              c-basic-offset 4
              mode-require-final-newline t
              require-final-newline t
              show-trailing-whitespace t
              )
(setq indent-line-function 'insert-tab)

; Enable mouse mode
(xterm-mouse-mode 1)
; Mouse wheel scroll step = 1
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))

; Smooth scrolling by moving the cursor
(setq scroll-step 1
      scroll-conservatively 10000
      auto-window-vscroll nil
      )

; Better autosaving
(setq backup-by-copying t      ; don't clobber symlinks
      backup-directory-alist
      '(("." . "~/.autosave"))    ; don't litter my fs tree
      delete-old-versions t
      kept-new-versions 6
      kept-old-versions 2
      version-control t       ; use versioned backups
      )

; Undo-tree persistent undo history saved in ~/.emacs.d/undo-tree/
(setq undo-tree-auto-save-history 1
      undo-tree-history-directory-alist (quote (("." . "~/.emacs.d/undo-tree/")))
      )
