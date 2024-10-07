program func
 implicit none
 integer, parameter :: p = selected_real_kind(33)
 real(p) :: f, a, b

 a = 1.0; b = 2.0

 print*, f(a, b)

end program func

function f(x, y) result(ans)
 integer, parameter :: p = selected_real_kind(33)
 real(p), intent(in) :: x, y
 real(p) :: a, b, ans
 a = 1.0; b = 1.0
 ans = a*x**2 + b*y**2
end function f
