module mod_A 
    implicit none 
contains 
    subroutine run_prg_A 
        use mod_A_tool, only : print_hello_A
        implicit none 
        call print_hello_A
    end subroutine run_prg_A 
end module mod_A 