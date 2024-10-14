program subrout
 implicit none

  
  integer :: i, j
  integer, parameter :: n = 2
  real :: a(n), b(n), ab
  a = [1.0, 2.0]; b = [1.0,1.0]

  call maths(n, a, b, ab)

  print'(2F10.5)', a, b, ab

end program subrout

subroutine maths(n, x, y, xy)
  implicit none
   
  integer, intent(in) :: n
  real, intent(in) :: x(n), y(n)
  real, intent(out):: xy

  xy = dot_product(x,y)
end subroutine maths
