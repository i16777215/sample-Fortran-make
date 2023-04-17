module mod_A_tool 
    implicit none 
contains 
    subroutine print_hello_A 
        implicit none 
        print *, "gate!6: Hello from sub. print_hello_A in mod_A_tool "
    end subroutine print_hello_A
end module mod_A_tool 