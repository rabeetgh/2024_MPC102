program file
 implicit none
 
 integer :: f1u, f2u, i, j, k, fstat
 real    :: a, b, c, d
 logical :: exists

! open(newunit=f1u, file='file1.txt', action='write', iostat=fstat)

! do i=1, 10
!     j =i; k=j**2
!     write(f1u, *) j, k
! end do
 
! close(f1u)

! open(newunit=f2u, file='file2.txt', status='new', action='write',iostat=fstat)
!
! do i=1, 10
!     write(f2u, *) i, i**2
! end do
!
! close(f2u)
!
 inquire(file="file1.txt", exist=exists)

 if (exists) then
   print*, "File is present"
 else 
   print*, "File not present"
 end if

end program file
