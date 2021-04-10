!  LinearRegressionmodel.f90 
!
!  FUNCTIONS:
!  LinearRegressionmodel - Entry point of console application.
!

!****************************************************************************
!
!  PROGRAM: LinearRegressionmodel
!
!  PURPOSE:  Entry point for the console application.
!
!****************************************************************************

    program LinearRegressionmodel

    implicit none

    ! Variables
    real :: x(10), y(10), i, n, sum_x, sum_y, x_mean, y_mean, ps_xy, psq_x, b1, b0

    ! Body of LinearRegressionmodel
    print *, "Enter the values of X: "
    read *, x
    
    print *, "Enter the values of Y: "
    read *, y
    
    sum_x = 0
    sum_y = 0
    
    do i=1,10
        sum_x = sum_x + x(i)
        sum_y = sum_y + y(i)
    end do
    
    x_mean = sum_x / 10
    y_mean = sum_y / 10
    
    print *, "The value of x_mean is: ", x_mean
    print *, "The value of y_mean is: ", y_mean
    
    ps_xy = 0
    psq_x = 0
    
    do i=1,10
        ps_xy = ps_xy + (x(i) - x_mean)*(y(i) - y_mean)
        psq_x = psq_x + (x(i) - x_mean)**2
    end do
    
    print *, ps_xy
    print *, psq_x
    
    b1 = ps_xy / psq_x
    b0 = y_mean - (b1 * x_mean)
    
    print *, "The value of b0 is: ", b0
    print *, "The value of b1 is: ", b1
    
    
   end program LinearRegressionmodel

