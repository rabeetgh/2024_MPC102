program array
 implicit none
 integer :: i, j

 ! 1D integer array !
 integer :: p(1), q(1)

 !  or dimension attribute
 !integer, dimension(-1:0) :: p, q

 ! 2D integer array !
 !integer :: p2(4,1), q2(2,2)

 ! or using dimension attribute  
 ! integer, dimension(2, 2) :: p2, q2

 ! 1D real array !
 !real    :: a(2), b(2)

 ! 2D real array !
 real    :: a2(2,2), b2(2,2)

 ! 1D allocatable real array (dynamic array)!
 real, dimension(2) :: aa, ab
! integer :: m, n
! data aa /1, 2/
 
 
 !print*, aa
 !m = 2; n=3
 !allocate(aa(m), ab(n))
 !print*, aa
!data statement: data a /a1, a2, a3/
! 
! ! 1D implied do loop !
write(*, *) (i*i, i=1, 5, 2)
!
! 2D implied do loop !
!  a2 = [((i*j, i=1, 5), j=1, 5)]
!print*, a2
!  print*, [((i*j, i=1, 2), j=1, 2)]
!
! a2 = reshape([((i+j, i = 1, 2), j = 1, 2)],[2,2])
! print*, a2
!
! ! rank, extent, shape and size
! print*, shape(a), size(a)
! print*, shape(p2), size(p2), shape(q2), size(q2)
!! do i=1, 5
!!    p(i) = i - 3
!!    q(i) = i**2
!! end do
!
!! where and elsewhere
!where(aa<0 ) 
!     aa = 1 
!elsewhere
!     aa = 5
!end where
!!
!print*, aa 
!!! print*, p
!! 
!print*, lbound(aa), ubound(aa)
! p = lbound (aa)
! q = ubound (aa)
!!!
! print*, p, q
end program array
