
(in-package #:lispbuilder-sdl)

(defparameter *7x13O-font-data*
  #(0 0 86 0 66 0 66 0 132 0 212 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 80 80 96 160 174 4 4 8 8 0 0 0 0 56 32 48 64 92 16 24 32 32 0 0 0 0
      48 64 128 128 108 10 12 20 20 0 0 0 0 64 64 64 128 238 8 12 16 16 0 0 0 0 48
      72 72 48 0 0 0 0 0 0 0 0 0 0 8 8 60 16 16 0 124 0 0 0 0 0 72 104 80 144 152 8
      8 16 28 0 0 0 0 144 144 160 160 92 8 8 16 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 24 96 16 12 0 252 0
      0 0 0 0 0 96 24 6 56 192 0 252 0 0 0 0 0 0 0 252 72 72 144 144 144 0 0 0 0 0 2
      4 126 16 32 252 64 128 0 0 0 0 28 34 32 32 112 32 64 68 184 0 0 0 0 0 0 0 0 48
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 16 16 16 32 32 32 0 32 0 0 0 0 40
      40 40 0 0 0 0 0 0 0 0 0 0 0 40 40 124 40 248 80 80 0 0 0 0 0 0 16 60 80 56 40
      240 32 0 0 0 0 0 34 82 36 8 16 32 72 148 136 0 0 0 0 0 24 36 36 56 80 148 136
      116 0 0 0 0 16 16 16 0 0 0 0 0 0 0 0 0 0 8 16 32 32 64 64 32 32 16 0 0 0 0 32
      16 16 8 8 16 16 32 64 0 0 0 0 0 0 36 24 124 48 72 0 0 0 0 0 0 0 0 16 16 120 32
      32 0 0 0 0 0 0 0 0 0 0 0 0 0 56 48 64 0 0 0 0 0 0 0 124 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 16 56 16 0 0 0 4 4 8 16 16 32 64 128 128 0 0 0 0 24 36 66 66 66 132
      132 72 48 0 0 0 0 8 24 40 8 8 16 16 16 124 0 0 0 0 60 66 66 2 12 48 64 128 252
      0 0 0 0 126 2 4 8 24 4 4 132 120 0 0 0 0 4 12 20 36 72 136 252 8 8 0 0 0 0 62
      32 32 92 98 2 4 132 120 0 0 0 0 28 32 64 64 120 132 132 132 120 0 0 0 0 252 4
      8 16 32 64 64 128 128 0 0 0 0 60 66 66 66 124 132 132 132 120 0 0 0 0 120 132
      132 140 116 8 8 16 224 0 0 0 0 0 0 16 56 16 0 0 32 112 32 0 0 0 0 0 8 28 8 0 0
      56 48 64 0 0 0 4 8 16 32 64 64 32 16 8 0 0 0 0 0 0 0 126 0 0 252 0 0 0 0 0 0
      32 16 8 4 4 8 16 32 64 0 0 0 0 120 132 132 8 16 32 32 0 32 0 0 0 0 60 66 66 78
      82 172 148 128 120 0 0 0 0 24 36 66 66 66 124 132 132 132 0 0 0 0 124 34 34 34
      60 68 68 68 248 0 0 0 0 60 66 64 64 64 128 128 132 120 0 0 0 0 124 34 34 34 34
      68 68 68 248 0 0 0 0 126 64 64 64 120 128 128 128 252 0 0 0 0 126 64 64 64 120
      128 128 128 128 0 0 0 0 60 66 64 64 64 156 132 140 116 0 0 0 0 66 66 66 66 124
      132 132 132 132 0 0 0 0 124 16 16 16 16 32 32 32 248 0 0 0 0 14 4 4 4 4 8 8
      136 112 0 0 0 0 66 68 72 80 96 160 144 136 132 0 0 0 0 64 64 64 64 64 128 128
      128 252 0 0 0 0 66 102 102 90 90 132 132 132 132 0 0 0 0 66 66 98 82 74 140
      132 132 132 0 0 0 0 60 66 66 66 66 132 132 132 120 0 0 0 0 124 66 66 66 124
      128 128 128 128 0 0 0 0 60 66 66 66 66 132 164 148 120 4 0 0 0 124 66 66 66
      124 160 144 136 132 0 0 0 0 60 66 64 64 56 4 4 132 120 0 0 0 0 124 16 16 16 16
      32 32 32 32 0 0 0 0 66 66 66 66 66 132 132 132 120 0 0 0 0 132 132 136 136 80
      80 96 96 96 0 0 0 0 66 66 66 66 90 180 204 204 132 0 0 0 0 66 68 36 40 16 40
      72 68 132 0 0 0 0 68 68 40 40 16 16 32 32 32 0 0 0 0 126 2 4 8 16 32 64 128
      252 0 0 0 60 32 32 32 32 32 64 64 64 64 120 0 0 0 64 64 32 32 16 16 16 8 8 0 0
      0 60 4 4 4 4 4 8 8 8 8 120 0 0 0 16 40 68 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 252 0 0 32 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60 2 124 132 140 116 0 0 0 0 64
      64 64 92 98 66 132 196 184 0 0 0 0 0 0 0 60 66 128 128 132 120 0 0 0 0 2 2 2
      58 68 132 132 140 116 0 0 0 0 0 0 0 60 66 124 128 132 120 0 0 0 0 56 68 64 64
      240 64 128 128 128 0 0 0 0 0 0 0 58 68 136 112 128 120 132 120 0 0 32 32 64 92
      98 66 132 132 132 0 0 0 0 0 8 0 24 8 8 16 16 124 0 0 0 0 0 4 0 12 4 4 8 8 136
      136 112 0 0 64 64 64 68 88 96 144 136 132 0 0 0 0 24 8 8 8 8 16 16 16 124 0 0
      0 0 0 0 0 104 84 84 168 168 136 0 0 0 0 0 0 0 92 98 66 132 132 132 0 0 0 0 0 0
      0 60 66 66 132 132 120 0 0 0 0 0 0 0 92 98 66 196 184 128 128 128 0 0 0 0 0 58
      70 130 140 116 4 4 4 0 0 0 0 0 184 68 64 128 128 128 0 0 0 0 0 0 0 60 66 32 24
      132 120 0 0 0 0 0 32 32 120 32 64 64 68 56 0 0 0 0 0 0 0 66 66 66 132 140 116
      0 0 0 0 0 0 0 68 68 72 72 80 32 0 0 0 0 0 0 0 68 68 84 168 168 80 0 0 0 0 0 0
      0 66 36 24 48 72 132 0 0 0 0 0 0 0 66 66 132 140 116 4 132 120 0 0 0 0 0 126 4
      24 32 64 252 0 0 0 28 32 32 32 16 96 32 64 64 64 56 0 0 0 16 16 16 16 16 32 32
      32 32 0 0 0 112 8 8 8 16 28 32 16 16 16 224 0 0 0 36 84 72 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 16 0 16 16 16 32 32 32 32 0 0 0 0 16 56 84 80 160
      168 112 32 0 0 0 0 0 28 34 32 32 112 32 64 68 184 0 0 0 0 0 0 66 60 36 72 120
      132 0 0 0 0 0 68 68 40 40 124 16 248 32 32 0 0 0 0 16 16 16 16 0 32 32 32 32 0
      0 0 24 36 32 48 72 72 48 16 144 96 0 0 0 0 72 72 0 0 0 0 0 0 0 0 0 0 0 60 66
      90 82 82 164 180 132 120 0 0 0 0 56 4 60 68 60 0 248 0 0 0 0 0 0 0 20 40 80
      160 160 80 40 0 0 0 0 0 0 0 0 0 124 8 8 0 0 0 0 0 0 0 0 0 0 120 0 0 0 0 0 0 0
      0 60 66 90 86 172 180 172 132 120 0 0 0 0 124 0 0 0 0 0 0 0 0 0 0 0 0 48 72 72
      48 0 0 0 0 0 0 0 0 0 0 8 8 60 16 16 0 124 0 0 0 0 16 40 8 48 64 112 0 0 0 0 0
      0 0 48 8 48 16 80 32 0 0 0 0 0 0 0 16 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 66 66
      66 132 204 180 128 0 0 0 124 232 232 232 40 80 80 80 80 0 0 0 0 0 0 0 0 48 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 16 32 0 8 24 8 16 16 56 0 0 0 0 0 0 0 0 24 36 36
      24 0 120 0 0 0 0 0 0 0 0 80 40 20 20 40 80 160 0 0 0 0 32 96 32 64 68 236 20
      40 56 8 0 0 0 32 96 32 64 72 244 4 24 32 56 0 0 0 96 16 96 32 164 76 20 40 56
      8 0 0 0 0 16 0 16 16 32 64 132 132 120 0 0 0 16 8 0 24 36 66 66 124 132 132 0
      0 0 8 16 0 24 36 66 66 124 132 132 0 0 0 24 36 0 24 36 66 66 124 132 132 0 0 0
      50 76 0 24 36 66 66 124 132 132 0 0 0 36 36 0 24 36 66 66 124 132 132 0 0 0 24
      36 24 24 36 66 66 124 132 132 0 0 0 0 46 80 80 80 124 160 160 160 188 0 0 0 0
      60 66 64 64 64 128 128 132 120 16 32 0 16 8 0 126 64 64 112 128 128 252 0 0 0
      8 16 0 126 64 64 112 128 128 252 0 0 0 24 36 0 126 64 64 112 128 128 252 0 0 0
      36 36 0 126 64 64 112 128 128 252 0 0 0 32 16 0 124 16 16 32 32 32 248 0 0 0
      16 32 0 124 16 16 32 32 32 248 0 0 0 16 40 0 124 16 16 32 32 32 248 0 0 0 68
      68 0 124 16 16 32 32 32 248 0 0 0 0 124 34 34 34 242 68 68 68 248 0 0 0 50 76
      0 66 98 82 82 140 140 132 0 0 0 16 8 0 60 66 66 132 132 132 120 0 0 0 8 16 0
      60 66 66 132 132 132 120 0 0 0 24 36 0 60 66 66 132 132 132 120 0 0 0 50 76 0
      60 66 66 132 132 132 120 0 0 0 36 36 0 60 66 66 132 132 132 120 0 0 0 0 0 0 66
      36 24 48 72 132 0 0 0 0 2 60 70 74 74 82 164 164 196 120 128 0 0 16 8 0 66 66
      66 132 132 132 120 0 0 0 8 16 0 66 66 66 132 132 132 120 0 0 0 24 36 0 66 66
      66 132 132 132 120 0 0 0 36 36 0 66 66 66 132 132 132 120 0 0 0 8 16 0 68 68
      40 16 16 32 32 0 0 0 0 64 124 66 66 66 124 128 128 128 0 0 0 0 24 36 36 40 40
      72 68 68 88 0 0 0 0 16 8 0 60 2 124 132 140 116 0 0 0 0 8 16 0 60 2 124 132
      140 116 0 0 0 0 24 36 0 60 2 124 132 140 116 0 0 0 0 50 76 0 60 2 124 132 140
      116 0 0 0 0 36 36 0 60 2 124 132 140 116 0 0 0 24 36 24 0 60 2 124 132 140 116
      0 0 0 0 0 0 0 52 10 124 144 148 104 0 0 0 0 0 0 0 60 66 128 128 132 120 16 32
      0 0 16 8 0 60 66 124 128 132 120 0 0 0 0 8 16 0 60 66 124 128 132 120 0 0 0 0
      24 36 0 60 66 124 128 132 120 0 0 0 0 36 36 0 60 66 124 128 132 120 0 0 0 0 16
      8 0 24 8 16 16 16 124 0 0 0 0 8 16 0 24 8 16 16 16 124 0 0 0 0 24 36 0 24 8 16
      16 16 124 0 0 0 0 36 36 0 24 8 16 16 16 124 0 0 0 36 24 40 4 60 66 66 132 132
      120 0 0 0 0 50 76 0 92 98 66 132 132 132 0 0 0 0 16 8 0 60 66 66 132 132 120 0
      0 0 0 8 16 0 60 66 66 132 132 120 0 0 0 0 24 36 0 60 66 66 132 132 120 0 0 0 0
      50 76 0 60 66 66 132 132 120 0 0 0 0 36 36 0 60 66 66 132 132 120 0 0 0 0 0 16
      16 0 120 0 32 32 0 0 0 0 0 0 0 2 60 74 82 164 196 120 128 0 0 0 16 8 0 66 66
      66 132 140 116 0 0 0 0 8 16 0 66 66 66 132 140 116 0 0 0 0 24 36 0 66 66 66
      132 140 116 0 0 0 0 36 36 0 66 66 66 132 140 116 0 0 0 0 8 16 0 66 66 132 140
      116 4 132 120 0 0 0 64 64 92 98 66 132 196 184 128 128 0 0 36 36 0 66 66 132
      140 116 4 132 120))

(defparameter *font-7x13O*
  (make-instance 'bitmap-font-definition
   :width 7
   :height 13
   :data *7x13O-font-data*)
  "Contains the font data for an 7x13 bitmap font.

##### Packages

* Also supported in _LISPBUILDER-SDL-GFX_")

(defparameter *gfx-font-7x13O*
  (make-instance 'gfx-font-definition
   :width 7
   :height 13
   :data *7x13O-font-data*)
  "Contains the font data for an 7x13 bitmap font.

##### Packages

* Also supported in _LISPBUILDER-SDL-GFX_")

