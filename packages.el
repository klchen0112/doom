;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el



(package! benchmark-init)





(package! transwin)

(package! emt :recipe (:host github :repo "roife/emt" :files ("*.el" "module/*" "module")) :pin "7bea66de1b26d3f3f1cf9e940b269809c0c531b9")

(package! dired-preview)

;; (package! pangu-spacing)

;; interact with org-roam and bibtex
(package! org-roam-bibtex)

(package! org :recipe
  (:host nil :repo "https://git.tecosaur.net/mirrors/org-mode.git" :remote "mirror" :fork
         (:host nil :repo "https://git.tecosaur.net/tec/org-mode.git" :branch "dev" :remote "tecosaur")
         :files
         (:defaults "etc")
         :build t :pre-build
         (with-temp-file "org-version.el"
           (require 'lisp-mnt)
           (let
               ((version
                 (with-temp-buffer
                   (insert-file-contents "lisp/org.el")
                   (lm-header "version")))
                (git-version
                 (string-trim
                  (with-temp-buffer
                    (call-process "git" nil t nil "rev-parse" "--short" "HEAD")
                    (buffer-string)))))
             (insert
              (format "(defun org-release () \"The release version of Org.\" %S)\n" version)
              (format "(defun org-git-version () \"The truncate git commit hash of Org mode.\" %S)\n" git-version)
              "(provide 'org-version)\n"))))
  :pin nil)

;;(unpin! org)

(package! org-modern)
(package! org-appear)

;;(unpin! org-roam)

;;(unpin! org-roam-ui)

(package! consult-org-roam)

(package! org-roam-timestamps)

(package! org-transclusion)

(package! vulpea)
(package! consult-org-roam)
;;TODO
;;(package! nursery
;;     :recipe (:host github :repo "chrisbarrett/nursery"))

(package! sis)

;; (package! rime :built-in t)
;; (package! rime-regexp :recipe (:host github :repo "colawithsauce/rime-regexp.el") :pin "546ae861134d3084fbe9379412f79353380ab31a")

;;(package! tempel)
;;(package! tempel-collection)

;;(package! codeium :recipe (:host github :repo "Exafunction/codeium.el"))
;; (package! copilot
;;   :recipe (:host github :repo "copilot-emacs/copilot.el" :files ("*.el" "dist"))
;; )
;; (package! gptel)

;;(package! ts-docstr
;;  :recipe (:host github :repo "emacs-vs/ts-docstr" :files (:defaults "langs/*.el")))

;; (if IS-MAC (package! micromamba))

(package! ruff-format)

(package! pet :recipe (:host github :repo "wyuenho/emacs-pet") :pin "c2278f9bc1c3a5070021fe3251ed09b5a468d331")

(if IS-MAC (package! dash-at-point))

(package! just-mode)
(package! justl)

(package! graphviz-dot-mode)
(package! ob-blockdiag)

;;(package! org-noter :recipe (:host github :repo "org-noter/org-noter"))

;;(package! org-noter-plus :recipe (:host github :repo "yuchen-lea/org-noter-plus"))

;;(package! pretty-hydra)  ;; dependency
;;(package! org-media-note :recipe (:host github :repo "yuchen-lea/org-media-note"))

;;(package! mpvi :recipe (:host github :repo "lorniu/mpvi"))

(package! org-anki :recipe (:host github :repo "eyeinsky/org-anki"))

(package! telega :built-in t)

(package! org-ai)

(package! alert)

;; 获得当前的repo commit的连接
(package! git-link)
;; magti file icons
(package! magit-file-icons)

(package! git-auto-commit-mode)

(package! openwith)

;;(package! activity-watch-mode)

(package! exec-path-from-shell)
