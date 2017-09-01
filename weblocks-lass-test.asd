#|
  This file is a part of weblocks-lass project.
|#

(in-package :cl-user)
(defpackage weblocks-lass-test-asd
  (:use :cl :asdf))
(in-package :weblocks-lass-test-asd)

(defsystem weblocks-lass-test
  :author ""
  :license ""
  :depends-on (:weblocks-lass
               :prove
               :hamcrest-prove)
  :components ((:module "t"
                :components
                ((:test-file "weblocks-lass"))))
  :description "Test system for weblocks-lass"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
