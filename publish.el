(require 'ox-publish)

(setq org-publish-project-alist
      '(("org"
         :base-directory "src/"
         :base-extension "org"
         :publishing-directory "."
         :recursive t
         :publishing-function org-html-publish-to-html
         :auto-sitemap t
         :sitemap-filename "sitemap.org"
         :sitemap-title "Sitemap"
         :headline-levels 4
         :auto-preamble nil)
        ("css"
         :base-directory "src/css/"
         :base-extension "css"
         :publishing-directory "./css"
         :publishing-function org-publish-attachment
         :recursive t)
        ("images"
         :base-directory "src/images/"
         :base-extension "png\\|jpg\\|gif"
         :publishing-directory "./images"
         :recursive t
         :publishing-function org-publish-attachment)
         ("all" :components ("org" "css" "images"))))
