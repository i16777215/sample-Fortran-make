module mod_prg_hello 
    implicit none 
contains 
    subroutine run_prg_hello
        use mod_glb_var, only : global_variable
        use mod_A, only : run_prg_A
        use mod_B, only : run_prg_B
        implicit none 

        print *, "gate!6: Hello World! from sub. run_prg_hello in mod_prg_hello "
        print *, "              global_variable = ", global_variable
        
        call run_prg_A

        call run_prg_B 

    end subroutine run_prg_hello 
end module mod_prg_hello 