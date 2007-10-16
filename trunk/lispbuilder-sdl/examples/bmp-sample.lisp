;;;; Demonstration/Test of using SDL (Simple Media Layer) library
;;;; using CFFI for foreign function interfacing...
;;;; (C)2006 Justin Heyes-Jones
;;;; see COPYING for license

;;;; To run this sample
;;;; (load "sdl_bmp_sample.lisp")
;;;; (sdl:bmp_sample) 

(in-package #:sdl-examples) 

(defun bmp-sample ()
  (sdl:with-init ()
    (sdl:window 320 320 :title-caption "simple bmp example" :icon-caption "simple bmp example")
    (setf (sdl:frame-rate) 5)
    
    (let* ((img-1 (sdl:load-image (sdl:create-path "sdl.bmp" *bmp-path*)))
	   (img-2 (sdl:load-image (sdl:create-path "lisp.bmp" *bmp-path*)
				  :key-color (sdl:color :r 253 :g 59 :b 251)))
	   (img-3 (sdl:rotate-surface 90 :surface img-2))
	   (img-4 (sdl:load-image (sdl:create-path "sdl.bmp" *bmp-path*)))
	   (img-5 (sdl:load-image (sdl:create-path "lisp.bmp" *bmp-path*)
				  :key-color-at (sdl:point :x 0 :y 0))))

      ;; Set position using 'set-position'
      (sdl:set-position-* img-1 :x 10 :y 10)
      (sdl:draw-surface img-1)
      
      ;; Set position using a 'point'
      (sdl:draw-surface-at img-2 (sdl:point :x 190 :y 10))
      
      ;; Set position using x/y spread coords
      ;; And set the key color
      (sdl:set-color-key (sdl:color :r 253 :g 59 :b 251) :surface img-3)
      (sdl:draw-surface-at-* img-3 80 100)

      ;; Specify a cell to clip the surface as if rendering from a sprite sheet
      (sdl:set-cell-* 10 10 80 80 :surface img-4)
      (sdl:draw-surface-at-* img-4 200 150)

      (sdl:draw-surface-at-* img-5 10 200))

    (sdl:update-display)
    (sdl:with-events ()
      (:quit-event () t)
      (:video-expose-event () (sdl:update-display)))))
