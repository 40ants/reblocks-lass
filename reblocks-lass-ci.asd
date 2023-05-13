(defsystem "reblocks-lass-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://40ants.com/reblocks-lass/"
  :class :package-inferred-system
  :description "Provides CI settings for reblocks-lass."
  :source-control (:git "https://github.com/40ants/reblocks-lass")
  :bug-tracker "https://github.com/40ants/reblocks-lass/issues"
  :pathname "src"
  :depends-on ("40ants-ci"
               "reblocks-lass-ci/ci"))
