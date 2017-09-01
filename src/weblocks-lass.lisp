(in-package :cl-user)
(defpackage weblocks.lass
  (:use :cl)
  (:export
   #:make-dependency
   #:lass-dependency))
(in-package weblocks.lass)


(defclass lass-dependency (weblocks.dependencies:local-dependency)
  ((css :type string
        :initarg :css
        :reader get-css)))


(defmethod weblocks.dependencies:get-url ((dependency lass-dependency))
  "Returns a hash-like url for this dependency because it does not have
a real filename."
  (values (format nil "/static/css/~a.css"
                  (weblocks::md5 (get-css dependency)))
          :local))


(defmethod weblocks.dependencies:serve ((dependency lass-dependency))
  "Serves static dependency from the disk."
  (values (get-css dependency)
          (weblocks.dependencies:get-content-type dependency)))


(defun make-dependency (lass-code)
  (make-instance 'lass-dependency
                 :type :css
                 :css (lass:compile-and-write lass-code)))
