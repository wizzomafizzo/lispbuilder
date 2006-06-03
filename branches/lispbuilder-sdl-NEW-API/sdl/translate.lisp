
;; SDL library using CFFI for foreign function interfacing...
;; (C)2006 Luke Crook <luke@balooga.com>
;; see COPYING for license

(in-package #:lispbuilder-sdl)

(defctype sdl-surface :pointer)
(defctype sdl-rectangle :pointer)
(defctype sdl-string :string)

(cffi:defcfun ("SDL_UpperBlit" UpperBlit) :int
  (src sdl-surface)
  (srcrect sdl-rectangle)
  (dst sdl-surface)
  (dstrect sdl-rectangle))

(cffi:defcfun ("SDL_FillRect" FillRect) :int
  (dst sdl-surface)
  (dstrect sdl-rectangle)
  (color :unsigned-int))

(cffi:defcfun ("SDL_FreeSurface" FreeSurface) :void
  (surface sdl-surface))

(cffi:defcfun ("SDL_WM_SetCaption" WM_SetCaption) :void
  (title sdl-string)
  (icon sdl-string))

(cffi:defcfun ("SDL_RWFromFile" RWFromFile) :pointer
  (file sdl-string)
  (mode sdl-string))

(cffi:defcfun ("SDL_VideoDriverName" VideoDriverName) :pointer
  (namebuf :pointer)
  (maxlen :int))

(cffi:defcfun ("SDL_SetClipRect" SetClipRect) :void
  (surface sdl-surface)
  (rect sdl-rectangle))

(cffi:defcfun ("SDL_GetClipRect" GetClipRect) :void
  (surface sdl-surface)
  (rect :pointer))

(defmethod translate-to-foreign (value (type (eql 'sdl-surface)))
  (unless (is-valid-ptr value)
    (error "Error: sdl-surface must be a valid pointer"))
  value)

(defmethod translate-to-foreign (value (type (eql 'sdl-rectangle)))
  (if value
      (let ((rect (cffi:foreign-alloc 'SDL_Rect)))
	(cffi:with-foreign-slots ((x y w h) rect SDL_rect)
	  (if value
	      (setf x (rect-x value)
		    y (rect-y value)
		    w (rect-w value)
		    h (rect-h value))))
	(values rect t))
      (values (cffi:null-pointer) nil)))

(defmethod translate-to-foreign (value (type (eql 'sdl-string)))
  (if (null value)
      (setf value ""))
  (values (cffi:foreign-string-alloc value) t))

(defmethod free-translated-object (ptr (name (eql 'sdl-rectangle)) free-p)
  (if free-p
      (cffi:foreign-free ptr)))

(defmethod free-translated-object (ptr (name (eql 'sdl-string)) free-p)
  (if free-p
      (cffi:foreign-string-free ptr)))
