module inputs
  integer, parameter :: pr=selected_real_kind(4)
end module inputs


program roots
   use inputs
   implicit none
  
   integer :: i, n
   complex(pr) :: a, root
  
   complex(pr), external :: f
  
   a = 0.5_pr
  
   call find_root(a, f, root)
  
   print*, root 
end program roots

function f(x) result(ans)

   use inputs 
   implicit none

   complex(pr), intent(in) :: x
   complex(pr) :: ans

   ans = x**2 + 1.0
end function f



subroutine find_root(a, f, ans)
 use inputs
 implicit none

 complex (pr), intent(in) :: a
 complex (pr), intent(out) :: ans

 integer :: i
 complex (pr) :: x, df
 complex (pr), parameter :: eps=(1.0d-06, 1.0d-06)
 complex (pr), parameter :: h = (0.001_pr, 0.001_pr)

 complex (pr), external :: f

  x = a
  do while (abs(f(x)) >abs(eps))
    df = (f(x+h) - f(x-h))/(2.0_pr*h)
    x = x - f(x) / df
  end do

  ans = x
end subroutine find_root
