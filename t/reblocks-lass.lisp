(in-package :cl-user)
(defpackage reblocks-lass-test
  (:use :cl
        :reblocks-lass
        :prove
        :hamcrest.matchers))
(in-package :reblocks-lass-test)


(plan 1)

(subtest "Replace this test with real staff."
  (assert-that (foo 1 2 3)
               (contains 1 2 3)))

(finalize)
