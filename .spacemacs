;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(html
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (ranger :variables
             ranger-show-preview t)
     neotree
     haskell
     (go :variables
         go-tab-width 4
         go-format-before-save t
         gofmt-command "goimports")
     systemd
     shell-scripts
     yaml
     (python :variables
             python-enable-yapf-format-on-save t)
     helm
     git
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory "~/.spacemacs.d/snippets")
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-enable-clang-format-on-save t
            c-c++-default-mode-for-headers 'c++-mode
            )
     emacs-lisp
     markdown
     (org :variables
          org-want-todo-bindings t
          org-hide-leading-stars nil
          org-hide-emphasis-markers t
          org-hide-macro-markers t
          org-level-color-stars-only t
          org-enable-github-support t
          org-enable-reveal-js-support t)
     search-engine
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     ycmd
     (syntax-checking :variables
                      syntax-checking-enable-by-default t
                      )
     version-control
     (cmake :variables cmake-enable-cmake-ide-support nil)
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(helm-ros
                                      cmake-mode
                                      format-all
                                      xclip
                                      flymd
                                      exec-path-from-shell
                                      flycheck-clang-analyzer
                                      org-make-toc)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.3)
   dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 95
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."

  (setq-default
   dotspacemacs-themes '(
                         darkokai
                         zenburn
                         planet)

   ;; Ignore any ROS environment variables since they might change depending
   ;; on which catkin workspace is used. When a new catkin workspace is chosen
   ;; call `spacemacs/update-ros-envs' to update theses envs accordingly
   spacemacs-ignored-environment-variables '("ROS_IP"
                                             "PYTHONPATH"
                                             "CMAKE_PREFIX_PATH"
                                             "ROS_MASTER_URI"
                                             "ROS_PACKAGE_PATH"
                                             "ROSLISP_PACKAGE_DIRECTORIES"
                                             "PKG_CONFIG_PATH"
                                             "LD_LIBRARY_PATH")))

(defun spacemacs/update-ros-envs ()
  "Update all environment variables in `spacemacs-ignored-environment-variables'
from their values currently sourced in the shell environment (e.g. .bashrc)"
  (interactive)
  (setq exec-path-from-shell-check-startup-files nil)
  (exec-path-from-shell-copy-envs spacemacs-ignored-environment-variables)
  (message "ROS environment copied successfully from shell"))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."

  ;; Transparency settings
  (spacemacs/set-leader-keys "tt" 'spacemacs/toggle-transparency)
  (add-hook 'after-make-frame-functions 'spacemacs/enable-transparency)

  ;; Default toggle setting
  (spacemacs/toggle-indent-guide-globally-on)

  ;; Set google as default search engine
  (spacemacs/set-leader-keys "ag" 'engine/search-google)
  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "firefox")

  ;; Org-mode
  (setq org-agenda-files (list "~/org/work.org"
                               "~/org/home.org"))

  ;; reveal.js
  (setq org-reveal-root (file-truename "~/.spacemacs.d/reveal.js"))

  ;; ycmd
  (setq ycmd-server-command (list "python3" (file-truename "~/.spacemacs.d/ycmd/ycmd")))
  (setq ycmd-force-semantic-completion t)
  (setq ycmd-startup-timeout 5)
  (setq ycmd-idle-change-delay 2.0)
  (setq company-ycmd-request-sync-timeout 0)
  (spacemacs/set-leader-keys "ef" 'ycmd-fixit)

  ;; C++ build dir setting
  (put 'cmake-ide-dir 'safe-local-variable 'stringp)
  (put 'cmake-ide-make-command 'safe-local-variable 'stringp)
  (put 'cmake-ide-cmake-args 'safe-local-variable 'stringp)

  ;; Python interpreter
  (setq python-shell-interpreter "/usr/bin/python3")

  ;; Autocompletion configuration
  (use-package company
    :ensure t
    :config
    (setq company-idle-delay 0)
    (setq company-minimum-prefix-length 2))
  (with-eval-after-load 'company
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd "C-j") 'company-select-next)
    (define-key company-active-map (kbd "C-k") 'company-select-previous))
  (with-eval-after-load 'company
    (add-hook 'company-mode-hook 'company-bindings)
    (add-hook 'c++-mode-hook 'company-mode)
    (add-hook 'c-mode-hook 'company-mode))
  (defun company-bindings ()
    (define-key company-mode-map [tab] 'company-complete))

  ;; Kill all buffers
  (defun nuke-all-buffers ()
    (interactive)
    (mapcar 'kill-buffer (buffer-list))
    (delete-other-windows))
  (global-set-key (kbd "C-x K") 'nuke-all-buffers)

  ;; Make w key in vim mode move to end of the word (not stopped by _)
  (with-eval-after-load 'evil
    (defalias #'forward-evil-word #'forward-evil-symbol))

  ;; Only kill frame when using SPC+q+q
  (spacemacs/set-leader-keys "qq" 'spacemacs/frame-killer)

  ;; ROS shortcut
  (spacemacs/set-leader-keys "ye" 'spacemacs/update-ros-envs)
  (spacemacs/declare-prefix "y" "ROS")
  (spacemacs/set-leader-keys "yy" 'helm-ros)

  (spacemacs/declare-prefix "yt" "ROS topics")
  (spacemacs/set-leader-keys "ytt" 'helm-ros-topics)
  (spacemacs/set-leader-keys "ytz" 'helm-ros-rostopic-hz)
  (spacemacs/set-leader-keys "yti" 'helm-ros-rostopic-info)

  (spacemacs/declare-prefix "yn" "ROS nodes")
  (spacemacs/set-leader-keys "yni" 'helm-ros-rosnode-info)
  (spacemacs/set-leader-keys "ynn" 'helm-ros-rosnode-list)
  (spacemacs/set-leader-keys "ynd" 'helm-ros-kill-node)
  (spacemacs/set-leader-keys "ynr" 'helm-ros-run-node)

  (spacemacs/set-leader-keys "ym" 'helm-ros-set-master-uri)

  ;; Fix the color of magit in terminal
  (custom-set-faces
   ;; other faces
   '(magit-diff-added ((((type tty)) (:foreground "green"))))
   '(magit-diff-added-highlight ((((type tty)) (:foreground "LimeGreen"))))
   '(magit-diff-context-highlight ((((type tty)) (:foreground "default"))))
   '(magit-diff-file-heading ((((type tty)) nil)))
   '(magit-diff-removed ((((type tty)) (:foreground "red"))))
   '(magit-diff-removed-highlight ((((type tty)) (:foreground "IndianRed"))))
   '(magit-section-highlight ((((type tty)) nil))))

  ;; Turn on xclip mode
  (xclip-mode t)

  (use-package flycheck-clang-analyzer
    :ensure t
    :after flycheck
    :config (flycheck-clang-analyzer-setup)
    )

  ;; Personal roslaunch config
  (load-file "~/.spacemacs.d/private/roslaunch-jump/roslaunch-jump.el")
  (load-file "~/.spacemacs.d/private/company-roslaunch/company-roslaunch.el")
  (load-file "~/.spacemacs.d/private/catkin-make/catkin-make.el")
  (catkin-make-keybinding-setup)

  ;; Other settings
  (setq find-file-visit-truename t)
  (setq helm-swoop-use-fuzzy-match t)
  (setq helm-swoop-use-line-number-face t)

  ;; C-a for increasing number, C-x for descreasing number
  (evil-define-key 'normal global-map (kbd "C-a") 'evil-numbers/inc-at-pt)
  (evil-define-key 'normal global-map (kbd "C-x") 'evil-numbers/dec-at-pt)

  ;; Zoom in / out
  (define-key (current-global-map) (kbd "C-+") 'spacemacs/zoom-frm-in)
  (define-key (current-global-map) (kbd "C--") 'spacemacs/zoom-frm-out)

  ;; Use windows key as meta key to avoid conflicts with i3wm
  (setq x-super-keysym 'meta)

  ;; Ranger keybindings
  (require 'ranger)
  (define-key ranger-mode-map (kbd "M-h") 'ranger-prev-tab)
  (define-key ranger-mode-map (kbd "M-l") 'ranger-next-tab)
  (define-key ranger-mode-map (kbd "M-n") 'ranger-new-tab)

  ;; Semantic mode
  (semantic-mode t)

  ;; Org mode
  (spacemacs/set-leader-keys-for-major-mode 'org-mode "=" 'editorconfig-format-buffer)
  (require 'org)
  (define-key org-mode-map (kbd "C-<tab>") 'org-table-previous-field)

  ;; Enable format-all minor mode
  (add-hook 'c-mode-hook #'format-all-mode)
  (add-hook 'c++-mode-hook #'format-all-mode)
  (add-hook 'python-mode-hook #'format-all-mode)
  (add-hook 'cmake-mode-hook #'format-all-mode)
  (add-hook 'go-mode-hook #'format-all-mode)

  ;; Workaround for https://github.com/company-mode/company-mode/issues/383
  (evil-declare-change-repeat 'company-complete)

  ;; Workaround for https://github.com/syl20bnr/spacemacs/issues/10410
  (defun kill-minibuffer ()
    (interactive)
    (when (windowp (active-minibuffer-window))
      (evil-ex-search-exit)))
  (add-hook 'mouse-leave-buffer-hook #'kill-minibuffer))
