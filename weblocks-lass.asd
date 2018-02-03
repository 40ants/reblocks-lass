(defsystem weblocks-lass
  :version (:read-file-form "version.lisp-expr")
  :class :package-inferred-system
  :author ""
  :license ""
  :pathname "src"
  :depends-on ("weblocks-lass/core")
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.rst"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq)
                (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (test-op weblocks-lass-test))))

