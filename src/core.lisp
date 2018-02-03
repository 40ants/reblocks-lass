(in-package :cl-user)
(defpackage weblocks-lass
  (:use :cl)
  (:import-from #:weblocks/dependencies
                #:local-dependency
                #:get-url
                #:get-content-type
                #:serve)
  (:import-from #:weblocks/utils/misc
                #:md5)
  (:import-from #:lass
                #:compile-and-write)
  (:export
   #:make-dependency
   #:lass-dependency))
(in-package weblocks-lass)


(defclass lass-dependency (local-dependency)
  ((css :type string
        :initarg :css
        :reader get-css)))


(defmethod get-url ((dependency lass-dependency))
  "Returns a hash-like url for this dependency because it does not have
a real filename."
  (values (format nil "/static/css/~a.css"
                  (md5 (get-css dependency)))
          :local))


(defmethod serve ((dependency lass-dependency))
  "Serves static dependency from the disk."
  (values (get-css dependency)
          (get-content-type dependency)))


(defun make-dependency (lass-code)
  (make-instance 'lass-dependency
                 :type :css
                 :css (compile-and-write lass-code)))
