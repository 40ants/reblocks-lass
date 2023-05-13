(uiop:define-package #:reblocks-lass-docs/index
  (:use #:cl)
  (:import-from #:pythonic-string-reader
                #:pythonic-string-syntax)
  #+quicklisp
  (:import-from #:quicklisp)
  (:import-from #:named-readtables
                #:in-readtable)
  (:import-from #:40ants-doc
                #:defsection
                #:defsection-copy)
  (:import-from #:reblocks-lass-docs/changelog
                #:@changelog)
  (:import-from #:docs-config
                #:docs-config)
  (:import-from #:40ants-doc/autodoc
                #:defautodoc)
  (:export #:@index
           #:@readme
           #:@changelog))
(in-package #:reblocks-lass-docs/index)

(in-readtable pythonic-string-syntax)


(defmethod docs-config ((system (eql (asdf:find-system "reblocks-lass-docs"))))
  ;; 40ANTS-DOC-THEME-40ANTS system will bring
  ;; as dependency a full 40ANTS-DOC but we don't want
  ;; unnecessary dependencies here:
  #+quicklisp
  (ql:quickload "40ants-doc-theme-40ants")
  #-quicklisp
  (asdf:load-system "40ants-doc-theme-40ants")
  
  (list :theme
        (find-symbol "40ANTS-THEME"
                     (find-package "40ANTS-DOC-THEME-40ANTS"))))


(defsection @index (:title "reblocks-lass - A helper for Reblocks framework to define CSS dependencies in LASS syntax."
                    :ignore-words ("JSON"
                                   "HTTP"
                                   "TODO"
                                   "CSS"
                                   "LASS"
                                   "DSL"
                                   "Unlicense"
                                   "REPL"
                                   "GIT")
                    :external-links (("LASS" . "https://github.com/Shinmera/LASS"))
                    :external-docs ("https://40ants.com/reblocks/"))
  (reblocks-lass system)
  "
[![](https://github-actions.40ants.com/40ants/reblocks-lass/matrix.svg?only=ci.run-tests)](https://github.com/40ants/reblocks-lass/actions)

![Quicklisp](http://quickdocs.org/badge/reblocks-lass.svg)
"
  (@installation section)
  (@usage section)
  (@api section))


(defsection-copy @readme @index)


(defsection @installation (:title "Installation")
  """
You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :reblocks-lass)
```
""")


(defsection @usage (:title "Usage"
                    :ignore-words ("ASDF:PACKAGE-INFERRED-SYSTEM"
                                   "ASDF"
                                   "40A"))
  "
TODO: Write a library description. Put some examples here.
")


(defautodoc @api (:system "reblocks-lass"))
