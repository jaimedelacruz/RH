!* ------- file: -------------------------- hui_.f90 ----------------
!
!      Version:       rh1.0
!      Author:        Han Uitenbroek (huitenbroek@nso.edu)
!      Last modified: Fri Oct  6 09:00:01 2000 --
!
!      --------------------------                      ----------RH-- *!

!* -- Voigt function subroutine. Called from voigt.c
!
!     FORTRAN 90 version.
!
!See: Hui, Armstrong & Wray 1978, JQSRT 19, p. 509-516
!     --                                               -------------- *!

!* ------- begin -------------------------- hui_.f90 ---------------- *!

subroutine hui(z, W)

  implicit none

  complex (kind = 8), intent(in)  :: z
  complex (kind = 8), intent(out) :: W

  W =    (122.607931777104326 + z*(214.382388694706425 + &
       z*(181.928533092181549 + &
       z*( 93.155580458138441 + z*( 30.180142196210589 + &
       z*(  5.912626209773153 + z *  0.564189583562615)))))) &
       / &
         (122.607931773875350 + z*(352.730625110963558 + &
       z*(457.334478783897737 + z*(348.703917719495792 + &
       z*(170.354001821091472 + z*( 53.992906912940207 + &
       z*( 10.479857114260399 + z)))))))

end subroutine hui
!* ------- end ---------------------------- hui_.f90 ---------------- *!