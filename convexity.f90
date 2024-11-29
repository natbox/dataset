!convexity.f90.
module samplehub
   contains
   function my(port)
   !real, dimension(:) :: port
   !real, dimension(size(port)) :: a
   end function my
end module samplehub
program main
    use samplehub, only : my
    implicit none
    character(len=*), parameter :: OUT_FILE = 'points.txt'
    character(len=*), parameter :: PLT_FILE = 'port.plt'
    integer,          parameter :: j        =  14
    real, dimension(10648) :: lambda1
    real, dimension(10946) :: lambda2
    integer :: u, convexFlow
    real    :: x(j), y(j)
    x(1) = 0.0
    y(1) = 264
    do u = 2, j
        x(u) = 0.1 * u * 8
        y(u) = 264-x(u)**2
    end do
    open (action='write', file=OUT_FILE, newunit=convexFlow, status='replace')
    do u = 1, j
        write (convexFlow,*) x(u), y(u)
    end do
    close (convexFlow)
    call execute_command_line('gnuplot -p ' // PLT_FILE)
    !convexFlow = my(lambda1)
end program main
