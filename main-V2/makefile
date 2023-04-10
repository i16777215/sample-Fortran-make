
TARGET = hello-V2.out

# /// default compiler
# FC = gfortran
# FCOPT = -g 

# /// intel compiler in Linux 
# FC = ifort 
# FCOPT = -g -traceback 

# /// intel compiler in Mac OS X
FC = ifort 
MOPT = -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib
FCOPT = -g -traceback $(MOPT) 

SRCS = mod_prg_hello.f90 main.f90
OBJS = $(addsuffix .o, $(basename $(SRCS)))

.SUFFIXES: .o .mod .f90

%.o: %.f90
	$(FC) -o $@ -c $< $(FCOPT) 

$(TARGET): $(OBJS)
	$(FC)  -o $@ $(FCOPT) $^ 

## $< is the first dependency
## $^ is the list of dependencies
## $@ is the target

%.mod: %.f90 %.o
	@:
## this is just compare the time stamp of the .mod file and the .f90 file
## nothing to do 

clean:
	@rm -rf $(TARGET) *.out.dSYM *.o *.mod

echo:
	@echo $(SRCS)
	@echo $(OBJS)
