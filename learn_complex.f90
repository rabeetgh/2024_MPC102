program complx
 implicit none
 integer, parameter :: dp=selected_real_kind(33)
 complex(dp) :: a, b

 a = (1, 1); b = (1.0, 0)

 print*, a + b, a * b, a/b, sqrt(a)

end program complx
