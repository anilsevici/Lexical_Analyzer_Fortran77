C
C NUMERICAL MATHEMATICS AND COMPUTING, CHENEY/KINCAID, (c) 1985
C
C FILE: xsinx.f
C
C EXAMPLE OF PROGRAMMING F(X) = X - SIN(X) CAREFULLY (F)
C
      DOUBLE PRECISION DX,DY,DZ
      DX = 1.0D0/15.0D0
      DY = DSIN(DX)
      DZ = DX - DY
      PRINT *,DX,DY,DZ
      X = 16.0
      DO 2 N = 1,52
        X = 0.25*X
        Y = F(X)
        PRINT *,N,X,Y
   2  CONTINUE
      X = SIN(1.0)
      Y = F(1.0)
      PRINT *,X,Y
      STOP
      END

      FUNCTION F(X)
      IF(ABS(X) .GE. 1.9) THEN
        F = X - SIN(X)
      ELSE
        T = X**3/6.0
        F = T
        DO 2 N = 1,9
          T = -T*X*X/REAL((2*N+2)*(2*N+3))
          F = F + T
   2    CONTINUE
      END IF
      RETURN
      END

