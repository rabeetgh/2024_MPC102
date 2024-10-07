program fmt
 implicit none
 real :: a, b
 integer :: i, j
 character (len=30) :: fmt1
 a = 1.0; b = 2.0
 i = 1; j = 2
 fmt1 = '(1X, F6.2, 2X, ES10.2)'
 print fmt1,  a, b

end program fmt
