;;; -*- lisp -*-

(in-package #:cl-user)

(defpackage #:lispbuilder-sdl-gfx
  (:use #:cl #:cffi)
  (:nicknames #:sdl-gfx)
  (:documentation "The main package of `lispbuilder-gfx-sdl'.")
  ;; SDL_gfx
  ;;
  (:export
   #:FPS_DEFAULT
   #:FPS_LOWER_LIMIT
   #:FPS_UPPER_LIMIT
   #:GFX_FONTDATAMAX
   #:M_PI
   #:SDL_GFXPRIMITIVES_MAJOR
   #:SDL_GFXPRIMITIVES_MICRO
   #:SDL_GFXPRIMITIVES_MINOR
   #:SDL_framerateDelay
   #:SDL_getFramerate
   #:SDL_imageFilterAbsDiff
   #:SDL_imageFilterAdd
   #:SDL_imageFilterAddByte
   #:SDL_imageFilterAddByteToHalf
   #:SDL_imageFilterAddUint
   #:SDL_imageFilterAlignStack
   #:SDL_imageFilterBinarizeUsingThreshold
   #:SDL_imageFilterBitAnd
   #:SDL_imageFilterBitNegatio
   #:SDL_imageFilterBitOr
   #:SDL_imageFilterClipToRange
   #:SDL_imageFilterConvolveKernel3x3Divide
   #:SDL_imageFilterConvolveKernel3x3ShiftRight
   #:SDL_imageFilterConvolveKernel5x5Divide
   #:SDL_imageFilterConvolveKernel5x5ShiftRight
   #:SDL_imageFilterConvolveKernel7x7Divide
   #:SDL_imageFilterConvolveKernel7x7ShiftRight
   #:SDL_imageFilterConvolveKernel9x9Divide
   #:SDL_imageFilterConvolveKernel9x9ShiftRight
   #:SDL_imageFilterDiv
   #:SDL_imageFilterMMXdetect
   #:SDL_imageFilterMMXoff
   #:SDL_imageFilterMMXon
   #:SDL_imageFilterMean
   #:SDL_imageFilterMult
   #:SDL_imageFilterMultByByte
   #:SDL_imageFilterMultDivby2
   #:SDL_imageFilterMultDivby4
   #:SDL_imageFilterMultNor
   #:SDL_imageFilterNormalizeLinear
   #:SDL_imageFilterRestoreStack
   #:SDL_imageFilterShiftLeft
   #:SDL_imageFilterShiftLeftByte
   #:SDL_imageFilterShiftLeftUint
   #:SDL_imageFilterShiftRight
   #:SDL_imageFilterShiftRightAndMultByByte
   #:SDL_imageFilterShiftRightUint
   #:SDL_imageFilterSobelX
   #:SDL_imageFilterSobelXShiftRight
   #:SDL_imageFilterSub
   #:SDL_imageFilterSubByte
   #:SDL_imageFilterSubUint
   #:SDL_initFramerate
   #:SDL_setFramerate
   #:SMOOTHING_OFF
   #:SMOOTHING_ON
   #:aacircleColor
   #:aacircleRGBA
   #:aaellipseColor
   #:aaellipseRGBA
   #:aalineColor
   #:aalineRGBA
   #:aapolygonColor
   #:aapolygonRGB
   #:aatrigonColor
   #:aatrigonRGBA
   #:bezierColor
   #:bezierRGBA
   #:boxColor
   #:boxRGBA
   #:characterColor
   #:characterRGBA
   #:circleColor
   #:circleRGBA
   #:ellipseColor
   #:ellipseRGBA
   #:filledCircleColor
   #:filledCircleRGBA
   #:filledEllipseColor
   #:filledEllipseRGBA
   #:filledPieColor
   #:filledPieRGBA
   #:filledPolygonColor
   #:filledPolygonRGBA
   #:filledTrigonColor
   #:filledTrigonRGBA
   #:gfxPrimitivesFontdata
   #:gfxPrimitivesSetFont
   #:hlineColor
   #:hlineRGBA
   #:lineColor
   #:lineRGBA
   #:pieColor
   #:pieRGBA
   #:pixelColor
   #:pixelRGBA
   #:polygonColor
   #:polygonRGBA
   #:rectangleColor
   #:rectangleRGBA
   #:rotozoomSurface
   #:rotozoomSurfaceSize
   #:rotozoomSurfaceSizeXY
   #:rotozoomSurfaceXY
   #:stringColor
   #:stringRGBA
   #:tColorRGBA
   #:tColorY
   #:trigonColor
   #:trigonRGBA
   #:vlineColor
   #:vlineRGBA
   #:zoomSurface
   #:zoomSurfaceSize
   ;; util-sdl_gfx
   ))

