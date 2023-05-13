(uiop:define-package #:reblocks-lass
  (:use :cl)
  (:nicknames #:reblocks-lass/core)
  (:import-from #:reblocks/dependencies
                #:local-dependency
                #:get-url
                #:get-content-type
                #:serve)
  (:import-from #:reblocks/utils/misc
                #:md5)
  (:import-from #:lass
                #:compile-and-write)
  (:export #:make-dependency
           #:lass-dependency
           #:css-code))
(in-package #:reblocks-lass)


(defclass lass-dependency (local-dependency)
  ((css :type string
        :initarg :css
        :reader css-code))
  (:documentation "Keeps CSS code, created using MAKE-DEPENDENCY function."))


(defmethod get-url ((dependency lass-dependency))
  "Returns a hash-like url for this dependency because it does not have
a real filename."
  (values (format nil "/static/css/~a.css"
                  (md5 (css-code dependency)))
          :local))


(defmethod serve ((dependency lass-dependency))
  "Serves static dependency from the disk."
  (values (css-code dependency)
          (get-content-type dependency)))


(defun make-dependency (lass-code)
  "This function creates Reblocks dependency with CSS style described in [LASS][LASS] DSL.

   You can use this dependency in a method of REBLOCKS/DEPENDENCIES:GET-DEPENDENCIES generic-function like this:


   ```lisp
   (defmethod reblocks/dependencies:get-dependencies ((widget source-widget))
     (append
      (list
       (reblocks-lass:make-dependency
         `(.source-widget
           :border-top \"2px solid #cc4b37\"
           (input :margin 0)
           (.dist :margin-right 1em)
           (.label-column :white-space \"nowrap\"
                          :vertical-align \"top\")
           (.field-column :width \"100%\")
           ((:and .dist .disabled) :color \"gray\")
   
           ((.source-controls > (:or form input))
            :display \"inline-block\"
            :margin-left 1em)
           (.error :color \"red\"))))
      (call-next-method)))
   ```
"
  (make-instance 'lass-dependency
                 :type :css
                 :css (compile-and-write lass-code)))
