;;; Contents extracted from the "stackage" list of Haskell packages:
;;; https://www.stackage.org/, accessed 14–18 Sept 2015.
;;; Herbie run on Haskell code by "Mike Izbicki" <mike@izbicki.me>

;;; The libraries here licensed under MIT, BSD, BSD-3, GPL-2, or GPL-3 licenses.
;;; Subexpressions used with an understanding of fair use.
;;; If you are a library author and would like to be removed from this test suite,
;;; please let us know at <herbie@cs.washington.edu>.

(herbie-test (x y)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, A"
 (sqrt (+ x y))
 (sqrt (+ x y)))

(herbie-test (x y z t)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, B"
 (/ (- (+ x y) z) (* t 2.0))
 (/ (- (+ x y) z) (* t 2.0)))

(herbie-test (x y)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, C"
 (sqrt (fabs (- x y)))
 (sqrt (fabs (- x y))))

(herbie-test (x y z t)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, D"
 (+ x (/ (* y (- z x)) t))
 (-
  x
  (+ (* x (/ y t)) (* (- z) (/ y t)))))

(herbie-test (x y z t a)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, E"
 (+ x (/ (* y (- z t)) a))
 (if (< y -1.0761266216389975e-10)
   (+ x (/ 1 (/ (/ a (- z t)) y)))
   (if (< y 2.894426862792089e-49)
     (+ x (/ (* y (- z t)) a))
     (+ x (/ y (/ a (- z t)))))))

(herbie-test (x y z t a)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, F"
 (- x (/ (* y (- z t)) a))
 (if (< y -1.0761266216389975e-10)
   (- x (/ 1 (/ (/ a (- z t)) y)))
   (if (< y 2.894426862792089e-49)
     (- x (/ (* y (- z t)) a))
     (- x (/ y (/ a (- z t)))))))

(herbie-test (x y z)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, G"
 (* (+ x y) (+ z 1.0))
 (* (+ x y) (+ z 1.0)))

(herbie-test (x y z)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, H"
 (* (+ x y) (- 1.0 z))
 (* (+ x y) (- 1.0 z)))

(herbie-test (x y z)
 "Optimisation.CirclePacking:place from circle-packing-0.1.0.4, I"
 (+ (+ x y) z)
 (+ (+ x y) z))

(herbie-test (x y z t a b c i j)
 "Data.Colour.Matrix:determinant from colour-2.3.3, A"
 (+
  (-
   (* x (- (* y z) (* t a)))
   (* b (- (* c z) (* t i))))
  (* j (- (* c a) (* y i))))
 (if (< x -1.469694296777705e-64)
   (+
    (-
     (* x (- (* y z) (* t a)))
     (/
      (* b (- (sqr (* c z)) (sqr (* t i))))
      (+ (* c z) (* t i))))
    (* j (- (* c a) (* y i))))
   (if (< x 3.2113527362226803e-147)
     (-
      (* (- (* b i) (* x a)) t)
      (-
       (* z (* c b))
       (* j (- (* c a) (* y i)))))
     (+
      (-
       (* x (- (* y z) (* t a)))
       (/
        (* b (- (sqr (* c z)) (sqr (* t i))))
        (+ (* c z) (* t i))))
      (* j (- (* c a) (* y i)))))))

(herbie-test (x y z t a)
 "Data.Colour.Matrix:inverse from colour-2.3.3, B"
 (/ (- (* x y) (* z t)) a)
 (if (< z -2.468684968699548e+170)
   (- (* (/ y a) x) (* (/ t a) z))
   (if (< z 6.309831121978371e-71)
     (/ (- (* x y) (* z t)) a)
     (- (* (/ y a) x) (* (/ t a) z)))))

(herbie-test (x y)
 "Data.Colour.CIE.Chromaticity:chromaCoords from colour-2.3.3"
 (- (- 1.0 x) y)
 (- (- 1.0 x) y))

(herbie-test (x y)
 "Data.Colour.RGB:hslsv from colour-2.3.3, A"
 (/ (+ x y) 2.0)
 (/ (+ x y) 2.0))

(herbie-test (x y z t a)
 "Data.Colour.RGB:hslsv from colour-2.3.3, B"
 (+ (/ (* 60.0 (- x y)) (- z t)) (* a 120.0))
 (+ (/ 60.0 (/ (- z t) (- x y))) (* a 120.0)))

(herbie-test (x y)
 "Data.Colour.RGB:hslsv from colour-2.3.3, C"
 (/ (- x y) (- 2.0 (+ x y)))
 (-
  (/ x (- 2.0 (+ x y)))
  (/ y (- 2.0 (+ x y)))))

(herbie-test (x y)
 "Data.Colour.RGB:hslsv from colour-2.3.3, D"
 (/ (- x y) (+ x y))
 (- (/ x (+ x y)) (/ y (+ x y))))

(herbie-test (x y)
 "Data.Colour.RGB:hslsv from colour-2.3.3, E"
 (/ (- x y) x)
 (- 1 (/ y x)))

(herbie-test (x y)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, A"
 (- (+ x y) (* x y))
 (- (+ x y) (* x y)))

(herbie-test (x y)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, B"
 (* x (+ y 1.0))
 (+ x (* x y)))

(herbie-test (x y)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, C"
 (- (* x 2.0) y)
 (- (* x 2.0) y))

(herbie-test (x y z)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, D"
 (+ x (* (* (- y x) 6.0) (- (/ 2.0 3.0) z)))
 (+ x (* (* (- y x) 6.0) (- (/ 2.0 3.0) z))))

(herbie-test (x y z)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, E"
 (+ x (* (* (- y x) 6.0) z))
 (- x (* (* 6.0 z) (- x y))))

(herbie-test (x)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, F"
 (+ x (/ 1.0 3.0))
 (+ x (/ 1.0 3.0)))

(herbie-test (x)
 "Data.Colour.RGBSpace.HSL:hsl from colour-2.3.3, G"
 (- x (/ 1.0 3.0))
 (- x (/ 1.0 3.0)))

(herbie-test (x y)
 "Data.Colour.RGBSpace.HSV:hsv from colour-2.3.3, H"
 (* x (- 1.0 y))
 (* x (- 1.0 y)))

(herbie-test (x y z)
 "Data.Colour.RGBSpace.HSV:hsv from colour-2.3.3, I"
 (* x (- 1.0 (* y z)))
 (* x (- 1.0 (* y z))))

(herbie-test (x y z)
 "Data.Colour.RGBSpace.HSV:hsv from colour-2.3.3, J"
 (* x (- 1.0 (* (- 1.0 y) z)))
 (if (<
      (* x (- 1.0 (* (- 1.0 y) z)))
      -1.618195973607049e+50)
   (+ x (* (- 1.0 y) (* (- z) x)))
   (if (<
        (* x (- 1.0 (* (- 1.0 y) z)))
        3.892237649663903e+134)
     (- (* (* x y) z) (- (* x z) x))
     (+ x (* (- 1.0 y) (* (- z) x))))))

(herbie-test (x y)
 "Data.Colour.SRGB:invTransferFunction from colour-2.3.3"
 (/ (+ x y) (+ y 1.0))
 (/ (+ x y) (+ y 1.0)))

(herbie-test (x y)
 "Data.Colour.SRGB:transferFunction from colour-2.3.3"
 (- (* (+ x 1.0) y) x)
 (- (* (+ x 1.0) y) x))

(herbie-test (x)
 "Data.Colour.CIE:lightness from colour-2.3.3"
 (- (* x 116.0) 16.0)
 (- (* x 116.0) 16.0))

(herbie-test (x)
 "Data.Colour.CIE:cieLABView from colour-2.3.3, A"
 (+ (* (/ 841.0 108.0) x) (/ 4.0 29.0))
 (+ (* (/ 841.0 108.0) x) (/ 4.0 29.0)))

(herbie-test (x y)
 "Data.Colour.CIE:cieLABView from colour-2.3.3, B"
 (* 500.0 (- x y))
 (* 500.0 (- x y)))

(herbie-test (x y)
 "Data.Colour.CIE:cieLABView from colour-2.3.3, C"
 (* 200.0 (- x y))
 (* 200.0 (- x y)))

(herbie-test (x y)
 "Data.Colour.CIE:cieLAB from colour-2.3.3, A"
 (* (* (- x (/ 16.0 116.0)) 3.0) y)
 (* y (- (* x 3.0) 0.41379310344827586)))

(herbie-test (x)
 "Data.Colour.CIE:cieLAB from colour-2.3.3, B"
 (/ (+ x 16.0) 116.0)
 (/ (+ x 16.0) 116.0))

(herbie-test (x y)
 "Data.Colour.CIE:cieLAB from colour-2.3.3, C"
 (+ x (/ y 500.0))
 (+ x (/ y 500.0)))

(herbie-test (x y)
 "Data.Colour.CIE:cieLAB from colour-2.3.3, D"
 (- x (/ y 200.0))
 (- x (/ y 200.0)))

(herbie-test (x y z t a)
 "Diagrams.Solve.Tridiagonal:solveTriDiagonal from diagrams-solve-0.1, A"
 (/ (- x (* y z)) (- t (* a z)))
 (if (< z -32113435955957344.0)
   (-
    (/ x (- t (* a z)))
    (/ y (- (/ t z) a)))
   (if (< z 3.5139522372978296e-86)
     (* (- x (* y z)) (/ 1 (- t (* a z))))
     (-
      (/ x (- t (* a z)))
      (/ y (- (/ t z) a))))))

(herbie-test (x y z t)
 "Diagrams.Solve.Tridiagonal:solveTriDiagonal from diagrams-solve-0.1, B"
 (/ x (- y (* z t)))
 (if (< x -1.618195973607049e+50)
   (/ 1 (- (/ y x) (* (/ z x) t)))
   (if (< x 2.1378306434876444e+131)
     (/ x (- y (* z t)))
     (/ 1 (- (/ y x) (* (/ z x) t))))))

(herbie-test (x y z)
 "Diagrams.Solve.Tridiagonal:solveTriDiagonal from diagrams-solve-0.1, C"
 (- x (* y z))
 (/
  (+ x (* y z))
  (/ (+ x (* y z)) (- x (* y z)))))

(herbie-test (x y z)
 "Diagrams.Solve.Tridiagonal:solveCyclicTriDiagonal from diagrams-solve-0.1, A"
 (/ (* x y) z)
 (if (< z -4.262230790519429e-138)
   (/ (* x y) z)
   (if (< z 1.7042130660650472e-164)
     (/ x (/ z y))
     (* (/ x z) y))))

(herbie-test (x y z t a b)
 "Diagrams.Solve.Tridiagonal:solveCyclicTriDiagonal from diagrams-solve-0.1, B"
 (/
  (+ x (/ (* y z) t))
  (+ (+ a 1.0) (/ (* y b) t)))
 (if (< t -1.3659085366310088e-271)
   (*
    1
    (*
     (+ x (* (/ y t) z))
     (/ 1 (+ (+ a 1.0) (* (/ y t) b)))))
   (if (< t 3.036967103737246e-130)
     (/ z b)
     (*
      1
      (*
       (+ x (* (/ y t) z))
       (/ 1 (+ (+ a 1.0) (* (/ y t) b))))))))

(herbie-test (x y z)
 "Diagrams.Solve.Polynomial:quadForm from diagrams-solve-0.1, A"
 (- x (* (* y 4.0) z))
 (- x (* (* y 4.0) z)))

(herbie-test (x y z)
 "Diagrams.Solve.Polynomial:quadForm from diagrams-solve-0.1, B"
 (* (/ 1.0 2.0) (+ x (* y (sqrt z))))
 (* (/ 1.0 2.0) (+ x (* y (sqrt z)))))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:quadForm from diagrams-solve-0.1, C"
 (/ x (* y 2.0))
 (/ x (* y 2.0)))

(herbie-test (x y z t a b)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, A"
 (+
  (- (* x 2.0) (* (* (* y 9.0) z) t))
  (* (* a 27.0) b))
 (if (< y 7.590524218811189e-161)
   (+
    (- (* x 2.0) (* (* (* y 9.0) z) t))
    (* a (* 27.0 b)))
   (+
    (- (* x 2.0) (* 9.0 (* y (* t z))))
    (* (* a 27.0) b))))

(herbie-test (x y z)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, B"
 (- (* (* x 3.0) y) z)
 (- (* x (* 3.0 y)) z))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, C"
 (/ x (* y 3.0))
 (/ (/ x y) 3.0))

(herbie-test (x y z t)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, D"
 (*
  (/ 1.0 3.0)
  (acos
   (*
    (/ (* 3.0 (/ x (* y 27.0))) (* z 2.0))
    (sqrt t))))
 (/
  (acos
   (*
    (/ (/ x 27.0) (* y z))
    (/ (sqrt t) (/ 2.0 3.0))))
  3.0))

(herbie-test (x y z t a b c i j k)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, E"
 (-
  (-
   (+
    (-
     (* (* (* (* x 18.0) y) z) t)
     (* (* a 4.0) t))
    (* b c))
   (* (* x 4.0) i))
  (* (* j 27.0) k))
 (if (< t -1.6210815397541398e-69)
   (-
    (-
     (* (* 18.0 t) (* (* x y) z))
     (* (+ (* a t) (* i x)) 4.0))
    (- (* (* k j) 27.0) (* c b)))
   (if (< t 165.68027943805222)
     (+
      (-
       (* (* 18.0 y) (* x (* z t)))
       (* (+ (* a t) (* i x)) 4.0))
      (- (* c b) (* 27.0 (* k j))))
     (-
      (-
       (* (* 18.0 t) (* (* x y) z))
       (* (+ (* a t) (* i x)) 4.0))
      (- (* (* k j) 27.0) (* c b))))))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, F"
 (* (* x 27.0) y)
 (* (* x 27.0) y))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, G"
 (* (/ 1.0 2.0) (+ x y))
 (/ (+ x y) 2.0))

(herbie-test (x y z t)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, H"
 (+
  (- x (/ y (* z 3.0)))
  (/ t (* (* z 3.0) y)))
 (+
  (- x (/ y (* z 3.0)))
  (/ (/ t (* z 3.0)) y)))

(herbie-test (x y z t a)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, I"
 (/ (- (* x y) (* (* z 9.0) t)) (* a 2.0))
 (if (< a -2.090464557976709e+86)
   (-
    (* 0.5 (/ (* y x) a))
    (* 4.5 (/ t (/ a z))))
   (if (< a 2.144030707833976e+99)
     (/ (- (* x y) (* z (* 9.0 t))) (* a 2.0))
     (-
      (* (/ y a) (* x 0.5))
      (* (/ t a) (* z 4.5))))))

(herbie-test (x y z t a b c)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, J"
 (/
  (+
   (- (* (* x 9.0) y) (* (* (* z 4.0) t) a))
   b)
  (* z c))
 (if (<
      (/
       (+
        (-
         (* (* x 9.0) y)
         (* (* (* z 4.0) t) a))
        b)
       (* z c))
      -1.100156740804105e-171)
   (/
    (+
     (- (* (* x 9.0) y) (* (* z 4.0) (* t a)))
     b)
    (* z c))
   (if (<
        (/
         (+
          (-
           (* (* x 9.0) y)
           (* (* (* z 4.0) t) a))
          b)
         (* z c))
        -0.0)
     (/
      (/
       (+
        (-
         (* (* x 9.0) y)
         (* (* (* z 4.0) t) a))
        b)
       z)
      c)
     (if (<
          (/
           (+
            (-
             (* (* x 9.0) y)
             (* (* (* z 4.0) t) a))
            b)
           (* z c))
          1.1708877911747488e-53)
       (/
        (+
         (-
          (* (* x 9.0) y)
          (* (* z 4.0) (* t a)))
         b)
        (* z c))
       (if (<
            (/
             (+
              (-
               (* (* x 9.0) y)
               (* (* (* z 4.0) t) a))
              b)
             (* z c))
            2.876823679546137e+130)
         (-
          (+
           (* (* 9.0 (/ y c)) (/ x z))
           (/ b (* c z)))
          (* 4.0 (/ (* a t) c)))
         (if (<
              (/
               (+
                (-
                 (* (* x 9.0) y)
                 (* (* (* z 4.0) t) a))
                b)
               (* z c))
              1.3838515042456319e+158)
           (/
            (+
             (-
              (* (* x 9.0) y)
              (* (* z 4.0) (* t a)))
             b)
            (* z c))
           (-
            (+
             (* 9.0 (* (/ y (* c z)) x))
             (/ b (* c z)))
            (* 4.0 (/ (* a t) c)))))))))

(herbie-test (x y z t a b)
 "Diagrams.Solve.Polynomial:cubForm  from diagrams-solve-0.1, K"
 (-
  (* (* 2.0 (sqrt x)) (cos (- y (/ (* z t) 3.0))))
  (/ a (* b 3.0)))
 (if (< z -1.3793337487235141e+129)
   (-
    (*
     (* 2.0 (sqrt x))
     (cos (- (/ 1 y) (/ (/ 0.3333333333333333 z) t))))
    (/ (/ a 3.0) b))
   (if (< z 3.516290613555987e+106)
     (-
      (* (* (sqrt x) 2.0) (cos (- y (* (/ t 3.0) z))))
      (/ (/ a 3.0) b))
     (-
      (*
       (cos (- y (/ (/ 0.3333333333333333 z) t)))
       (* 2.0 (sqrt x)))
      (/ (/ a b) 3.0)))))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:quartForm  from diagrams-solve-0.1, A"
 (- x (* (/ 3.0 8.0) y))
 (- x (* (/ 3.0 8.0) y)))

(herbie-test (x y z t)
 "Diagrams.Solve.Polynomial:quartForm  from diagrams-solve-0.1, B"
 (+ (- (* (/ 1.0 8.0) x) (/ (* y z) 2.0)) t)
 (- (+ (/ x 8.0) t) (* (/ z 2.0) y)))

(herbie-test (x y z t a b c)
 "Diagrams.Solve.Polynomial:quartForm  from diagrams-solve-0.1, C"
 (+
  (-
   (+ (* x y) (/ (* z t) 16.0))
   (/ (* a b) 4.0))
  c)
 (+
  (-
   (+ (* x y) (/ (* z t) 16.0))
   (/ (* a b) 4.0))
  c))

(herbie-test (x y z)
 "Diagrams.Solve.Polynomial:quartForm  from diagrams-solve-0.1, D"
 (- (/ (* x y) 2.0) (/ z 8.0))
 (- (/ (* x y) 2.0) (/ z 8.0)))

(herbie-test (x y)
 "Diagrams.Solve.Polynomial:quartForm  from diagrams-solve-0.1, E"
 (- x (/ y 4.0))
 (- x (/ y 4.0)))

(herbie-test (x y)
 "Text.Parsec.Token:makeTokenParser from parsec-3.1.9, A"
 (/ (+ x y) 10.0)
 (/ (+ x y) 10.0))

(herbie-test (x y z)
 "Text.Parsec.Token:makeTokenParser from parsec-3.1.9, B"
 (* (+ x y) z)
 (* (+ x y) z))

(herbie-test (x y)
 "Numeric.Interval.Internal:bisect from intervals-0.7.1, A"
 (+ x (/ (- y x) 2.0))
 (* 0.5 (+ x y)))

(herbie-test (x y)
 "Numeric.Interval.Internal:scale from intervals-0.7.1, B"
 (/ (* x y) 2.0)
 (/ (* x y) 2.0))

(herbie-test (x y z t)
 "Linear.V2:$cdot from linear-1.19.1.3, A"
 (+ (* x y) (* z t))
 (+ (* x y) (* z t)))

(herbie-test (x y z t)
 "Linear.V3:cross from linear-1.19.1.3"
 (- (* x y) (* z t))
 (- (* x y) (* z t)))

(herbie-test (x y z t a b)
 "Linear.V3:$cdot from linear-1.19.1.3, B"
 (+ (+ (* x y) (* z t)) (* a b))
 (+ (+ (* x y) (* z t)) (* a b)))

(herbie-test (x y z t a b c i)
 "Linear.V4:$cdot from linear-1.19.1.3, C"
 (+
  (+ (+ (* x y) (* z t)) (* a b))
  (* c i))
 (+
  (+ (+ (* x y) (* z t)) (* a b))
  (* c i)))

(herbie-test (x y z)
 "Main:bigenough2 from A"
 (+ x (* y (+ z x)))
 (+ x (* y (+ z x))))

(herbie-test (x)
 "Main:bigenough1 from B"
 (+ x (* x x))
 (+ (sqr x) x))

(herbie-test (x)
 "Main:bigenough3 from C"
 (- (sqrt (+ x 1.0)) (sqrt x))
 (/ 1.0 (+ (sqrt (+ x 1.0)) (sqrt x))))

(herbie-test (x y z)
 "Linear.Quaternion:$c/ from linear-1.19.1.3, A"
 (+
  (+ (+ (* x y) (* z z)) (* z z))
  (* z z))
 (+ (* (* 3 z) z) (* y x)))

(herbie-test (x y z)
 "Linear.Quaternion:$c/ from linear-1.19.1.3, B"
 (+
  (- (- (* x y) (* y z)) (* y y))
  (* y y))
 (* (- x z) y))

(herbie-test (x y z)
 "Linear.Quaternion:$c/ from linear-1.19.1.3, C"
 (-
  (- (+ (* x y) (* y y)) (* y z))
  (* y y))
 (* (- x z) y))

(herbie-test (x y z)
 "Linear.Quaternion:$c/ from linear-1.19.1.3, D"
 (-
  (+ (- (* x y) (* y y)) (* y y))
  (* y z))
 (* (- x z) y))

(herbie-test (x y)
 "Linear.Quaternion:$c/ from linear-1.19.1.3, E"
 (+
  (+ (+ (* x x) (* y y)) (* y y))
  (* y y))
 (+ (sqr x) (* y (+ y (+ y y)))))

(herbie-test (x y)
 "Graphics.Rasterific.Linear:$cquadrance from Rasterific-0.6.1"
 (+ (* x x) (* y y))
 (+ (sqr x) (sqr y)))

(herbie-test (x y z)
 "Linear.Quaternion:$ctanh from linear-1.19.1.3"
 (/ (* x (/ (sin y) y)) z)
 (if (< z -4.2173720203427147e-29)
   (/ (* x (/ 1 (/ y (sin y)))) z)
   (if (< z 4.446702369113811e+64)
     (/ x (* z (/ y (sin y))))
     (/ (* x (/ 1 (/ y (sin y)))) z))))

(herbie-test (x y)
 "Linear.Quaternion:$ccosh from linear-1.19.1.3"
 (/ (* (sin x) (sinh y)) x)
 (* (sin x) (/ (sinh y) x)))

(herbie-test (x y)
 "Linear.Quaternion:$csinh from linear-1.19.1.3"
 (* (cosh x) (/ (sin y) y))
 (/ (* (cosh x) (sin y)) y))

(herbie-test (x y z)
 "Linear.Quaternion:$ctan from linear-1.19.1.3"
 (/ (* (cosh x) (/ y x)) z)
 (if (< y -4.618902267687042e-52)
   (* (/ (/ y z) x) (cosh x))
   (if (< y 1.038530535935153e-39)
     (/ (/ (* (cosh x) y) x) z)
     (* (/ (/ y z) x) (cosh x)))))

(herbie-test (x y)
 "Linear.Quaternion:$ccos from linear-1.19.1.3"
 (* (sin x) (/ (sinh y) y))
 (* (sin x) (/ (sinh y) y)))

(herbie-test (x y)
 "Linear.Quaternion:$csin from linear-1.19.1.3"
 (* (cos x) (/ (sinh y) y))
 (* (cos x) (/ (sinh y) y)))

(herbie-test (x y)
 "Linear.Quaternion:$clog from linear-1.19.1.3"
 (sqrt (+ (* x x) y))
 (if (< x -1.5097698010472593e+153)
   (- (+ (* 1/2 (/ y x)) x))
   (if (< x 5.582399551122541e+57)
     (sqrt (+ (sqr x) y))
     (+ (* 1/2 (/ y x)) x))))

(herbie-test (x y)
 "Linear.Quaternion:$cexp from linear-1.19.1.3"
 (* x (/ (sin y) y))
 (* x (/ (sin y) y)))

(herbie-test (x y z t a b c i j k y0 y1 y2 y3 y4 y5)
 "Linear.Matrix:det44 from linear-1.19.1.3"
 (+
  (-
   (+
    (+
     (-
      (*
       (- (* x y) (* z t))
       (- (* a b) (* c i)))
      (*
       (- (* x j) (* z k))
       (- (* y0 b) (* y1 i))))
     (*
      (- (* x y2) (* z y3))
      (- (* y0 c) (* y1 a))))
    (*
     (- (* t j) (* y k))
     (- (* y4 b) (* y5 i))))
   (*
    (- (* t y2) (* y y3))
    (- (* y4 c) (* y5 a))))
  (*
   (- (* k y2) (* j y3))
   (- (* y4 y1) (* y5 y0))))
 (if (< y4 -7.206256231996481e+60)
   (-
    (-
     (*
      (- (* b a) (* i c))
      (- (* y x) (* t z)))
     (-
      (*
       (- (* j x) (* k z))
       (- (* y0 b) (* i y1)))
      (*
       (- (* j t) (* k y))
       (- (* y4 b) (* y5 i)))))
    (-
     (/
      (- (* y2 t) (* y3 y))
      (/ 1 (- (* y4 c) (* y5 a))))
     (*
      (- (* y2 k) (* y3 j))
      (- (* y4 y1) (* y5 y0)))))
   (if (< y4 -3.364603505246317e-66)
     (+
      (-
       (-
        (-
         (* (* t c) (* i z))
         (* (* a t) (* b z)))
        (* (* y c) (* i x)))
       (*
        (- (* b y0) (* i y1))
        (- (* j x) (* k z))))
      (-
       (*
        (- (* y0 c) (* a y1))
        (- (* x y2) (* z y3)))
       (-
        (*
         (- (* t y2) (* y y3))
         (- (* y4 c) (* a y5)))
        (*
         (- (* y1 y4) (* y5 y0))
         (- (* k y2) (* j y3))))))
     (if (< y4 -1.2000065055686116e-105)
       (+
        (+
         (-
          (*
           (- (* j t) (* k y))
           (- (* y4 b) (* y5 i)))
          (*
           (* y3 y)
           (- (* y5 a) (* y4 c))))
         (+
          (* (* y5 a) (* t y2))
          (*
           (- (* k y2) (* j y3))
           (- (* y4 y1) (* y5 y0)))))
        (-
         (*
          (- (* x y2) (* z y3))
          (- (* c y0) (* a y1)))
         (-
          (*
           (- (* b y0) (* i y1))
           (- (* j x) (* k z)))
          (*
           (- (* y x) (* z t))
           (- (* b a) (* i c))))))
       (if (< y4 6.718963124057495e-279)
         (+
          (-
           (-
            (-
             (* (* k y) (* y5 i))
             (* (* y b) (* y4 k)))
            (* (* y5 t) (* i j)))
           (-
            (*
             (- (* y2 t) (* y3 y))
             (- (* y4 c) (* y5 a)))
            (*
             (- (* y2 k) (* y3 j))
             (- (* y4 y1) (* y5 y0)))))
          (-
           (*
            (- (* b a) (* i c))
            (- (* y x) (* t z)))
           (-
            (*
             (- (* j x) (* k z))
             (- (* y0 b) (* i y1)))
            (*
             (- (* y2 x) (* y3 z))
             (- (* c y0) (* y1 a))))))
         (if (< y4 4.77962681403792e-222)
           (+
            (+
             (-
              (*
               (- (* j t) (* k y))
               (- (* y4 b) (* y5 i)))
              (*
               (* y3 y)
               (- (* y5 a) (* y4 c))))
             (+
              (* (* y5 a) (* t y2))
              (*
               (- (* k y2) (* j y3))
               (- (* y4 y1) (* y5 y0)))))
            (-
             (*
              (- (* x y2) (* z y3))
              (- (* c y0) (* a y1)))
             (-
              (*
               (- (* b y0) (* i y1))
               (- (* j x) (* k z)))
              (*
               (- (* y x) (* z t))
               (- (* b a) (* i c))))))
           (if (< y4 2.2852241541266835e-175)
             (+
              (-
               (-
                (-
                 (* (* k y) (* y5 i))
                 (* (* y b) (* y4 k)))
                (* (* y5 t) (* i j)))
               (-
                (*
                 (- (* y2 t) (* y3 y))
                 (- (* y4 c) (* y5 a)))
                (*
                 (- (* y2 k) (* y3 j))
                 (- (* y4 y1) (* y5 y0)))))
              (-
               (*
                (- (* b a) (* i c))
                (- (* y x) (* t z)))
               (-
                (*
                 (- (* j x) (* k z))
                 (- (* y0 b) (* i y1)))
                (*
                 (- (* y2 x) (* y3 z))
                 (- (* c y0) (* y1 a))))))
             (+
              (-
               (+
                (+
                 (-
                  (*
                   (- (* x y) (* z t))
                   (- (* a b) (* c i)))
                  (-
                   (* k (* i (* z y1)))
                   (+
                    (* j (* i (* x y1)))
                    (* y0 (* k (* z b))))))
                 (-
                  (* z (* y3 (* a y1)))
                  (+
                   (* y2 (* x (* a y1)))
                   (* y0 (* z (* c y3))))))
                (*
                 (- (* t j) (* y k))
                 (- (* y4 b) (* y5 i))))
               (*
                (- (* t y2) (* y y3))
                (- (* y4 c) (* y5 a))))
              (*
               (- (* k y2) (* j y3))
               (- (* y4 y1) (* y5 y0)))))))))))

(herbie-test (x y z t a b c i j)
 "Linear.Matrix:det33 from linear-1.19.1.3"
 (+
  (-
   (* x (- (* y z) (* t a)))
   (* b (- (* c z) (* i a))))
  (* j (- (* c t) (* i y))))
 (if (< t -8.120978919195912e-33)
   (-
    (* x (- (* z y) (* a t)))
    (-
     (* b (- (* z c) (* a i)))
     (* (- (* c t) (* y i)) j)))
   (if (< t -4.712553818218485e-169)
     (+
      (-
       (* x (- (* y z) (* t a)))
       (* b (- (* c z) (* i a))))
      (/
       (* j (- (sqr (* c t)) (sqr (* i y))))
       (+ (* c t) (* i y))))
     (if (< t -7.633533346031584e-308)
       (-
        (* x (- (* z y) (* a t)))
        (-
         (* b (- (* z c) (* a i)))
         (* (- (* c t) (* y i)) j)))
       (if (< t 1.0535888557455487e-139)
         (+
          (-
           (* x (- (* y z) (* t a)))
           (* b (- (* c z) (* i a))))
          (/
           (* j (- (sqr (* c t)) (sqr (* i y))))
           (+ (* c t) (* i y))))
         (-
          (* x (- (* z y) (* a t)))
          (-
           (* b (- (* z c) (* a i)))
           (* (- (* c t) (* y i)) j))))))))

(herbie-test (x y)
 "Linear.Matrix:fromQuaternion from linear-1.19.1.3, A"
 (* 2.0 (- (* x x) (* x y)))
 (* (* x 2.0) (- x y)))

(herbie-test (x y)
 "Linear.Matrix:fromQuaternion from linear-1.19.1.3, B"
 (* 2.0 (+ (* x x) (* x y)))
 (* (* x 2.0) (+ x y)))

(herbie-test (x y z t)
 "Linear.Projection:inverseInfinitePerspective from linear-1.19.1.3"
 (* (- (* x y) (* z y)) t)
 (if (< t -9.231879582886777e-80)
   (* (* y t) (- x z))
   (if (< t 2.543067051564877e+83)
     (* y (* t (- x z)))
     (* (* y (- x z)) t))))

(herbie-test (x y z t)
 "Linear.Projection:infinitePerspective from linear-1.19.1.3, A"
 (/ (* x 2.0) (- (* y z) (* t z)))
 (if (<
      (/ (* x 2.0) (- (* y z) (* t z)))
      -2.559141628295061e-13)
   (* (/ x (* (- y t) z)) 2.0)
   (if (<
        (/ (* x 2.0) (- (* y z) (* t z)))
        1.045027827330126e-269)
     (/ (* (/ x z) 2.0) (- y t))
     (* (/ x (* (- y t) z)) 2.0))))

(herbie-test (x y)
 "Linear.Projection:inversePerspective from linear-1.19.1.3, B"
 (/ (- x y) (* (* x 2.0) y))
 (- (/ 0.5 y) (/ 0.5 x)))

(herbie-test (x y)
 "Linear.Projection:inversePerspective from linear-1.19.1.3, C"
 (/ (+ x y) (* (* x 2.0) y))
 (+ (/ 0.5 x) (/ 0.5 y)))

(herbie-test (x y)
 "Linear.Projection:perspective from linear-1.19.1.3, A"
 (/ (+ x y) (- x y))
 (/ 1 (- (/ x (+ x y)) (/ y (+ x y)))))

(herbie-test (x y)
 "Linear.Projection:perspective from linear-1.19.1.3, B"
 (/ (* (* x 2.0) y) (- x y))
 (if (< x -1.7210442634149447e+81)
   (* (/ (* 2.0 x) (- x y)) y)
   (if (< x 8.364504563556443e+16)
     (/ (* x 2.0) (/ (- x y) y))
     (* (/ (* 2.0 x) (- x y)) y))))

(herbie-test (x y)
 "Physics.ForceLayout:coulombForce from force-layout-0.4.0.2"
 (/ x (* y y))
 (/ (/ x y) y))

(herbie-test (x y)
 "Codec.Picture.Types:toneMapping from JuicyPixels-3.2.6.1"
 (/ (* x (+ (/ x y) 1.0)) (+ x 1.0))
 (* (/ x 1) (/ (+ (/ x y) 1.0) (+ x 1.0))))

(herbie-test (x y z t a b)
 "Codec.Picture.Jpg.FastDct:referenceDct from JuicyPixels-3.2.6.1"
 (*
  (* x (cos (/ (* (* (+ (* y 2.0) 1.0) z) t) 16.0)))
  (cos (/ (* (* (+ (* a 2.0) 1.0) b) t) 16.0)))
 (*
  x
  (cos
   (*
    (/ b 16.0)
    (/ t (+ (- 1.0 (* a 2.0)) (sqr (* a 2.0))))))))

(herbie-test (x)
 "Main:i from "
 (+ (+ (+ (+ x x) x) x) x)
 (+ (+ (+ (+ x x) x) x) x))

(herbie-test (x y z t)
 "Main:z from "
 (+
  (+
   (+
    (- (sqrt (+ x 1.0)) (sqrt x))
    (- (sqrt (+ y 1.0)) (sqrt y)))
   (- (sqrt (+ z 1.0)) (sqrt z)))
  (- (sqrt (+ t 1.0)) (sqrt t)))
 (+
  (+
   (+
    (/ 1.0 (+ (sqrt (+ x 1.0)) (sqrt x)))
    (/ 1.0 (+ (sqrt (+ y 1.0)) (sqrt y))))
   (/ 1.0 (+ (sqrt (+ z 1.0)) (sqrt z))))
  (- (sqrt (+ t 1.0)) (sqrt t))))

(herbie-test (x y z t a b c i)
 "Diagrams.ThreeD.Shapes:frustum from diagrams-lib-1.3.0.3, A"
 (*
  2.0
  (-
   (+ (* x y) (* z t))
   (* (* (+ a (* b c)) c) i)))
 (*
  2.0
  (-
   (+ (* x y) (* z t))
   (* (+ a (* b c)) (* c i)))))

(herbie-test (x y z)
 "Diagrams.ThreeD.Shapes:frustum from diagrams-lib-1.3.0.3, B"
 (+ x (* (- y x) z))
 (+ x (* (- y x) z)))

(herbie-test (x y z)
 "Diagrams.ThreeD.Transform:aboutY from diagrams-lib-1.3.0.3"
 (+ (* x (cos y)) (* z (sin y)))
 (+ (* x (cos y)) (* z (sin y))))

(herbie-test (x y z)
 "Diagrams.ThreeD.Transform:aboutX from diagrams-lib-1.3.0.3, A"
 (- (* x (cos y)) (* z (sin y)))
 (- (* x (cos y)) (* z (sin y))))

(herbie-test (x y z)
 "Diagrams.ThreeD.Transform:aboutX from diagrams-lib-1.3.0.3, B"
 (+ (* x (sin y)) (* z (cos y)))
 (+ (* x (sin y)) (* z (cos y))))

(herbie-test (x y z)
 "Diagrams.Color.HSV:lerp  from diagrams-contrib-1.3.0.5"
 (+ (* (- 1.0 x) y) (* x z))
 (- y (* x (- y z))))

(herbie-test (x y z)
 "Diagrams.TwoD.Segment.Bernstein:evaluateBernstein from diagrams-lib-1.3.0.3"
 (/ (* x (+ (- y z) 1.0)) z)
 (if (< x -2.71483106713436e-162)
   (- (* (+ 1 y) (/ x z)) x)
   (if (< x 3.874108816439546e-197)
     (* (* x (+ (- y z) 1.0)) (/ 1 z))
     (- (* (+ 1 y) (/ x z)) x))))

(herbie-test (x y)
 "Diagrams.Segment:$catParam from diagrams-lib-1.3.0.3, A"
 (* (* (* x 3.0) x) y)
 (* (* x 3.0) (* x y)))

(herbie-test (x y)
 "Diagrams.Segment:$catParam from diagrams-lib-1.3.0.3, B"
 (* (* (* x 3.0) y) y)
 (* (* x (* 3.0 y)) y))

(herbie-test (x)
 "Diagrams.Segment:$catParam from diagrams-lib-1.3.0.3, C"
 (* (* x x) x)
 (* x (* x x)))

(herbie-test (x)
 "Diagrams.Tangent:$catParam from diagrams-lib-1.3.0.3, D"
 (* 3.0 (+ (- (* (* x 3.0) x) (* x 4.0)) 1.0))
 (+ 3.0 (- (* (* 9.0 x) x) (* 12.0 x))))

(herbie-test (x)
 "Diagrams.Tangent:$catParam from diagrams-lib-1.3.0.3, E"
 (* (* 3.0 (- 2.0 (* x 3.0))) x)
 (- (* 6.0 x) (* 9.0 (sqr x))))

(herbie-test (x)
 "Diagrams.Tangent:$catParam from diagrams-lib-1.3.0.3, F"
 (* (* x 3.0) x)
 (* (* 3.0 x) x))

(herbie-test (x y z t)
 "Diagrams.Trail:splitAtParam  from diagrams-lib-1.3.0.3, A"
 (/
  (+
   x
   (/ (- (* y z) x) (- (* t z) x)))
  (+ x 1.0))
 (/
  (+
   x
   (-
    (/ y (- t (/ x z)))
    (/ x (- (* t z) x))))
  (+ x 1.0)))

(herbie-test (x y)
 "Diagrams.Trail:splitAtParam  from diagrams-lib-1.3.0.3, B"
 (/ (* x y) (+ y 1.0))
 (if (< y -3693.8482788297247)
   (- (/ x (sqr y)) (- (/ x y) x))
   (if (< y 6799310503.41891)
     (/ (* x y) (+ y 1.0))
     (- (/ x (sqr y)) (- (/ x y) x)))))

(herbie-test (x y)
 "Diagrams.Trail:splitAtParam  from diagrams-lib-1.3.0.3, C"
 (/ (- x y) (- 1.0 y))
 (/ (- x y) (- 1.0 y)))

(herbie-test (x y)
 "Diagrams.Trail:splitAtParam  from diagrams-lib-1.3.0.3, D"
 (- 1.0 (/ (* (- 1.0 x) y) (+ y 1.0)))
 (if (< y -3693.8482788297247)
   (- (/ 1.0 y) (- (/ x y) x))
   (if (< y 6799310503.41891)
     (- 1.0 (/ (* (- 1.0 x) y) (+ y 1.0)))
     (- (/ 1.0 y) (- (/ x y) x)))))

(herbie-test (x y)
 "Diagrams.TwoD.Arc:bezierFromSweepQ1 from diagrams-lib-1.3.0.3"
 (/ (* (- 1.0 x) (- 3.0 x)) (* y 3.0))
 (* (/ (- 1.0 x) y) (/ (- 3.0 x) 3.0)))

(herbie-test (x y)
 "Diagrams.TwoD.Arc:arcBetween from diagrams-lib-1.3.0.3"
 (/
  (- (* x x) (* (* y 4.0) y))
  (+ (* x x) (* (* y 4.0) y)))
 (if (<
      (/
       (- (* x x) (* (* y 4.0) y))
       (+ (* x x) (* (* y 4.0) y)))
      0.9743233849626781)
   (-
    (/ (sqr x) (+ (sqr x) (* (sqr y) 4.0)))
    (/ (* (sqr y) 4.0) (+ (sqr x) (* (sqr y) 4.0))))
   (-
    (sqr (/ x (sqrt (+ (sqr x) (* (sqr y) 4.0)))))
    (/ (* (sqr y) 4.0) (+ (sqr x) (* (sqr y) 4.0))))))

(herbie-test (x)
 "Diagrams.TwoD.Ellipse:ellipse from diagrams-lib-1.3.0.3"
 (sqrt (- 1.0 (* x x)))
 (sqrt (- 1.0 (sqr x))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Chart.Axis.Types:invLinMap from Chart-1.5.3"
 (+
  x
  (/ (* (- y z) (- t x)) (- a z)))
 (if (< z -1.2536131056095036e+188)
   (- t (* (/ y z) (- t x)))
   (if (< z 4.446702369113811e+64)
     (+
      x
      (/ (- y z) (/ (- a z) (- t x))))
     (- t (* (/ y z) (- t x))))))

(herbie-test (x y z)
 "Diagrams.TwoD.Segment:bezierClip from diagrams-lib-1.3.0.3"
 (+ (* x y) (* z (- 1.0 y)))
 (- z (* (- z x) y)))

(herbie-test (x y)
 "Data.Octree.Internal:octantDistance  from Octree-0.5.4.2"
 (sqrt (+ (* x x) (* y y)))
 (if (< x -1.1236950826599826e+145)
   (- x)
   (if (< x 1.116557621183362e+93)
     (sqrt (+ (sqr x) (sqr y)))
     x)))

(herbie-test (x y)
 "Graphics.Rasterific.Shading:$sradialGradientWithFocusShader from Rasterific-0.6.1"
 (- x (* y y))
 (- x (sqr y)))

(herbie-test (x y)
 "Diagrams.TwoD.Path.Metafont.Internal:hobbyF from diagrams-contrib-1.3.0.5"
 (/
  (+
   2.0
   (*
    (*
     (* (sqrt 2.0) (- (sin x) (/ (sin y) 16.0)))
     (- (sin y) (/ (sin x) 16.0)))
    (- (cos x) (cos y))))
  (*
   3.0
   (+
    (+ 1.0 (* (/ (- (sqrt 5.0) 1.0) 2.0) (cos x)))
    (* (/ (- 3.0 (sqrt 5.0)) 2.0) (cos y)))))
 (/
  (+
   2.0
   (*
    (log
     (exp
      (*
       (* (sqrt 2.0) (- (sin x) (/ (sin y) 16.0)))
       (- (sin y) (/ (sin x) 16.0)))))
    (- (cos x) (cos y))))
  (*
   3.0
   (+
    (+ 1.0 (* (/ (- (sqrt 5.0) 1.0) 2.0) (cos x)))
    (* (/ (- 3.0 (sqrt 5.0)) 2.0) (cos y))))))

(herbie-test (x y)
 "Diagrams.TwoD.Layout.CirclePacking:approxRadius from diagrams-contrib-1.3.0.5"
 (/ (tan (/ x (* y 2.0))) (sin (/ x (* y 2.0))))
 (if (< y -1.2303690911306994e+114)
   1.0
   (if (< y -9.102852406811914e-222)
     (/
      (sin (/ x (* y 2.0)))
      (*
       (sin (/ x (* y 2.0)))
       (log (exp (cos (/ x (* y 2.0)))))))
     1.0)))

(herbie-test (x y z)
 "Diagrams.TwoD.Apollonian:descartes from diagrams-contrib-1.3.0.5"
 (*
  2.0
  (sqrt (+ (+ (* x y) (* x z)) (* y z))))
 (if (< z 7.636950090573675e+176)
   (* 2.0 (sqrt (+ (* (+ x y) z) (* x y))))
   (*
    (sqr
     (+
      (*
       1/4
       (*
        (* (pow y -3/4) (* (pow z -3/4) x))
        (+ y z)))
      (* (pow z 1/4) (pow y 1/4))))
    2.0)))

(herbie-test (x y z)
 "Diagrams.TwoD.Apollonian:initialConfig from diagrams-contrib-1.3.0.5, A"
 (/
  (- (+ (* x x) (* y y)) (* z z))
  (* y 2.0))
 (-
  (* y 0.5)
  (* (* (/ 0.5 y) (+ z x)) (- z x))))

(herbie-test (x y z)
 "Diagrams.TwoD.Apollonian:initialConfig from diagrams-contrib-1.3.0.5, B"
 (* x (sqrt (- (* y y) (* z z))))
 (if (< y 2.5816096488251695e-278)
   (- (* x y))
   (* x (* (sqrt (+ y z)) (sqrt (- y z))))))

(herbie-test (x y z)
 "Diagrams.Backend.Rasterific:rasterificRadialGradient from diagrams-rasterific-1.3.1.3"
 (/ (+ x (* y (- z x))) z)
 (- (+ y (/ x z)) (/ y (/ z x))))

(herbie-test (x y z t)
 "Data.HashTable.ST.Basic:computeOverhead from hashtables-1.2.0.2"
 (+
  (/ x y)
  (/ (+ 2.0 (* (* z 2.0) (- 1.0 t))) (* t z)))
 (- (/ (+ (/ 2.0 z) 2.0) t) (- 2.0 (/ x y))))

(herbie-test (x y z t)
 "Language.Haskell.HsColour.ColourHighlight:unbase from hscolour-1.23"
 (+ (* (+ (* x y) z) y) t)
 (+ (* (+ (* x y) z) y) t))

(herbie-test (x)
 "System.Random.MWC.Distributions:blocks from mwc-random-0.13.3.2"
 (* (* x 0.5) x)
 (* (* 0.5 x) x))

(herbie-test (x y)
 "System.Random.MWC.Distributions:standard from mwc-random-0.13.3.2"
 (* 0.5 (- (* x x) y))
 (* 0.5 (- (sqr x) y)))

(herbie-test (x y z)
 "SynthBasics:oscSampleBasedAux from YampaSynth-0.2"
 (+ x (* y (- z x)))
 (+ x (* y (- z x))))

(herbie-test (x y z t)
 "System.Random.MWC.Distributions:truncatedExp from mwc-random-0.13.3.2"
 (- x (/ (log (+ (- 1.0 y) (* y (exp z)))) t))
 (if (< z -2.8874623088207947e+119)
   (-
    (- x (/ (/ (- 0.5) (* y t)) (sqr z)))
    (* (/ (- 0.5) (* y t)) (/ (/ 2.0 z) (sqr z))))
   (- x (/ (log (+ 1.0 (* z y))) t))))

(herbie-test (x y z)
 "System.Random.MWC.Distributions:gamma from mwc-random-0.13.3.2"
 (+ (* x 0.5) (* y (+ (- 1.0 z) (log z))))
 (- (+ y (* 0.5 x)) (* y (- z (log z)))))

(herbie-test (x y)
 "AI.Clustering.Hierarchical.Internal:average from clustering-0.2.1, A"
 (/ x (+ x y))
 (/ x (+ x y)))

(herbie-test (x)
 "Numeric.Integration.TanhSinh:nonNegative from integration-0.2.1"
 (/ x (- 1.0 x))
 (/ x (- 1.0 x)))

(herbie-test (x y z)
 "Graphics.Rasterific.QuadraticFormula:discriminant from Rasterific-0.6.1"
 (- (* x x) (* (* y 4.0) z))
 (- (sqr x) (* z (* y 4.0))))

(herbie-test (x y z t a b)
 "Graphics.Rasterific.CubicBezier:cachedBezierAt from Rasterific-0.6.1"
 (+
  (+ (+ x (* y z)) (* t a))
  (* (* a z) b))
 (if (< z -1.1820553527347888e+19)
   (+
    (* z (+ (* b a) y))
    (+ x (* t a)))
   (if (< z 4.7589743188364287e-122)
     (+
      (* (+ (* b z) t) a)
      (+ (* z y) x))
     (+
      (* z (+ (* b a) y))
      (+ x (* t a))))))

(herbie-test (x)
 "Graphics.Rasterific.CubicBezier:isSufficientlyFlat from Rasterific-0.6.1"
 (* (* x 16.0) x)
 (* (* 16.0 x) x))

(herbie-test (x y z)
 "Graphics.Rasterific.Shading:$sgradientColorAt from Rasterific-0.6.1"
 (/ (- x y) (- z y))
 (- (/ x (- z y)) (/ y (- z y))))

(herbie-test (x)
 "Graphics.Rasterific.Shading:$sradialGradientWithFocusShader from Rasterific-0.6.1, A"
 (+ (* x x) 1.0)
 (+ (sqr x) 1.0))

(herbie-test (x y z t)
 "Graphics.Rasterific.Shading:$sradialGradientWithFocusShader from Rasterific-0.6.1, B"
 (- (* x x) (* (* y 4.0) (- (* z z) t)))
 (- (sqr x) (* 4.0 (* y (- (sqr z) t)))))

(herbie-test (x y)
 "Data.Number.Erf:$dmerfcx from erf-2.0.0.0"
 (* x (exp (* y y)))
 (* x (pow (exp y) y)))

(herbie-test (x y z t)
 "Data.Number.Erf:$cinvnormcdf from erf-2.0.0.0, A"
 (*
  (* (- (* x 0.5) y) (sqrt (* z 2.0)))
  (exp (/ (* t t) 2.0)))
 (*
  (* (- (* x 0.5) y) (sqrt (* z 2.0)))
  (pow (exp 1) (/ (* t t) 2.0))))

(herbie-test (x y)
 "Data.Number.Erf:$cinvnormcdf from erf-2.0.0.0, B"
 (- x (/ y (+ 1.0 (/ (* x y) 2.0))))
 (- x (/ y (+ 1.0 (/ (* x y) 2.0)))))

(herbie-test (x y z t)
 "Numeric.AD.Rank1.Halley:findZero from ad-4.2.4"
 (-
  x
  (/
   (* (* y 2.0) z)
   (- (* (* z 2.0) z) (* y t))))
 (- x (/ 1 (- (/ z y) (/ (/ t 2.0) z)))))

(herbie-test (x y z)
 "Crypto.Random.Test:calculate from crypto-random-0.0.9"
 (+ x (/ (* y y) z))
 (+ x (* y (/ y z))))

(herbie-test (x)
 "Numeric.Log:$cexpm1 from log-domain-0.10.2.1, A"
 (* (* x 2.0) x)
 (* (* 2.0 x) x))

(herbie-test (x y)
 "Numeric.Log:$cexpm1 from log-domain-0.10.2.1, B"
 (+ (+ (* x y) x) y)
 (+ (+ (* x y) x) y))

(herbie-test (x y)
 "Numeric.Log:$clog1p from log-domain-0.10.2.1, A"
 (+ (+ (* x 2.0) (* x x)) (* y y))
 (+ (sqr y) (+ (* 2.0 x) (sqr x))))

(herbie-test (x)
 "Numeric.Log:$clog1p from log-domain-0.10.2.1, B"
 (/ x (+ 1.0 (sqrt (+ x 1.0))))
 (/ x (+ 1.0 (sqrt (+ x 1.0)))))

(herbie-test (x)
 "Data.Approximate.Numerics:blog from approximate-0.2.2.1"
 (/ (* 6.0 (- x 1.0)) (+ (+ x 1.0) (* 4.0 (sqrt x))))
 (/ 6.0 (/ (+ (+ x 1.0) (* 4.0 (sqrt x))) (- x 1.0))))

(herbie-test (x)
 "Graphics.Rasterific.Svg.PathConverter:segmentToBezier from rasterific-svg-0.2.3.1, A"
 (/
  (* (* (/ 8.0 3.0) (sin (* x 0.5))) (sin (* x 0.5)))
  (sin x))
 (/
  (/ (* 8.0 (sin (* x 0.5))) 3.0)
  (/ (sin x) (sin (* x 0.5)))))

(herbie-test (x y z)
 "Graphics.Rasterific.Svg.PathConverter:segmentToBezier from rasterific-svg-0.2.3.1, B"
 (- (+ x (cos y)) (* z (sin y)))
 (- (+ x (cos y)) (* z (sin y))))

(herbie-test (x y z)
 "Graphics.Rasterific.Svg.PathConverter:segmentToBezier from rasterific-svg-0.2.3.1, C"
 (+ (+ x (sin y)) (* z (cos y)))
 (+ (+ x (sin y)) (* z (cos y))))

(herbie-test (x y z t)
 "Graphics.Rasterific.Svg.PathConverter:arcToSegments from rasterific-svg-0.2.3.1"
 (+
  (/ (* x x) (* y y))
  (/ (* z z) (* t t)))
 (+ (sqr (/ x y)) (sqr (/ z t))))

(herbie-test (x)
 "Development.Shake.Profile:generateTrace from shake-0.15.5"
 (* 1000000.0 (- x x))
 0)

(herbie-test (x y z t a b)
 "Development.Shake.Progress:decay from shake-0.15.5"
 (/
  (+ (* x y) (* z (- t a)))
  (+ y (* z (- b y))))
 (-
  (/
   (+ (* z t) (* y x))
   (+ y (* z (- b y))))
  (/ a (+ (- b y) (/ y z)))))

(herbie-test (x y)
 "Development.Shake.Progress:message from shake-0.15.5"
 (/ (* x 100.0) (+ x y))
 (* (/ x 1) (/ 100.0 (+ x y))))

(herbie-test (x y z)
 "Diagrams.Backend.Rasterific:$crender from diagrams-rasterific-1.3.1.3"
 (+ (* x y) (* (- 1.0 x) z))
 (+ (* x y) (* (- 1.0 x) z)))

(herbie-test (x y z t)
 "Numeric.Histogram:binBounds from Chart-1.5.3"
 (+ x (/ (* (- y x) z) t))
 (if (< x -9.025511195533005e-135)
   (- x (* (/ z t) (- x y)))
   (if (< x 4.275032163700715e-250)
     (+ x (* (/ (- y x) t) z))
     (+ x (/ (- y x) (/ t z))))))

(herbie-test (x y z)
 "Graphics.Rendering.Chart.Drawing:drawTextsR from Chart-1.5.3"
 (+ (* x y) (* (- x 1.0) z))
 (+ (* x y) (* (- x 1.0) z)))

(herbie-test (x y)
 "Graphics.Rendering.Chart.Axis.Types:hBufferRect from Chart-1.5.3"
 (+ x (/ (- x y) 2.0))
 (- (* 1.5 x) (* 0.5 y)))

(herbie-test (x y z t a)
 "Graphics.Rendering.Chart.Axis.Types:linMap from Chart-1.5.3"
 (+
  x
  (/ (* (- y x) (- z t)) (- a t)))
 (if (< a -1.6153062845442575e-142)
   (+
    x
    (* (/ (- y x) 1) (/ (- z t) (- a t))))
   (if (< a 3.774403170083174e-182)
     (- y (* (/ z t) (- y x)))
     (+
      x
      (*
       (/ (- y x) 1)
       (/ (- z t) (- a t)))))))

(herbie-test (x y)
 "Graphics.Rendering.Chart.Plot.Vectors:renderPlotVectors from Chart-1.5.3"
 (+ x (* (- 1.0 x) (- 1.0 y)))
 (- (* y x) (- y 1.0)))

(herbie-test (x y)
 "Graphics.Rendering.Chart.Plot.AreaSpots:renderSpotLegend from Chart-1.5.3"
 (+ x (/ (fabs (- y x)) 2.0))
 (+ x (/ (fabs (- y x)) 2.0)))

(herbie-test (x y z t)
 "Graphics.Rendering.Chart.Plot.AreaSpots:renderAreaSpots4D from Chart-1.5.3"
 (/ (* x (- y z)) (- t z))
 (/ x (/ (- t z) (- y z))))

(herbie-test (x y)
 "Graphics.Rendering.Chart.Plot.Pie:renderPie from Chart-1.5.3"
 (- (+ x y) x)
 (- y 0))

(herbie-test (x y z t a)
 "Graphics.Rendering.Chart.SparkLine:renderSparkLine from Chart-1.5.3"
 (- x (/ (- y z) (/ (+ (- t z) 1.0) a)))
 (- x (* (/ (- y z) (+ (- t z) 1.0)) a)))

(herbie-test (x y z)
 "Graphics.Rendering.Chart.Backend.Diagrams:calcFontMetrics from Chart-diagrams-1.5.1, A"
 (/ (+ x y) (- 1.0 (/ y z)))
 (if (< y -3.7429310762689856e+171)
   (* (/ (+ y x) (- y)) z)
   (if (< y 3.5534662456086734e+168)
     (/ (+ x y) (- 1.0 (/ y z)))
     (* (/ (+ y x) (- y)) z))))

(herbie-test (x y z t)
 "Graphics.Rendering.Chart.Backend.Diagrams:calcFontMetrics from Chart-diagrams-1.5.1, B"
 (* x (/ (* (/ y z) t) t))
 (if (< (/ (* (/ y z) t) t) -1.20672205123045e+245)
   (/ y (/ z x))
   (if (< (/ (* (/ y z) t) t) -5.907522236933906e-275)
     (* x (/ y z))
     (if (< (/ (* (/ y z) t) t) 5.658954423153415e-65)
       (/ y (/ z x))
       (if (<
            (/ (* (/ y z) t) t)
            2.0087180502407133e+217)
         (* x (/ y z))
         (/ (* y x) z))))))

(herbie-test (x y)
 "AI.Clustering.Hierarchical.Internal:average from clustering-0.2.1, B"
 (/ x (+ y x))
 (/ x (+ y x)))

(herbie-test (x y z t a b)
 "AI.Clustering.Hierarchical.Internal:ward from clustering-0.2.1"
 (/
  (-
   (+ (* (+ x y) z) (* (+ t y) a))
   (* y b))
  (+ (+ x t) y))
 (if (<
      (/
       (-
        (+ (* (+ x y) z) (* (+ t y) a))
        (* y b))
       (+ (+ x t) y))
      -3.5813117084150564e+153)
   (- (+ z a) b)
   (if (<
        (/
         (-
          (+ (* (+ x y) z) (* (+ t y) a))
          (* y b))
         (+ (+ x t) y))
        1.2285964308315609e+82)
     (/
      1
      (/
       (+ (+ x t) y)
       (-
        (+ (* (+ x y) z) (* (+ t y) a))
        (* y b))))
     (- (+ z a) b))))

(herbie-test (x y z)
 "Numeric.SpecFunctions:invErfc from math-functions-0.1.5.2, A"
 (+
  x
  (/ y (- (* 1.1283791670955126 (exp z)) (* x y))))
 (+
  x
  (/ 1 (- (* (/ 1.1283791670955126 y) (exp z)) x))))

(herbie-test (x)
 "Numeric.SpecFunctions:invErfc from math-functions-0.1.5.2, B"
 (*
  0.70711
  (-
   (/
    (+ 2.30753 (* x 0.27061))
    (+ 1.0 (* x (+ 0.99229 (* x 0.04481)))))
   x))
 (*
  0.70711
  (-
   (/
    (+ 2.30753 (* x 0.27061))
    (+ 1.0 (* x (+ 0.99229 (* x 0.04481)))))
   x)))

(herbie-test (x y)
 "Numeric.SpecFunctions:logGamma from math-functions-0.1.5.2, A"
 (+ (- (* x (- y 1.0)) (* y 0.5)) 0.918938533204673)
 (+ (- (* x (- y 1.0)) (* y 0.5)) 0.918938533204673))

(herbie-test (x y z)
 "Numeric.SpecFunctions:logGamma from math-functions-0.1.5.2, B"
 (+
  x
  (/
   (*
    y
    (+
     (* (+ (* z 0.0692910599291889) 0.4917317610505968) z)
     0.279195317918525))
   (+ (* (+ z 6.012459259764103) z) 3.350343815022304)))
 (if (< z -8120153.652456675)
   (-
    (* (+ (/ 0.07512208616047561 z) 0.0692910599291889) y)
    (- (/ (* 0.40462203869992125 y) (sqr z)) x))
   (if (< z 6.576118972787377e+20)
     (+
      x
      (*
       (*
        y
        (+
         (* (+ (* z 0.0692910599291889) 0.4917317610505968) z)
         0.279195317918525))
       (/ 1 (+ (* (+ z 6.012459259764103) z) 3.350343815022304))))
     (-
      (* (+ (/ 0.07512208616047561 z) 0.0692910599291889) y)
      (- (/ (* 0.40462203869992125 y) (sqr z)) x)))))

(herbie-test (x y z)
 "Numeric.SpecFunctions:logGamma from math-functions-0.1.5.2, C"
 (/
  (*
   (- x 2.0)
   (+
    (*
     (+
      (*
       (+
        (* (+ (* x 4.16438922228) 78.6994924154) x)
        137.519416416)
       x)
      y)
     x)
    z))
  (+
   (*
    (+
     (* (+ (* (+ x 43.3400022514) x) 263.505074721) x)
     313.399215894)
    x)
   47.066876606))
 (if (< x -3.326128725870005e+62)
   (-
    (+ (/ y (sqr x)) (* 4.16438922228 x))
    110.1139242984811)
   (if (< x 9.429991714554673e+55)
     (*
      (/ (- x 2.0) 1)
      (/
       (+
        (*
         (+
          (*
           (+
            (* (+ (* x 4.16438922228) 78.6994924154) x)
            137.519416416)
           x)
          y)
         x)
        z)
       (+
        (*
         (+
          (+
           (* 263.505074721 x)
           (+
            (* 43.3400022514 (sqr x))
            (* x (* x x))))
          313.399215894)
         x)
        47.066876606)))
     (-
      (+ (/ y (sqr x)) (* 4.16438922228 x))
      110.1139242984811))))

(herbie-test (x y z t a b)
 "Numeric.SpecFunctions:logGamma from math-functions-0.1.5.2, D"
 (+
  x
  (/
   (*
    y
    (+
     (*
      (+
       (*
        (+ (* (+ (* z 3.13060547623) 11.1667541262) z) t)
        z)
       a)
      z)
     b))
   (+
    (*
     (+
      (* (+ (* (+ z 15.234687407) z) 31.4690115749) z)
      11.9400905721)
     z)
    0.607771387771)))
 (if (< z -6.499344996252632e+53)
   (+
    x
    (*
     (+
      (- 3.13060547623 (/ 36.527041698806414 z))
      (/ t (sqr z)))
     (/ y 1)))
   (if (< z 7.066965436914287e+59)
     (+
      x
      (/
       y
       (/
        (+
         (*
          (+
           (* (+ (* (+ z 15.234687407) z) 31.4690115749) z)
           11.9400905721)
          z)
         0.607771387771)
        (+
         (*
          (+
           (*
            (+
             (* (+ (* z 3.13060547623) 11.1667541262) z)
             t)
            z)
           a)
          z)
         b))))
     (+
      x
      (*
       (+
        (- 3.13060547623 (/ 36.527041698806414 z))
        (/ t (sqr z)))
       (/ y 1))))))

(herbie-test (x)
 "Numeric.SpecFunctions:$slogFactorial from math-functions-0.1.5.2, A"
 (/ 1.0 (* x x))
 (/ (/ 1.0 x) x))

(herbie-test (x y z)
 "Numeric.SpecFunctions:$slogFactorial from math-functions-0.1.5.2, B"
 (+
  (+ (- (* (- x 0.5) (log x)) x) 0.91893853320467)
  (/
   (+
    (*
     (- (* (+ y 0.0007936500793651) z) 0.0027777777777778)
     z)
    0.083333333333333)
   x))
 (+
  (+
   (+ (* (- x 0.5) (log x)) (- 0.91893853320467 x))
   (/ 0.083333333333333 x))
  (*
   (/ z x)
   (- (* z (+ y 0.0007936500793651)) 0.0027777777777778))))

(herbie-test (x y z t a)
 "Numeric.SpecFunctions:logGammaL from math-functions-0.1.5.2"
 (+
  (- (+ (log (+ x y)) (log z)) t)
  (* (- a 0.5) (log t)))
 (+
  (log (+ x y))
  (+ (- (log z) t) (* (- a 0.5) (log t)))))

(herbie-test (x)
 "Numeric.SpecFunctions:logGammaCorrection from math-functions-0.1.5.2"
 (- (* (* x x) 2.0) 1.0)
 (- (* (sqr x) 2.0) 1.0))

(herbie-test (x y)
 "Numeric.SpecFunctions:log1p from math-functions-0.1.5.2, A"
 (* x (- 1.0 (* x y)))
 (* x (- 1.0 (* x y))))

(herbie-test (x)
 "Numeric.SpecFunctions:log1p from math-functions-0.1.5.2, B"
 (* x (- 1.0 (* x 0.5)))
 (* x (- 1.0 (* x 0.5))))

(herbie-test (x y z t a b)
 "Numeric.SpecFunctions:logBeta from math-functions-0.1.5.2, A"
 (+
  (- (+ (+ x y) z) (* z (log t)))
  (* (- a 0.5) b))
 (+
  (+
   (+ x y)
   (/ (* (- 1 (sqr (log t))) z) (+ 1 (log t))))
  (* (- a 0.5) b)))

(herbie-test (x y z t a b c i)
 "Numeric.SpecFunctions:logBeta from math-functions-0.1.5.2, B"
 (+
  (+
   (+ (+ (+ (* x (log y)) z) t) a)
   (* (- b 0.5) (log c)))
  (* y i))
 (+
  (+
   (+ (+ (+ (* x (log y)) z) t) a)
   (* (- b 0.5) (log c)))
  (* y i)))

(herbie-test (x y z)
 "Numeric.SpecFunctions:choose from math-functions-0.1.5.2"
 (/ (* x (+ y z)) z)
 (/ x (/ z (+ y z))))

(herbie-test (x y z)
 "Numeric.SpecFunctions:stirlingError from math-functions-0.1.5.2"
 (- (+ (- x (* (+ y 0.5) (log y))) y) z)
 (- (- (+ y x) z) (* (+ y 0.5) (log y))))

(herbie-test (x y z t)
 "Numeric.SpecFunctions:incompleteGamma from math-functions-0.1.5.2, A"
 (+ (- (- (* x (log y)) y) z) (log t))
 (+ (- (- (* x (log y)) y) z) (log t)))

(herbie-test (x y)
 "Numeric.SpecFunctions:incompleteGamma from math-functions-0.1.5.2, B"
 (* (* 3.0 (sqrt x)) (- (+ y (/ 1.0 (* x 9.0))) 1.0))
 (*
  3.0
  (+
   (* y (sqrt x))
   (* (- (/ 1.0 (* x 9.0)) 1.0) (sqrt x)))))

(herbie-test (x)
 "Numeric.SpecFunctions:invIncompleteGamma from math-functions-0.1.5.2, A"
 (- 1.0 (* x (+ 0.253 (* x 0.12))))
 (- 1.0 (* x (+ 0.253 (* x 0.12)))))

(herbie-test (x y)
 "Numeric.SpecFunctions:invIncompleteGamma from math-functions-0.1.5.2, B"
 (- 1.0 (log (- 1.0 (/ (- x y) (- 1.0 y)))))
 (if (< y -81284752.61947241)
   (-
    1.0
    (log
     (- (/ x (sqr y)) (- (/ 1.0 y) (/ x y)))))
   (if (< y 3.0094271212461764e+25)
     (log (/ (exp 1.0) (- 1.0 (/ (- x y) (- 1.0 y)))))
     (-
      1.0
      (log
       (-
        (/ x (sqr y))
        (- (/ 1.0 y) (/ x y))))))))

(herbie-test (x)
 "Numeric.SpecFunctions:invIncompleteGamma from math-functions-0.1.5.2, C"
 (-
  (/
   (+ 2.30753 (* x 0.27061))
   (+ 1.0 (* x (+ 0.99229 (* x 0.04481)))))
  x)
 (-
  (/
   (+ 2.30753 (* x 0.27061))
   (+ 1.0 (* x (+ 0.99229 (* x 0.04481)))))
  x))

(herbie-test (x y)
 "Numeric.SpecFunctions:invIncompleteGamma from math-functions-0.1.5.2, D"
 (- (- 1.0 (/ 1.0 (* x 9.0))) (/ y (* 3.0 (sqrt x))))
 (- (- 1.0 (/ (/ 1.0 x) 9.0)) (/ y (* 3.0 (sqrt x)))))

(herbie-test (x y)
 "Numeric.SpecFunctions:incompleteBetaApprox from math-functions-0.1.5.2, A"
 (/
  (* x y)
  (* (* (+ x y) (+ x y)) (+ (+ x y) 1.0)))
 (/
  (/ (/ x (+ (+ y 1) x)) (+ y x))
  (/ 1 (/ y (+ y x)))))

(herbie-test (x y z t a b)
 "Numeric.SpecFunctions:incompleteBetaApprox from math-functions-0.1.5.2, B"
 (*
  x
  (exp
   (+
    (* y (- (log z) t))
    (* a (- (log (- 1.0 z)) b)))))
 (*
  x
  (exp
   (+
    (* y (- (log z) t))
    (* a (- (log (- 1.0 z)) b))))))

(herbie-test (x y z t a b)
 "Numeric.SpecFunctions:incompleteBetaWorker from math-functions-0.1.5.2, A"
 (/
  (*
   x
   (exp
    (-
     (+ (* y (log z)) (* (- t 1.0) (log a)))
     b)))
  y)
 (if (< t -0.8845848504127471)
   (/
    (* x (/ (pow a (- t 1.0)) y))
    (- (+ b 1) (* y (log z))))
   (if (< t 852031.2288374073)
     (/
      (* (/ x y) (pow a (- t 1.0)))
      (exp (- b (* (log z) y))))
     (/
      (* x (/ (pow a (- t 1.0)) y))
      (- (+ b 1) (* y (log z)))))))

(herbie-test (x y z t)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, B"
 (- (+ (* x (log y)) (* z (log (- 1.0 y)))) t)
 (-
  (*
   (- z)
   (+
    (+ (* 0.5 (sqr y)) y)
    (* (/ 1/3 (* 1.0 (* 1.0 1.0))) (* y (* y y)))))
  (- t (* x (log y)))))

(herbie-test (x y z t)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, C"
 (* x (- (/ y z) (/ t (- 1.0 z))))
 (if (<
      (* x (- (/ y z) (/ t (- 1.0 z))))
      -7.623226303312042e-196)
   (* x (- (/ y z) (* t (/ 1 (- 1.0 z)))))
   (if (<
        (* x (- (/ y z) (/ t (- 1.0 z))))
        1.4133944927702302e-211)
     (+
      (/ (* y x) z)
      (- (/ (* t x) (- 1.0 z))))
     (* x (- (/ y z) (* t (/ 1 (- 1.0 z))))))))

(herbie-test (x)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, D"
 (-
  x
  (/
   (+ 2.30753 (* x 0.27061))
   (+ 1.0 (* (+ 0.99229 (* x 0.04481)) x))))
 (-
  x
  (/
   (+ 2.30753 (* x 0.27061))
   (+ 1.0 (* (+ 0.99229 (* x 0.04481)) x)))))

(herbie-test (x y)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, E"
 (+ (- 1.0 x) (* y (sqrt x)))
 (+ (- 1.0 x) (* y (sqrt x))))

(herbie-test (x y)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, F"
 (/ (exp (* x (log (/ x (+ x y))))) x)
 (if (< y -3.7311844206647956e+94)
   (/ (exp (/ -1 y)) x)
   (if (< y 2.817959242728288e+37)
     (/ (pow (/ x (+ y x)) x) x)
     (if (< y 2.347387415166998e+178)
       (log (exp (/ (pow (/ x (+ y x)) x) x)))
       (/ (exp (/ -1 y)) x)))))

(herbie-test (x y z)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, G"
 (+
  x
  (/ (exp (* y (log (/ y (+ z y))))) y))
 (if (< (/ y (+ z y)) 7.1154157597908e-315)
   (+ x (/ (exp (/ -1 z)) y))
   (+
    x
    (/ (exp (log (pow (/ y (+ y z)) y))) y))))

(herbie-test (x)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, H"
 (/ (- (* x x) 3.0) 6.0)
 (/ (- (sqr x) 3.0) 6.0))

(herbie-test (x y z t a b c)
 "Numeric.SpecFunctions:invIncompleteBetaWorker from math-functions-0.1.5.2, I"
 (/
  x
  (+
   x
   (*
    y
    (exp
     (*
      2.0
      (-
       (/ (* z (sqrt (+ t a))) t)
       (*
        (- b c)
        (- (+ a (/ 5.0 6.0)) (/ 2.0 (* t 3.0))))))))))
 (if (< t -2.118326644891581e-50)
   (/
    x
    (+
     x
     (*
      y
      (exp
       (*
        2.0
        (-
         (+ (* a c) (* 0.8333333333333334 c))
         (* a b)))))))
   (if (< t 5.196588770651547e-123)
     (/
      x
      (+
       x
       (*
        y
        (exp
         (*
          2.0
          (/
           (-
            (*
             (* z (sqrt (+ t a)))
             (* (* 3.0 t) (- a (/ 5.0 6.0))))
            (*
             (- (* (+ (/ 5.0 6.0) a) (* 3.0 t)) 2.0)
             (* (- a (/ 5.0 6.0)) (* (- b c) t))))
           (* (* (sqr t) 3.0) (- a (/ 5.0 6.0)))))))))
     (/
      x
      (+
       x
       (*
        y
        (exp
         (*
          2.0
          (-
           (/ (* z (sqrt (+ t a))) t)
           (*
            (- b c)
            (- (+ a (/ 5.0 6.0)) (/ 2.0 (* t 3.0)))))))))))))

(herbie-test (x y z)
 "Numeric.SpecFunctions.Extra:bd0 from math-functions-0.1.5.2"
 (- (* x (log (/ x y))) z)
 (if (< y 7.595077799083773e-308)
   (- (* x (log (/ x y))) z)
   (- (* x (- (log x) (log y))) z)))

(herbie-test (x y z t a b c i)
 "Numeric.SpecFunctions:logGamma from math-functions-0.1.5.2"
 (/
  (+
   (*
    (+
     (* (+ (* (+ (* x y) z) y) 27464.7644705) y)
     230661.510616)
    y)
   t)
  (+
   (*
    (+ (* (+ (* (+ y a) y) b) y) c)
    y)
   i))
 (/
  (+
   (*
    (+
     (* (+ (* (+ (* x y) z) y) 27464.7644705) y)
     230661.510616)
    y)
   t)
  (+
   (*
    (+ (* (+ (* (+ y a) y) b) y) c)
    y)
   i)))

(herbie-test (x y z t a)
 "Statistics.Math.RootFinding:ridders from math-functions-0.1.5.2"
 (/
  (* (* x y) z)
  (sqrt (- (* z z) (* t a))))
 (if (< z -3.1921305903852764e+46)
   (- (* y x))
   (if (< z 5.976268120920894e+90)
     (/
      (* x z)
      (/ (sqrt (- (sqr z) (* a t))) y))
     (* y x))))

(herbie-test (x y z)
 "Statistics.Distribution.Poisson.Internal:probability from math-functions-0.1.5.2"
 (exp (- (+ x (* y (log y))) z))
 (exp (+ (- x z) (* (log y) y))))

(herbie-test (x)
 "Statistics.Distribution.Binomial:directEntropy from math-functions-0.1.5.2"
 (* x (log x))
 (* x (log x)))

(herbie-test (x)
 "Statistics.Correlation.Kendall:numOfTiesBy from math-functions-0.1.5.2"
 (* x (- x 1.0))
 (- (sqr x) x))

(herbie-test (x y z)
 "Statistics.Sample:robustSumVarWeighted from math-functions-0.1.5.2"
 (+ x (* (* y z) z))
 (+ x (* (* y z) z)))

(herbie-test (x y z)
 "Statistics.Sample:$swelfordMean from math-functions-0.1.5.2"
 (+ x (/ (- y x) z))
 (+ x (/ (- y x) z)))

(herbie-test (x y)
 "Statistics.Sample:$skurtosis from math-functions-0.1.5.2"
 (- (/ x (* y y)) 3.0)
 (- (/ (/ x y) y) 3.0))

(herbie-test (x y z t a b)
 "Statistics.Distribution.Beta:$centropy from math-functions-0.1.5.2"
 (+
  (- (- x (* (- y 1.0) z)) (* (- t 1.0) a))
  (* (- (+ y t) 2.0) b))
 (+
  (- (- x (* (- y 1.0) z)) (* (- t 1.0) a))
  (* (- (+ y t) 2.0) b)))

(herbie-test (x y z)
 "Statistics.Distribution.Beta:$cvariance from math-functions-0.1.5.2"
 (/ (* x y) (* (* z z) (+ z 1.0)))
 (if (< z 249.6182814532307)
   (/ (* y (/ x z)) (+ z (sqr z)))
   (/ (* (/ (/ y z) (+ 1 z)) x) z)))

(herbie-test (x y z t)
 "Statistics.Distribution.Beta:$cdensity from math-functions-0.1.5.2"
 (-
  (+
   (* (- x 1.0) (log y))
   (* (- z 1.0) (log (- 1.0 y))))
  t)
 (-
  (+
   (* (- x 1.0) (log y))
   (* (- z 1.0) (log (- 1.0 y))))
  t))

(herbie-test (x y)
 "Statistics.Distribution.Binomial:$cvariance from math-functions-0.1.5.2"
 (* (* x y) (- 1.0 y))
 (* (* x y) (- 1.0 y)))

(herbie-test (x y z)
 "Statistics.Distribution.Poisson:$clogProbability from math-functions-0.1.5.2"
 (- (- (* x (log y)) z) y)
 (- (- (* x (log y)) z) y))

(herbie-test (x y z)
 "Statistics.Distribution.CauchyLorentz:$cdensity from math-functions-0.1.5.2"
 (/ (/ 1.0 x) (* y (+ 1.0 (* z z))))
 (if (< (* y (+ 1.0 (* z z))) -inf.0)
   (/ (/ 1.0 y) (* (+ 1.0 (sqr z)) x))
   (if (< (* y (+ 1.0 (* z z))) 8.680743250567252e+305)
     (/ (/ 1.0 x) (* (+ 1.0 (sqr z)) y))
     (/ (/ 1.0 y) (* (+ 1.0 (sqr z)) x)))))

(herbie-test (x y)
 "Examples.Basics.BasicTests:f3 from sbv-4.4"
 (* (+ x y) (+ x y))
 (+ (sqr x) (+ (sqr y) (* 2 (* y x)))))

(herbie-test (x y)
 "Examples.Basics.BasicTests:f2 from sbv-4.4"
 (- (* x x) (* y y))
 (- (sqr x) (sqr y)))

(herbie-test (x y)
 "Examples.Basics.BasicTests:f1 from sbv-4.4"
 (* (+ x y) (- x y))
 (* (+ x y) (- x y)))

(herbie-test (x y)
 "Examples.Basics.ProofTests:f4 from sbv-4.4"
 (+ (+ (* x x) (* (* x 2.0) y)) (* y y))
 (+ (sqr x) (+ (sqr y) (* (* x y) 2.0))))

(herbie-test (x y)
 "Numeric.LinearAlgebra.Util:formatSparse from hmatrix-0.16.1.5"
 (/ (fabs (- x y)) (fabs y))
 (/ (fabs (- x y)) (fabs y)))

(herbie-test (x y)
 "Data.Random.Distribution.Normal:normalF from random-fu-0.2.6.2"
 (exp (* (* x y) y))
 (exp (* (* x y) y)))

(herbie-test (x y)
 "Data.Random.Distribution.Normal:normalTail from random-fu-0.2.6.2"
 (+ (+ (* x x) y) y)
 (+ (+ y y) (sqr x)))

(herbie-test (x)
 "Data.Random.Distribution.Normal:doubleStdNormalZ from random-fu-0.2.6.2"
 (- (+ x x) 1.0)
 (- (+ x x) 1.0))

(herbie-test (x y)
 "Data.Random.Distribution.T:$ccdf from random-fu-0.2.6.2"
 (/ (+ x y) (+ y y))
 (+ (* 1/2 (/ x y)) 1/2))

(herbie-test (x y z t)
 "Data.Random.Distribution.Triangular:triangularCDF from random-fu-0.2.6.2, A"
 (- 1.0 (/ x (* (- y z) (- y t))))
 (- 1.0 (/ x (* (- y z) (- y t)))))

(herbie-test (x y z t)
 "Data.Random.Distribution.Triangular:triangularCDF from random-fu-0.2.6.2, B"
 (/ x (* (- y z) (- t z)))
 (if (< (/ x (* (- y z) (- t z))) 0.0)
   (/ (/ x (- y z)) (- t z))
   (* x (/ 1 (* (- y z) (- t z))))))

(herbie-test (x)
 "Data.Random.Dice:roll from dice-0.1"
 (- (* x x) 1.0)
 (- (sqr x) 1.0))

(herbie-test (x)
 "Prelude:atanh from fay-base-0.20.0.1"
 (/ (+ x 1.0) (- 1.0 x))
 (/ (+ x 1.0) (- 1.0 x)))

(herbie-test (x)
 "ReportTypes:explainFloat from gipeda-0.1.2.1"
 (* 100.0 (/ (- x x) x))
 0)

(herbie-test (x y z t a)
 "Hakyll.Web.Tags:renderTagCloud from hakyll-4.7.2.3"
 (+
  x
  (* (/ (- y z) (- (+ t 1.0) z)) (- a x)))
 (+
  x
  (*
   (/ (- y z) (- (+ t 1.0) z))
   (- a x))))

(herbie-test (x y z)
 "Data.Histogram.Bin.BinF:$cfromIndex from histogram-fill-0.8.4.1"
 (+ (+ (/ x 2.0) (* y x)) z)
 (+ (+ (/ x 2.0) (* y x)) z))

(herbie-test (x y)
 "Data.Histogram.Bin.LogBinD:$cbinSizeN from histogram-fill-0.8.4.1"
 (- (* x y) x)
 (- (* x y) x))

(herbie-test (x y z t a)
 "Numeric.Signal:interpolate   from hsignal-0.2.7.1"
 (+
  x
  (* (- y z) (/ (- t x) (- a z))))
 (+
  x
  (* (- y z) (/ (- t x) (- a z)))))

(herbie-test (x y z t)
 "Numeric.Signal.Multichannel:$cget from hsignal-0.2.7.1"
 (+ (* (/ x y) (- z t)) t)
 (if (< z 2.759456554562692e-282)
   (+ (* (/ x y) (- z t)) t)
   (if (< z 2.326994450874436e-110)
     (+ (* x (/ (- z t) y)) t)
     (+ (* (/ x y) (- z t)) t))))

(herbie-test (x y z t)
 "Numeric.Signal.Multichannel:$cput from hsignal-0.2.7.1"
 (* (/ (- x y) (- z y)) t)
 (/ t (/ (- z y) (- x y))))

(herbie-test (x y)
 "Data.HyperLogLog.Config:hll from hyperloglog-0.3.4"
 (* (* x y) y)
 (* (* x y) y))

(herbie-test (x y)
 "Data.HyperLogLog.Type:size from hyperloglog-0.3.4, A"
 (* (* x 1.0) (log (- 1.0 (/ y x))))
 (* x (log (- 1.0 (/ y x)))))

(herbie-test (x y)
 "Data.HyperLogLog.Type:size from hyperloglog-0.3.4, B"
 (* x (log (/ x y)))
 (if (< y 1.2973149052617803e-303)
   (* x (log (/ x y)))
   (/ x (/ 1 (- (log x) (log y))))))

(herbie-test (x y z)
 "Diagrams.Backend.Cairo.Internal:setTexture from diagrams-cairo-1.3.0.3"
 (/ (* x (- y z)) y)
 (if (< z -2.060202331921739e+104)
   (- x (/ (* z x) y))
   (if (< z 1.6939766013828526e+213)
     (/ x (/ y (- y z)))
     (* (- y z) (/ x y)))))

(herbie-test (x y)
 "Numeric.Integration.TanhSinh:simpson  from integration-0.2.1"
 (* x (+ y y))
 (* x (+ y y)))

(herbie-test (x y)
 "Numeric.Integration.TanhSinh:everywhere from integration-0.2.1"
 (* x (+ 1.0 (* y y)))
 (+ x (* (* x y) y)))

(herbie-test (x y z t)
 "Data.Metrics.Snapshot:quantile from metrics-0.3.0.2"
 (+ x (* (- y z) (- t x)))
 (+
  x
  (+ (* t (- y z)) (* (- x) (- y z)))))

(herbie-test (x y)
 "Graphics.Rendering.Plot.Render.Plot.Legend:renderLegendOutside from plot-0.2.3.4, A"
 (+ (+ x y) x)
 (+ y (* 2 x)))

(herbie-test (x y z t)
 "Graphics.Rendering.Plot.Render.Plot.Legend:renderLegendOutside from plot-0.2.3.4, B"
 (+
  (* x (+ (+ (+ (+ y z) z) y) t))
  (* y 5.0))
 (+
  (* x (+ (+ (+ (+ y z) z) y) t))
  (* y 5.0)))

(herbie-test (x y z)
 "Graphics.Rendering.Plot.Render.Plot.Legend:renderLegendInside from plot-0.2.3.4"
 (+ (+ (+ (+ (+ x y) y) x) z) x)
 (+ (+ (+ (+ (+ x y) y) x) z) x))

(herbie-test (x y z)
 "Graphics.Rendering.Plot.Render.Plot.Legend:renderLegendOutside from plot-0.2.3.4, C"
 (+ (* x (+ y z)) (* z 5.0))
 (+ (* (+ x 5.0) z) (* x y)))

(herbie-test (x y z t)
 "Graphics.Rendering.Plot.Render.Plot.Axis:tickPosition from plot-0.2.3.4"
 (+ x (* (- y x) (/ z t)))
 (if (< (* (- y x) (/ z t)) -1013646692435.8867)
   (+ x (/ (- y x) (/ t z)))
   (if (< (* (- y x) (/ z t)) -0.0)
     (+ x (/ (* (- y x) z) t))
     (+ x (/ (- y x) (/ t z))))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisLine from plot-0.2.3.4, A"
 (+ x (* y (/ (- z t) (- z a))))
 (+ x (/ y (/ (- z a) (- z t)))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisLine from plot-0.2.3.4, B"
 (+ x (* y (/ (- z t) (- a t))))
 (if (< y -8.508084860551241e-17)
   (+ x (* y (/ (- z t) (- a t))))
   (if (< y 2.894426862792089e-49)
     (+ x (* (* y (- z t)) (/ 1 (- a t))))
     (+ x (* y (/ (- z t) (- a t)))))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisTick from plot-0.2.3.4, A"
 (+ x (/ (* (- y z) t) (- a z)))
 (if (< t -1.0682974490174067e-39)
   (+ x (* (/ (- y z) (- a z)) t))
   (if (< t 3.9110949887586375e-141)
     (+ x (/ (* (- y z) t) (- a z)))
     (+ x (* (/ (- y z) (- a z)) t)))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisTick from plot-0.2.3.4, B"
 (-
  (+ x y)
  (/ (* (- z t) y) (- a t)))
 (if (<
      (-
       (+ x y)
       (/ (* (- z t) y) (- a t)))
      -1.3664970889390727e-07)
   (-
    (+ y x)
    (* (* (- z t) (/ 1 (- a t))) y))
   (if (<
        (-
         (+ x y)
         (/ (* (- z t) y) (- a t)))
        1.4754293444577233e-239)
     (/
      (- (* y (- a z)) (* x t))
      (- a t))
     (-
      (+ y x)
      (* (* (- z t) (/ 1 (- a t))) y)))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisTicks from plot-0.2.3.4, A"
 (+ x (/ (* y (- z t)) (- z a)))
 (+ x (/ y (/ (- z a) (- z t)))))

(herbie-test (x y z t a)
 "Graphics.Rendering.Plot.Render.Plot.Axis:renderAxisTicks from plot-0.2.3.4, B"
 (+ x (/ (* y (- z t)) (- a t)))
 (+ x (/ y (/ (- a t) (- z t)))))

(herbie-test (x y z)
 "Data.Array.Repa.Algorithms.Pixel:doubleRmsOfRGB8 from repa-algorithms-3.4.0.1"
 (sqrt
  (/ (+ (+ (* x x) (* y y)) (* z z)) 3.0))
 (if (< z -6.396479394109776e+136)
   (/ (- z) (sqrt 3.0))
   (if (< z 7.320293694404182e+117)
     (/ (sqrt (+ (+ (sqr z) (sqr x)) (sqr y))) (sqrt 3.0))
     (* (sqrt 0.3333333333333333) z))))

(herbie-test (x y z)
 "Data.Array.Repa.Algorithms.ColorRamp:rampColorHotToCold from repa-algorithms-3.4.0.1, A"
 (+ 1.0 (/ (* 4.0 (- (+ x (* y 0.75)) z)) y))
 (+ 1.0 (/ (* 4.0 (- (+ x (* y 0.75)) z)) y)))

(herbie-test (x y z)
 "Data.Array.Repa.Algorithms.ColorRamp:rampColorHotToCold from repa-algorithms-3.4.0.1, B"
 (/ (* 4.0 (- (- x y) (* z 0.5))) z)
 (- (* 4.0 (/ x z)) (+ 2.0 (* 4.0 (/ y z)))))

(herbie-test (x y z)
 "Data.Array.Repa.Algorithms.ColorRamp:rampColorHotToCold from repa-algorithms-3.4.0.1, C"
 (+ 1.0 (/ (* 4.0 (- (+ x (* y 0.25)) z)) y))
 (+ 1.0 (/ (* 4.0 (- (+ x (* y 0.25)) z)) y)))

(herbie-test (x)
 "Data.Spline.Key:interpolateKeys from smoothie-0.4.0.2"
 (* (* x x) (- 3.0 (* x 2.0)))
 (* x (* x (- 3.0 (* x 2.0)))))

(herbie-test (x y z)
 "FRP.Yampa.Vector3:vector3Rho from Yampa-0.10.2"
 (sqrt (+ (+ (* x x) (* y y)) (* z z)))
 (if (< z -6.396479394109776e+136)
   (- z)
   (if (< z 7.320293694404182e+117)
     (sqrt (+ (+ (sqr z) (sqr x)) (sqr y)))
     z)))

(herbie-test (x y z t)
 "SynthBasics:moogVCF from YampaSynth-0.2"
 (+
  x
  (*
   (* y z)
   (- (tanh (/ t y)) (tanh (/ x y)))))
 (+
  x
  (*
   y
   (* z (- (tanh (/ t y)) (tanh (/ x y)))))))
