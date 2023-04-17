module mod_B_tool 
    implicit none 
contains 
    subroutine print_hello_B 
        implicit none 
        print *, "gate!6: Hello from sub. print_hello_B in mod_B_tool "
    end subroutine print_hello_B
end module mod_B_tool 