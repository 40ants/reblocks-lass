#-asdf3.1 (error "reblocks-lass requires ASDF 3.1 because for lower versions pathname does not work for package-inferred systems.")
(defsystem "reblocks-lass"
  :description "A helper for Reblocks framework to define CSS dependencies in LASS syntax."
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-lass/"
  :source-control (:git "https://github.com/40ants/reblocks-lass")
  :bug-tracker "https://github.com/40ants/reblocks-lass/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :depends-on ("reblocks-lass/core")
  :in-order-to ((test-op (test-op "reblocks-lass-tests"))))
