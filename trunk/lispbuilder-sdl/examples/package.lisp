;;; -*- lisp -*-

(in-package #:cl-user)

(defpackage #:lispbuilder-sdl-examples
  (:use #:cl #:cffi)
  (:nicknames #:sdl-examples)
  (:documentation "Examples for `lispbuilder-sdl'.")
  (:export
   ;; bezier.lisp
   #:bezier

   ;; bmp-sample.lisp
   #:bmp-sample

   ;; distance-2D.lisp
   #:distance-2d

   ;; line-drawing.lisp
   #:line-drawing

   ;; mandelbrot.lisp
   #:mandelbrot

   ;; metaballs.lisp
   #:metaballs

   ;; mouse-painter.lisp
   #:mouse-painter

   ;; objects.lisp
   #:objects

   ;; pixels.lisp
   #:pixels-1
   #:pixels-2
   #:pixels-3
   #:pixels-4

   ;; points-and-lines.lisp
   #:points-and-lines

   ;; random-rects.lisp
   #:random-rects-1
   #:random-rects-2
   #:random-rects-3

   ;; recursive-rects.lisp
   #:recursive-rects

   ;; setup-and-draw
   #:setup-and-draw

   ;; simple-font-demo
   #:simple-font-demo

   ;; vertices.lisp
   #:vertices

   ;; width-height.lisp
   #:width-height

   ;; squashed.lisp
   #:squashed))
