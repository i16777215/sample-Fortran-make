module mod_B 
    implicit none 
contains 
    subroutine run_prg_B 
        use mod_B_tool, only : print_hello_B
        implicit none 
        call print_hello_B
    end subroutine run_prg_B 
end module mod_B