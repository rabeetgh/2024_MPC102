program quad_eq
 real :: a, b, c, x1, x2, d, ta
 real :: x1r, x1i, x2r, x2i
 ! solving quadratic equation
 ! ax^2 + bx + c = 0.0

  a = 2.0; b=1.0; c=1.0

  d = (b**2-4.0*a*c)
  print*, d

  ta= 2.0*a
  ! For equal roots 
  if (d==0.0) then 
     print*, "Roots are equal and real"
     print*, "x1 and x2 both are equal to ", -b/ta
  ! for unequal and real roots
  else if (d>0.0) then 
     print*, "Roots are unequal and real"
     x1 = (-b + sqrt(d))/ta
     x2 = (-b - sqrt(d))/ta
     print*,"First Root x1=", x1
     print*,"Second Root x2=", x2
  ! for unequal and complex roots 
  else 
     print*, "Roots are unequal and complex"
     x1r = -b/ta; x2r = x1r
     x1i = (-d)**0.5/ta; x2i =  x1i
     print*, "First Root = ", x1r, " + ", x1i , "i"
     print*, "Second Root = ", x2r, " - ", x2i, "i"
  end if 

end program quad_eq
