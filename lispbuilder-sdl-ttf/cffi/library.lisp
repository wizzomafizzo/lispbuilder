;;; -*- lisp -*-

(in-package #:lispbuilder-sdl-ttf-cffi) 

#+win32(eval-when (:compile-toplevel :load-toplevel :execute)
  (pushnew (merge-pathnames "../bin/" (directory-namestring (or *load-truename* *default-pathname-defaults*)))
	   cffi:*foreign-library-directories*
	   :test #'equal))

#+win32(cffi:define-foreign-library zlib1
	 (:windows "zlib1.dll"))
#+win32(cffi:define-foreign-library libfreetype-6
	 (:windows "libfreetype-6.dll"))

(cffi:define-foreign-library sdl-ttf
  (:darwin (:framework "libSDL_ttf-2.0"))
  (:windows (:or "SDL_ttf.dll"))
  (:unix (:or "libSDL_ttf2.0" "libSDL_ttf-2.0.so.0")))

(cffi:define-foreign-library sdl-ttf-glue
  (:windows "lispbuilder-sdl-ttf-glue.dll")
  (:unix "lispbuilder-sdl-ttf-glue.so"))

(cffi:use-foreign-library zlib1)
(cffi:use-foreign-library libfreetype-6)
(cffi:use-foreign-library sdl-ttf)
(cffi:use-foreign-library sdl-ttf-glue)
