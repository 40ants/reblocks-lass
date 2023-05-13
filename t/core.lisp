(uiop:define-package #:reblocks-lass-tests/core
  (:use #:cl)
  (:import-from #:rove
                #:deftest
                #:ok
                #:testing))
(in-package #:reblocks-lass-tests/core)


(deftest test-example ()
  (ok t "Replace this test with something useful."))
