#|
  This file is a part of weblocks-lass project.
|#


(in-package :cl-user)
(defpackage weblocks-lass-asd
  (:use :cl :asdf))
(in-package :weblocks-lass-asd)


(defsystem weblocks-lass
  :version (:read-file-form "version.lisp-expr")
  :author ""
  :license ""
  :depends-on (:weblocks
               :lass)
  :components ((:module "src"
                :components
                ((:file "weblocks-lass"))))
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

