module mod_prg_hello 
    implicit none 
contains 
    subroutine run_prg_hello
        implicit none 

        print *, "gate!6: Hello World! from sub. run_prg_hello in mod_prg_hello "

    end subroutine run_prg_hello 
end module mod_prg_hello 