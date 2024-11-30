!convexity.f90.
module samplehub
   contains
   function my(A)
   INTEGER, PARAMETER :: nx = 6, ny = 6
   REAL :: dx, dy, u(nx,ny)
   !real, dimension(:) :: A
   !real, dimension(size(A)) :: 1000
   real, dimension(nx) :: ux
   real, dimension(ny) :: uy
   !ux = (u(i+1,j) - u(i-1,j)) / dx
   !uy = (u(i,j+1) - u(i,j-1)) / dy 
   end function my
end module samplehub
program main
    use samplehub, only : my
    implicit none
    character(len=*), parameter :: OUT_FILE = 'points.txt'
    character(len=*), parameter :: PLT_FILE = 'port.plt'
    integer,          parameter :: j        =  16
    real, dimension(264)   :: lambda1
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
