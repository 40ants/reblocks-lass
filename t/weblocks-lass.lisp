(in-package :cl-user)
(defpackage weblocks-lass-test
  (:use :cl
        :weblocks-lass
        :prove
        :hamcrest.matchers))
(in-package :weblocks-lass-test)


(plan 1)

(subtest "Replace this test with real staff."
  (assert-that (foo 1 2 3)
               (contains 1 2 3)))

(finalize)
