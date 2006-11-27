;;; -*- lisp -*-

(in-package #:cl-user)

(defpackage #:lispbuilder-sdl
  (:use #:cl #:cffi)
  (:nicknames #:sdl)
  (:documentation "The main package of `lispbuilder-sdl'.")
  (:export

   ;; These are exports from translate.lisp
   #:FillRect
   #:FreeSurface
   #:GetClipRect
   #:RWFromFile
   #:SetClipRect
   #:UpperBlit
   #:VideoDriverName
   #:WM_SetCaption
   #:to-int
   #:vec-to-int
   
   ;; These are exports from util-sdl.lisp
   #:add-vertex
   #:apply-surface
   #:apply-surface-free
   #:blit-surface
   #:bounds-from-surface
   #:bounds-from-wh
   #:bounds-collision?
   #:calculate-curve
   #:catmull-rom-spline
   #:distance
   #:draw-image
   #:draw-bezier
   #:draw-curve
   #:draw-shape
   #:check-bounds
   #:clamp				; from cl-sdl
   #:clamp-to-sbyte
   #:clamp-to-ubyte
   #:clamp-to-sshort
   #:clamp-to-ushort
   #:clear-colorkey
   #:clear-display
   #:color
   #:color-a
   #:color-b
   #:color-g
   #:color-r
   #:convert-surface-to-display-format
   #:copy-rectangle
   #:copy-surf-to-rect
   #:copy-surface
   #:create-RWops-from-file
   #:create-surface
   #:create-surface
   #:delta-clamp			; from cl-sdl
   #:display-cursor
   #:draw-box
   #:draw-box-xy
   #:draw-box-pp
   #:draw-rectangle
   #:draw-rectangle-xy
   #:draw-line
   #:draw-line-xy
   #:draw-hline
   #:draw-hline-xy
   #:draw-vline
   #:draw-vline-xy
   #:draw-pixel				; from cl-sdl
   #:draw-point
   #:draw-random-rect
   #:fill-surface
   #:get-clip-rect
   #:get-framerate
   #:get-native-window
   #:get-pixel
   #:get-sdlcolor
   #:get-surface-rect
   #:get-ticks
   #:get-timescale
   #:get-video-info
   #:get-worldtime
   #:init-sdl
   #:key=
   #:modifier=
   #:is-valid-ptr
   #:list-modes
   #:load-bmp
   #:load-image
   #:make-sdl-rect
   #:map1-n
   #:mapa-b
   #:map-color
   #:moveby-rectangle
   #:moveto-rectangle
   #:must-lock-p			; from cl-sdl
   #:new-event
   #:pixelformat
   #:point
   #:point-x
   #:point-y
   #:points-in-range
   #:pos-x
   #:pos-y
   #:push-quitevent
   #:put-pixel
   #:query-cursor
   #:random+1
   #:random-color
   #:random-point
   #:random-rect
   #:rect-from-midpoint
   #:rect-from-wh
   #:rect-from-pp
   #:rect-from-xy
   #:rect-h
   #:rect-w
   #:rect-x
   #:rect-x2
   #:rect-y
   #:rect-y2
   #:rectangle
   #:sdl-must-lock
   #:set-alpha
   #:set-clip-rect
   #:set-colorkey
   #:set-flags
   #:set-framerate
   #:set-screen
   #:set-timescale
   #:set-window
   #:set-worldtime
   #:surf-h
   #:surf-w
   #:to-degree
   #:to-radian
   #:update-display
   #:update-surface 
   #:video-driver-name
   #:warp-mouse
   #:with-display
   #:with-color
   #:with-bezier
   #:with-curve   
   #:with-shape   
   #:with-events
   #:with-init
   #:with-locked-surface		; from cl-sdl
   #:with-must-lock-surface
   #:with-pixels
   #:write-pixel
   #:write-point
   #:with-position
   #:with-possible-lock-and-update	; from cl-sdl
   #:with-rectangle
   #:with-surface
   #:with-surfaces
   #:with-surfaces-free
   #:with-surface-lock
   *default-color*
   *default-display*
   *default-position*
   *default-rectangle*
   *default-surface*
   *default-font*
   
   ;; These are exports from sdlswig.i
   #:AUDIO_S16
   #:AUDIO_S16LSB
   #:AUDIO_S16MSB
   #:AUDIO_S8
   #:AUDIO_U16
   #:AUDIO_U16LSB
   #:AUDIO_U16MSB
   #:AUDIO_U8
   #:Aloss
   #:Amask
   #:Ashift
   #:BitsPerPixel
   #:Bloss
   #:Bmask
   #:Bshift
   #:BytesPerPixel
   #:CDstatus
   #:Gloss
   #:Gmask
   #:Gshift
   #:Rloss
   #:Rmask
   #:Rshift
   #:SDLKey
   #:SDLMod
   #:SDL_ACTIVEEVENT
   #:SDL_ALLEVENTS
   #:SDL_ALL_HOTKEYS
   #:SDL_ALPHA_OPAQUE
   #:SDL_ALPHA_TRANSPARENT
   #:SDL_ANYFORMAT
   #:SDL_APPACTIVE
   #:SDL_APPINPUTFOCUS
   #:SDL_APPMOUSEFOCUS
   #:SDL_ASYNCBLIT
   #:SDL_AUDIO_TRACK
   #:SDL_ActiveEvent
   #:SDL_AddTimer
   #:SDL_AllocRW
   #:SDL_AudioCVT
   #:SDL_AudioDriverName
   #:SDL_AudioInit
   #:SDL_AudioQuit
   #:SDL_AudioSpec
   #:SDL_BUTTON_LEFT
   #:SDL_BUTTON_MIDDLE
   #:SDL_BUTTON_RIGHT
   #:SDL_BUTTON_WHEELDOWN
   #:SDL_BUTTON_WHEELUP
   #:SDL_BuildAudioCVT
   #:SDL_CD
   #:SDL_CDClose
   #:SDL_CDEject
   #:SDL_CDName
   #:SDL_CDNumDrives
   #:SDL_CDOpen
   #:SDL_CDPause
   #:SDL_CDPlay
   #:SDL_CDPlayTracks
   #:SDL_CDResume
   #:SDL_CDStatus
   #:SDL_CDStop
   #:SDL_CDtrack
   #:SDL_ClearError
   #:SDL_CloseAudio
   #:SDL_Color
   #:SDL_CondBroadcast
   #:SDL_CondSignal
   #:SDL_CondWait
   #:SDL_CondWaitTimeout
   #:SDL_ConvertAudio
   #:SDL_ConvertSurface
   #:SDL_CreateCond
   #:SDL_CreateCursor
   #:SDL_CreateMutex
   #:SDL_CreateRGBSurface
   #:SDL_CreateRGBSurfaceFrom
   #:SDL_CreateSemaphore
   #:SDL_CreateYUVOverlay
   #:SDL_Cursor
   #:SDL_DATA_TRACK
   #:SDL_DEFAULT_REPEAT_DELAY
   #:SDL_DEFAULT_REPEAT_INTERVAL
   #:SDL_DISABLE
   #:SDL_DOUBLEBUF
   #:SDL_Delay
   #:SDL_DestroyCond
   #:SDL_DestroyMutex
   #:SDL_DestroySemaphore
   #:SDL_DisplayFormat
   #:SDL_DisplayFormatAlpha
   #:SDL_DisplayYUVOverlay
   #:SDL_ENABLE
   #:SDL_EVENT_RESERVED2
   #:SDL_EVENT_RESERVED3
   #:SDL_EVENT_RESERVED4
   #:SDL_EVENT_RESERVED5
   #:SDL_EVENT_RESERVED6
   #:SDL_EVENT_RESERVED7
   #:SDL_EVENT_RESERVEDA
   #:SDL_EVENT_RESERVEDB
   #:SDL_EnableKeyRepeat
   #:SDL_EnableUNICODE
   #:SDL_Error
   #:SDL_EventState
   #:SDL_ExposeEvent
   #:SDL_FULLSCREEN
   #:SDL_FillRect
   #:SDL_Flip
   #:SDL_FreeCursor
   #:SDL_FreeRW
   #:SDL_FreeSurface
   #:SDL_FreeWAV
   #:SDL_FreeYUVOverlay
   #:SDL_GL_GetProcAddress
   #:SDL_GL_LoadLibrary
   #:SDL_GL_Lock
   #:SDL_GL_SwapBuffers
   #:SDL_GL_Unlock
   #:SDL_GL_UpdateRects
   #:SDL_GLattr
   #:SDL_GetAppState
   #:SDL_GetAudioStatus
   #:SDL_GetClipRect
   #:SDL_GetCursor
   #:SDL_GetError
   #:SDL_GetEventFilter
   #:SDL_GetGammaRamp
   #:SDL_GetKeyName
   #:SDL_GetKeyState
   #:SDL_GetModState
   #:SDL_GetMouseState
   #:SDL_GetRGB
   #:SDL_GetRGBA
   #:SDL_GetRelativeMouseState
   #:SDL_GetTicks
   #:SDL_GetVideoInfo
   #:SDL_GetVideoSurface
   #:SDL_GrabMode
   #:SDL_HAT_CENTERED
   #:SDL_HAT_DOWN
   #:SDL_HAT_LEFT
   #:SDL_HAT_RIGHT
   #:SDL_HAT_UP
   #:SDL_HWACCEL
   #:SDL_HWPALETTE
   #:SDL_HWSURFACE
   #:SDL_IGNORE
   #:SDL_INIT_AUDIO
   #:SDL_INIT_CDROM
   #:SDL_INIT_EVENTTHREAD
   #:SDL_INIT_EVERYTHING
   #:SDL_INIT_JOYSTICK
   #:SDL_INIT_NOPARACHUTE
   #:SDL_INIT_TIMER
   #:SDL_INIT_VIDEO
   #:SDL_IYUV_OVERLAY
   #:SDL_Init
   #:SDL_InitSubSystem
   #:SDL_JOYAXISMOTION
   #:SDL_JOYBALLMOTION
   #:SDL_JOYBUTTONDOWN
   #:SDL_JOYBUTTONUP
   #:SDL_JOYHATMOTION
   #:SDL_JoyAxisEvent
   #:SDL_JoyBallEvent
   #:SDL_JoyButtonEvent
   #:SDL_JoyHatEvent
   #:SDL_JoystickClose
   #:SDL_JoystickEventState
   #:SDL_JoystickGetAxis
   #:SDL_JoystickGetBall
   #:SDL_JoystickGetButton
   #:SDL_JoystickGetHat
   #:SDL_JoystickIndex
   #:SDL_JoystickName
   #:SDL_JoystickNumAxes
   #:SDL_JoystickNumBalls
   #:SDL_JoystickNumButtons
   #:SDL_JoystickNumHats
   #:SDL_JoystickOpen
   #:SDL_JoystickOpened
   #:SDL_JoystickUpdate
   #:SDL_KEYDOWN
   #:SDL_KEYUP
   #:SDL_LOGPAL
   #:SDL_Linked_Version
   #:SDL_ListModes
   #:SDL_LoadBMP_RW
   #:SDL_LoadWAV_RW
   #:SDL_LockAudio
   #:SDL_LockSurface
   #:SDL_LockYUVOverlay
   #:SDL_LowerBlit
   #:SDL_MAJOR_VERSION
   #:SDL_MAX_TRACKS
   #:SDL_MINOR_VERSION
   #:SDL_MIX_MAXVOLUME
   #:SDL_MOUSEBUTTONDOWN
   #:SDL_MOUSEBUTTONUP
   #:SDL_MOUSEMOTION
   #:SDL_MUTEX_TIMEDOUT
   #:SDL_MapRGB
   #:SDL_MapRGBA
   #:SDL_MixAudio
   #:SDL_MouseButtonEvent
   #:SDL_MouseMotionEvent
   #:SDL_NOEVENT
   #:SDL_NOFRAME
   #:SDL_NUMEVENTS
   #:SDL_NumJoysticks
   #:SDL_OPENGL
   #:SDL_OPENGLBLIT
   #:SDL_OpenAudio
   #:SDL_Overlay
   #:SDL_PATCHLEVEL
   #:SDL_PHYSPAL
   #:SDL_PREALLOC
   #:SDL_Palette
   #:SDL_PauseAudio
   #:SDL_PeepEvents
   #:SDL_PixelFormat
   #:SDL_PollEvent
   #:SDL_PumpEvents
   #:SDL_PushEvent
   #:SDL_QUERY
   #:SDL_Quit
   #:SDL_QuitEvent
   #:SDL_QuitSubSystem
   #:SDL_RESIZABLE
   #:SDL_RLEACCEL
   #:SDL_RLEACCELOK
   #:SDL_RWFromConstMem
   #:SDL_RWFromFP
   #:SDL_RWFromFile
   #:SDL_RWFromMem
   #:SDL_RWops
   #:SDL_RWops_hidden
   #:SDL_RWops_hidden_mem
   #:SDL_RWops_hidden_stdio
   #:SDL_RWops_hidden_unknown
   #:SDL_Rect
   #:SDL_RemoveTimer
   #:SDL_ResizeEvent
   #:SDL_SRCALPHA
   #:SDL_SRCCOLORKEY
   #:SDL_SWSURFACE
   #:SDL_SYSWMEVENT
   #:SDL_SaveBMP_RW
   #:SDL_SemPost
   #:SDL_SemTryWait
   #:SDL_SemValue
   #:SDL_SemWait
   #:SDL_SemWaitTimeout
   #:SDL_SetAlpha
   #:SDL_SetClipRect
   #:SDL_SetColorKey
   #:SDL_SetColors
   #:SDL_SetCursor
   #:SDL_SetEventFilter
   #:SDL_SetGamma
   #:SDL_SetGammaRamp
   #:SDL_SetModState
   #:SDL_SetPalette
   #:SDL_SetTimer
   #:SDL_SetVideoMode
   #:SDL_ShowCursor
   #:SDL_SoftStretch
   #:SDL_Surface
   #:SDL_SysWMEvent
   #:SDL_TIMESLICE
   #:SDL_USEREVENT
   #:SDL_UYVY_OVERLAY
   #:SDL_UnlockAudio
   #:SDL_UnlockSurface
   #:SDL_UnlockYUVOverlay
   #:SDL_UpdateRect
   #:SDL_UpdateRects
   #:SDL_UpperBlit
   #:SDL_UserEvent
   #:SDL_VIDEOEXPOSE
   #:SDL_VIDEORESIZE
   #:SDL_VideoDriverName
   #:SDL_VideoInit
   #:SDL_VideoModeOK
   #:SDL_VideoQuit
   #:SDL_WM_GetCaption
   #:SDL_WM_GrabInput
   #:SDL_WM_IconifyWindow
   #:SDL_WM_SetCaption
   #:SDL_WM_SetIcon
   #:SDL_WM_ToggleFullScreen
   #:SDL_WaitEvent
   #:SDL_WarpMouse
   #:SDL_WasInit
   #:SDL_YUY2_OVERLAY
   #:SDL_YV12_OVERLAY
   #:SDL_YVYU_OVERLAY
   #:SDL_audiostatus
   #:SDL_errorcode
   #:SDL_eventaction
   #:SDL_mutexP
   #:SDL_mutexV
   #:SDL_version
   #:TIMER_RESOLUTION
   #:UnusedBits
   #:alpha
   #:area
   #:autoclose
   #:axis
   #:b
   #:ball
   #:base
   #:buf
   #:button
   #:button
   #:callback
   #:channels
   #:clip_rect
   #:close
   #:code
   #:colorkey
   #:colors
   #:cur_frame
   #:cur_track
   #:data
   #:data1
   #:data2
   #:dst_format
   #:filter_index
   #:filters
   #:flags
   #:format
   #:format_version
   #:fp
   #:freq
   #:g
   #:gain
   #:h
   #:hat
   #:here
   #:hidden
   #:hot_x
   #:hot_y
   #:hw_overlay
   #:hwdata
   #:hwdata
   #:hwfuncs
   #:id
   #:len
   #:len_cvt
   #:len_mult
   #:len_ratio
   #:length
   #:locked
   #:major
   #:map
   #:mask
   #:mem
   #:minor
   #:msg
   #:ncolors
   #:needed
   #:numtracks
   #:offset
   #:padding
   #:palette
   #:patch
   #:pitch
   #:pitches
   #:pixels
   #:planes
   #:r
   #:rate_incr
   #:read
   #:refcount
   #:samples
   #:save
   #:seek
   #:silence
   #:size
   #:src_format
   #:state
   #:status
   #:stdio
   #:stop
   #:track
   #:type
   #:unknown
   #:unused
   #:unused1
   #:userdata
   #:value
   #:w
   #:which
   #:wm_cursor
   #:write
   #:x
   #:xrel
   #:y
   #:yrel

   ;; These are exports from post-swig.lisp
   #:CD_FPS
   #:CD_INDRIVE
   #:FRAMES_TO_MSF
   #:KMOD_ALT
   #:KMOD_CTRL
   #:KMOD_META
   #:KMOD_SHIFT
   #:MSF_TO_FRAMES
   #:SDL_ACTIVEEVENTMASK
   #:SDL_BUTTON
   #:SDL_BUTTON_LMASK
   #:SDL_BUTTON_MMASK
   #:SDL_BUTTON_RMASK
   #:SDL_BlitSurface
   #:SDL_COMPILEDVERSION
   #:SDL_EVENTMASK
   #:SDL_Event
   #:SDL_GL_GetAttribute
   #:SDL_GL_SetAttribute
   #:SDL_GetWMInfo
   #:SDL_HAT_LEFTDOWN
   #:SDL_HAT_LEFTUP
   #:SDL_HAT_RIGHTDOWN
   #:SDL_HAT_RIGHTUP
   #:SDL_JOYAXISMOTIONMASK
   #:SDL_JOYBALLMOTIONMASK
   #:SDL_JOYBUTTONDOWNMASK
   #:SDL_JOYBUTTONUPMASK
   #:SDL_JOYEVENTMASK
   #:SDL_JOYHATMOTIONMASK
   #:SDL_KEYDOWNMASK
   #:SDL_KEYUPMASK
   #:SDL_KeyboardEvent
   #:SDL_LoadBMP
   #:SDL_LoadWAV
   #:SDL_LockMutex
   #:SDL_MOUSEBUTTONDOWNMASK
   #:SDL_MOUSEBUTTONUPMASK
   #:SDL_MOUSEEVENTMASK
   #:SDL_MOUSEMOTIONMASK
   #:SDL_MUSTLOCK
   #:SDL_OutOfMemory
   #:SDL_PRESSED
   #:SDL_QUITMASK
   #:SDL_RELEASED
   #:SDL_SYSWMEVENTMASK 
   #:SDL_SYSWM_TYPE
   #:SDL_SaveBMP
   #:SDL_SysWMinfo
   #:SDL_SysWMinfo_info
   #:SDL_SysWMinfo_info_x11
   #:SDL_SysWMmsg
   #:SDL_SysWMmsg_event
   #:SDL_UnlockMutex
   #:SDL_VERSION
   #:SDL_VERSIONNUM
   #:SDL_VERSION_ATLEAST
   #:SDL_VIDEOEXPOSEMASK
   #:SDL_VIDEORESIZEMASK
   #:SDL_VideoInfo
   #:SDL_bool
   #:SDL_keysym
   #:active-event
   #:attr
   #:display
   #:event
   #:expose-event
   #:fswindow
   #:hardware-flags
   #:hglrc
   #:hwnd
   #:info
   #:info
   #:joy-axis-event
   #:joy-ball-event
   #:joy-button-event
   #:joy-hat-event
   #:keyboard-event
   #:keysym
   #:lParam
   #:lock_func
   #:mod
   #:mouse-button-event
   #:mouse-motion-event
   #:msg
   #:quit-event
   #:resize-event
   #:scancode
   #:state
   #:subsystem
   #:sym
   #:sys-wm-event
   #:type
   #:unicode
   #:unlock_func
   #:user-event
   #:value
   #:version
   #:vfmt
   #:video_mem
   #:wParam
   #:which
   #:window
   #:wmwindow
   #:x11
   #:xevent))