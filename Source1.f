      PROGRAM MAIN
      INTEGER N, X
      EXTERNAL SUB1
      COMMON /GLOBALS/ N
      X = 0
      PRINT *, 'Enter number of repeats'
      READ (*,*) N
      CALL SUB1(X,SUB1)
      END

      SUBROUTINE SUB1(X,DUMSUB)
      INTEGER N, X, Y
      EXTERNAL DUMSUB
      COMMON /GLOBALS/ N
      DATA Y /0/
      IF(X .LT. N)THEN
        X = X + 1
        Y = Y + 1
        PRINT *, 'x = ', X, ', y = ', Y
        CALL DUMSUB(X,DUMSUB)
      END IF
      END

