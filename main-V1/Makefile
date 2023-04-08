
TARGET = hello-V1.out

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

SRC = main.f90

$(TARGET): $(SRC)
	$(FC) $(FCOPT) $^ -o $@

## $^ is the list of dependencies
## $@ is the target

clean:
	@rm -rf $(TARGET) *.out.dSYM 
