;;; pkg.lisp --- BBDB

;; Big Brother Data Base

;;; Code:
(in-package :user)

(defpkg :bbdb-int
  (:use :std-lisp)
  (:export :*bbdb-packages*))

(in-package :bbdb-int)
(defparameter *bbdb-packages* nil)
(setq *defpkg-hook* (lambda (x) (pushnew (package-name x) *bbdb-packages* :test 'string=)))

(defpkg :bbdb/core
  (:use :core-lisp)
  (:export :*bbdb-server* :*bbdb-clients* :bbdb 
   :bbdb-service :bbdb-service-error :bbdb-service-warning))
           

(defpkg :bbdb/proto
  (:use :core-lisp :bbdb/core)
  (:export :entity :person :place :organization :company))
