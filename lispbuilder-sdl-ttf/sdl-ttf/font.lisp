
(in-package #:lispbuilder-sdl-ttf)

(defclass font (sdl::sdl-font)
  ((foreign-pointer-to-font :accessor fp-font :initform nil :initarg :font)
   (font-style :accessor font-style :initform nil :initarg :style)
   (font-encoding :accessor font-encoding :initform nil :initarg :encoding)
   (generation :accessor generation :initform *generation* :initarg :generation))
  (:documentation
   "A `FONT` object is wrapper around a foreign `TTF_Font` object. 

The `FONT` object maintains the most recent surface `SDL:SURFACE` created by a call to any of the 
`RENDER-STRING*` functions. Use [DRAW-FONT](#draw-font), [DRAW-FONT-AT](#draw-font-at) 
or [DRAW-FONT-AT-*](#draw-font-at-*) to draw the cached surface.

Prior to the first call to a `RENDER-STRING*` function, the cached surface is `NIL`."))

(defun new-font (fp)
  "Creates and returns a new `FONT` object when `FP` is a pointer to a foreign `TTF_Font` object. 
Returns `NIL` otherwise." 
  (when (sdl:is-valid-ptr fp)
    (make-instance 'font :font fp)))

(defmethod free-font ((font font))
  "Free the resources used by the font `FONT`. 
Free's any cached surface. Closes the `TTF_Font` object only when the `FONT` was created within the 
current [INIT-TTF](#init-ttf)/[QUIT-TTF](#quit-ttf) sequence. 
In other words, when `\(EQ \(GENERATION FONT\) *GENERATION\)`. Otherwise it is assumed that the `TTF_Font` 
was closed in a previous call to `QUIT-TTF`."
  (tg:cancel-finalization font)
  (if (eq (generation font) *generation*)
      (sdl-ttf-cffi::ttf-close-font (fp-font font)))
  (when (sdl:cached-surface font)
    (sdl:free-cached-surface font)))