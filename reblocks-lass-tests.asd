(defsystem "reblocks-lass-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-lass/"
  :class :package-inferred-system
  :description "Provides tests for reblocks-lass."
  :source-control (:git "https://github.com/40ants/reblocks-lass")
  :bug-tracker "https://github.com/40ants/reblocks-lass/issues"
  :pathname "t"
  :depends-on ("reblocks-lass-tests/core")
  :perform (test-op (op c)
                    (unless (symbol-call :rove :run c)
                      (error "Tests failed"))))
