



        program SuperSpy
        
        implicit none
        integer :: original_number, final_number
        integer :: new_hundreds, new_tens, new_ones

        print *, "Hat size?"
        read(*,*) original_number
       
        call find_hundreds_digit(original_number, new_hundreds)
        new_hundreds = new_hundreds * 100
        call find_tens_digit(original_number, new_tens)
        new_tens = new_tens * 10
        call find_ones_digit(original_number, new_ones)
        
        final_number = new_hundreds + new_tens + new_ones
        write(*,*) "Use", final_number

        end program SuperSpy









        subroutine find_hundreds_digit(original, hundreds_digit)
        implicit none
        integer, intent(in) :: original
        integer, intent(out) :: hundreds_digit
        hundreds_digit = mod(original, 10)
        end subroutine find_hundreds_digit

        subroutine find_tens_digit(original, tens_digit)
        implicit none
        integer, intent(in) :: original
        integer, intent(out) :: tens_digit
        tens_digit = mod(original, 1000) / 100
        end subroutine find_tens_digit
        
        subroutine find_ones_digit(original, ones_digit)
        implicit none
        integer, intent(in) :: original
        integer, intent(out) :: ones_digit
        ones_digit = mod(original, 1000000) / 100000
        end subroutine find_ones_digit
