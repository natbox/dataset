PROGRAM central_diff
  IMPLICIT NONE
  INTEGER, PARAMETER :: nx = 6, ny = 6
  REAL :: dx, dy, u(nx,ny)
  INTEGER :: i, j
  integer :: impedance = 1
  DO j = 1,6
    DO i = 1,6
      u(i,j)=impedance**3
      impedance=impedance+1
    END DO
  END DO
  u(4,3) = 264
  open(1, file = 'heat_map_data.csv', status = 'new')
    do i=1,6
     write(1,*) u(i,1), u(i,2), u(i,3), u(i,4), u(i,5), u(i,6)
  end do
END PROGRAM central_diff
