program learn_fmt 
  implicit none
  character(len=30) :: fmt1, fmt2

  fmt1 = "(5x, e14.7, f10.3, 2x, es14.7)"
  fmt2 = "(5X, i10, f10.5)"

  print fmt1, 1.0, 2.0, 5.0
  write(*,100)1, 2.0

  100 format(5X, I10, F10.5) 
end program learn_fmt
