module mod_prg_hello 
    implicit none 
contains 
    subroutine run_prg_hello
        use mod_glb_var, only : global_variable
        implicit none 

        print *, "gate!6: Hello World! from sub. run_prg_hello in mod_prg_hello "
        print *, "              global_variable = ", global_variable
        
    end subroutine run_prg_hello 
end module mod_prg_hello 