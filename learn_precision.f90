program real_kinds
  integer,parameter :: p1 = selected_real_kind(6)
  integer,parameter :: p2 = selected_real_kind(9)
  integer,parameter :: p3 = selected_real_kind(33)
  real(p1) :: x, ex
  real(p2) :: y, ey
  real(p3) :: z, ez

  print*, precision(x), range(x)
  print*, precision(y), range(y)
  print*, precision(z), range(z)

  x =88.0; y=700.0; z=2000.0
  ex = exp(x)
  ey = exp(y)
  ez = exp(z)
  print*, ex, ey, ez
end program real_kinds
