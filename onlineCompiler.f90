! 
! 
!                             Online Fortran Compiler.
!                 Code, Compile, Run and Debug Fortran program online.
! Write your code in this editor and press "Run" button to execute it.
! 
! 
Program impedance
IMPLICIT none
integer :: q, p = 24

q = 1.0
do p = 1, p
 q = q * p
 Print *, p, q
enddo
!do p = 1, p
! !q = q + p
! Print *, p, q
!enddo

Print *, "Hello Fortran", p, q
End Program impedance
