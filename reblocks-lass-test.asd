(defsystem reblocks-lass-test
  :author ""
  :license ""
  :depends-on (:reblocks-lass
               :prove
               :hamcrest-prove)
  :components ((:module "t"
                :components
                ((:test-file "reblocks-lass"))))
  :description "Test system for reblocks-lass"

  :defsystem-depends-on (:prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
