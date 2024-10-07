program learnif
 real :: a, b, c
 logical :: x1, x2 
 a=5.0; b=3.0; c=3.0

 !x1 = .False.

 print*, (a<10).and.(a==b).or.(a>b)

 if ((a>b).and.(a<10)) then
       print*, "a is greater than b"
 else if (a<b) then
    print*, "a is smaller than b"
 else 
    print*, "a is equal to b"
 end if

end program learnif
