!convexity.f90.
module testing_mod 
  implicit none
  character(len=10) :: test1(10)
  character(len=30) :: test2(30)
  integer, parameter :: nx = 6, ny = 6
  integer :: impedance = 1
  real :: dx, dy, convexity(nx,ny)
  real, dimension(nx) :: ux
  real, dimension(ny) :: uy
  logical :: pravda = 1
contains
    subroutine testing_sub (circuit)
      character(*) :: circuit(:)
      !real, dimension(-131:132)   :: Object
      !convexity=Object**3
      !ux = (u(i+1,j) - u(i-1,j)) / dx
      !uy = (u(i,j+1) - u(i,j-1)) / dy
   end subroutine testing_sub
  end module testing_mod
program main
    use testing_mod
    !implicit none
    character(len=*), parameter :: OUT_FILE = 'points.txt'
    character(len=*), parameter :: PLT_FILE = 'port.plt'
    integer,          parameter :: j        =  16
    real, dimension(-131:132)   :: lambda1, fibo
    real, dimension(-5472:5473) :: lambda2
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
    !fibo = my(lambda1)
    test1(1)= "point1"
    test1(2)= "point2"
    test1(3)= "point3"
    call testing_sub(test1)
    test2(1)= "10946"
    test2(2)=   "264"
    test2(3)= "10648"
    call testing_sub(test2)
end program main
! three points as circle an additional in a cone case
