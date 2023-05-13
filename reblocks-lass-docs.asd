(defsystem "reblocks-lass-docs"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-lass/"
  :class :package-inferred-system
  :description "Provides documentation for reblocks-lass."
  :source-control (:git "https://github.com/40ants/reblocks-lass")
  :bug-tracker "https://github.com/40ants/reblocks-lass/issues"
  :pathname "docs"
  :depends-on ("reblocks-lass"
               "reblocks-lass-docs/index"))
