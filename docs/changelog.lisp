(uiop:define-package #:reblocks-lass-docs/changelog
  (:use #:cl)
  (:import-from #:40ants-doc/changelog
                #:defchangelog))
(in-package #:reblocks-lass-docs/changelog)


(defchangelog (:ignore-words ("SLY"
                              "ASDF"
                              "REPL"
                              "HTTP"))
  (0.2.0 2018-02-03
         "* Fixed to work with Weblocks>=0.25.0.")
  (0.1.0 2017-09-01
         "* Initial version."))
