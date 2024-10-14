program newraph
 implicit none 
 integer :: i, n
 complex :: x, f, df

 n = 10
 x = (0.1, -0.01)

 do i=1, n
    f = x**2 + 1
    df = 2*x
    x = x - f/df
    print'(4F10.5)', x, f
 end do
end program newraph
