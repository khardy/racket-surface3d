#lang racket/base

(require plot)
(require "surface3d-xyz.rkt")

(plot3d
  (list
    (surface3d/x 
      (lambda (y z) 0) ; plot x = 0
      -2 2 ; y-min/y-max
      -2 2 ; z-min/z-max
      #:label "x = 0"
      #:color 3
      )
    (surface3d/y
      (lambda (x y) 0) ; plot y = 0 
      -2 2 ; x-min/x-max
      -2 2 ; z-min/z-max
      #:label "y = 0"
      #:color 5
      )
    (surface3d/z
      (lambda (x y) 0) ; plot z = 0 
      -2 2 ; x-min/x-max
      -2 2 ; y-min/y-max
      #:label "z = 0"
      #:color 7
      )
    )
  #:x-min -3 #:x-max 3
  #:y-min -3 #:y-max 3
  #:z-min -3 #:z-max 3
  #:altitude 25
  )
